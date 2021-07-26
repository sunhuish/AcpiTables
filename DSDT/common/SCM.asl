// 
// Secure Channel Manager (SCM) Driver
//
Device (SCM0)
{    
    Name (_HID, "QCOM0214")
	Alias(\_SB.PSUB, _SUB)
    Name (_UID, 0)
}

//
// TrEE Driver
//
// Device (TREE)
// {
//     Name (_HID, "QCOM02BB")
// 	Alias(\_SB.PSUB, _SUB)
//     Name (_UID, 0)
	
// 	 Method (IMPT)
//     {
//         Name(TPPK, Package()
//         {
//             Package ()
//             {
//                 // Holds whether TPM is seperate app or not
//                 0x00000000,  // Will be filled by TPMA 
// 				// Holds TPM type
// 				0x00000000,  // Will be filled by TDTV 
// 				// Holds TrEE Carveout address
// 				0x00000000,  // Will be filled by TCMA 
// 				// Holds TrEE Carveout length
// 				0x00000000  // Will be filled by TCML                
//             }
//         })

//         // Copy ACPI globals for Address for this subsystem into above package for use in driver
//         Store (TPMA, Index(DeRefOf(Index (TPPK, 0)), 0))
// 		Store (TDTV, Index(DeRefOf(Index (TPPK, 0)), 1))
// 		Store (TCMA, Index(DeRefOf(Index (TPPK, 0)), 2))
// 		Store (TCML, Index(DeRefOf(Index (TPPK, 0)), 3))
        
//         Return (TPPK)
//     }
// }

// HACK!
Device (TREE)
{
    Name (_HID, "QCOM02BB")  // _HID: Hardware ID
    Alias (\_SB.PSUB, _SUB)
    Name (_UID, Zero)  // _UID: Unique ID
    Method (MCGT, 0, NotSerialized)
    {
        Name (TPKG, Package (One)
        {
            Package (0x02)
            {
                Zero, 
                Zero
            }
        })
        DerefOf (TPKG [Zero]) [Zero] = TCMA /* \_SB_.TCMA */
        DerefOf (TPKG [Zero]) [One] = TCML /* \_SB_.TCML */
        Return (TPKG) /* \_SB_.TREE.MCGT.TPKG */
    }
}
