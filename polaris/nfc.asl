Device (NFCD)
{
    Name (_HID, "NXP1001")  // _HID: Hardware ID
    Name (_CID, "ACPI\NXP1001")  // _CID: Compatible ID
    Alias (\_SB.PSUB, _SUB)
    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
    {
        I2cSerialBusV2 (0x0028, ControllerInitiated, 0x00061A80,
            AddressingMode7Bit, "\\_SB.I2C4",
            0x00, ResourceConsumer, , Exclusive,
            )
        GpioInt (Level, ActiveHigh, Exclusive, PullDefault, 0x0000,
            "\\_SB.GIO0", 0x00, ResourceConsumer, ,
            )
            {   // Pin list
                0x003F
            }
    })
// ESE SPI GPIO
    Name (NFCS, ResourceTemplate ()
    {
        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionNone,
            "\\_SB.GIO0", 0x00, ResourceConsumer, ,
            )
            {   // Pin list
                0x0074
            }
    })
// NFCC VEN GPIO
    Name (NFCP, ResourceTemplate ()
    {
        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionNone,
            "\\_SB.GIO0", 0x00, ResourceConsumer, ,
            )
            {   // Pin list
                0x000C
            }
    })
    Scope (GIO0)
    {
        OperationRegion (NFPO, GeneralPurposeIo, Zero, One)
    }

    Field (\_SB.GIO0.NFPO, ByteAcc, NoLock, Preserve)
    {
        Connection (\_SB.NFCD.NFCP), 
        MGPE,   1
    }

    Method (POON, 0, NotSerialized)
    {
        MGPE = One
    }

    Method (POOF, 0, NotSerialized)
    {
        MGPE = Zero
    }
//NFCC FW DOWNLOAD GPIO
    Name (NFCF, ResourceTemplate ()
    {
        GpioIo (Exclusive, PullDefault, 0x0000, 0x0000, IoRestrictionNone,
            "\\_SB.GIO0", 0x00, ResourceConsumer, ,
            )
            {   // Pin list
                0x0058
            }
    })
    Scope (GIO0)
    {
        OperationRegion (NFFO, GeneralPurposeIo, Zero, One)
    }

    Field (\_SB.GIO0.NFFO, ByteAcc, NoLock, Preserve)
    {
        Connection (\_SB.NFCD.NFCF), 
        MGFE,   1
    }

    Method (FWON, 0, NotSerialized)
    {
        MGFE = One
    }

    Method (FWOF, 0, NotSerialized)
    {
        MGFE = Zero
    }

    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        Debug = "Method NFC _DSM begin"
        If ((Arg0 == ToUUID ("a2e7f6c4-9638-4485-9f12-6b4e20b60d63") /* Unknown UUID */))
        {
            If ((Arg2 == Zero))
            {
                Debug = "Method NFC _DSM QUERY"
                If ((Arg1 == One))
                {
                    \_SB.NFCD.POOF ()
                    Sleep (0x14)
                    Return (Buffer (One)
                    {
                            0x0F                                             // .
                    })
                }
            }

            If ((Arg2 == 0x02))
            {
                Debug = "Method NFC _DSM SETPOWERMODE"
                If ((Arg3 == One))
                {
                    \_SB.NFCD.POON ()
                    Sleep (0x14)
                }

                If ((Arg3 == Zero))
                {
                    \_SB.NFCD.POOF ()
                    Sleep (0x14)
                }
            }

            If ((Arg2 == One))
            {
                Debug = "Method NFC _DSM SETFWMODE"
//
// Set the firmware mode to ON.
//
                If ((Arg3 == One))
                {
                    \_SB.NFCD.FWON ()
//
// Provide any delay required by the controller before toggling the power GPIO line.
//
                    Sleep (0x14)
                    \_SB.NFCD.POOF ()
                    Sleep (0x14)
                    \_SB.NFCD.POON ()
                    Sleep (0x14)
                }
//
// Set the firmware mode to OFF.
//
                If ((Arg3 == Zero))
                {
                    \_SB.NFCD.FWOF ()
                    Sleep (0x14)
                    \_SB.NFCD.POOF ()
                    Sleep (0x14)
                    \_SB.NFCD.POON ()
                    Sleep (0x14)
                }
            }

            If ((Arg2 == 0x03))
            {
                Debug = "Method NFC _DSM EEPROM Config"
                Return (Buffer (0x13)
                {
                    /* 0000 */  0x9C, 0x1F, 0x38, 0x19, 0xA8, 0xB9, 0x4B, 0xAB,  // ..8...K.
                    /* 0008 */  0xA1, 0xBA, 0xD0, 0x20, 0x76, 0x88, 0x2A, 0xE0,  // ... v.*.
                    /* 0010 */  0x03, 0x01, 0x11                                 // ...
                })
            }
        }
    }
//PEP Proxy Support
    Name (PGID, Buffer (0x0A)           // Device ID buffer - PGID( Pep given ID )
    {
        "\\_SB.NFCD"
    })
    Name (DBUF, Buffer (DBFL) {})       // Device ID buffer - PGID( Pep given ID )
    CreateByteField (DBUF, Zero, STAT)  // STATUS 1 BYTE
                                        // HIDDEN 1 BYTE ( SIZE )
    CreateByteField (DBUF, 0x02, DVAL)  // Packet value, 1 BYTES Device Status
    CreateField (DBUF, 0x18, 0xA0, DEID)// Device ID, 20 BYTES(160 Bits)

    // Sets all sleep states to D3
    Method (_S1D, 0, NotSerialized)     // _S1D: S1 Device State
    {
        Return (0x03)
    }

    Method (_S2D, 0, NotSerialized)  // _S2D: S2 Device State
    {
        Return (0x03)
    }

    Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
    {
        Return (0x03)
    }

    Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
    {
        DEID = Buffer (ESNL) {}
        DVAL = Zero
        DEID = PGID /* \_SB_.NFCD.PGID */
        If (\_SB.ABD.AVBL)
        {
            \_SB.PEP0.FLD0 = DBUF /* \_SB_.NFCD.DBUF */
        }
    }

    Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
    {
        DEID = Buffer (ESNL) {}
        DVAL = 0x03
        DEID = PGID /* \_SB_.NFCD.PGID */
        If (\_SB.ABD.AVBL)
        {
            \_SB.PEP0.FLD0 = DBUF /* \_SB_.NFCD.DBUF */
        }
    }
}