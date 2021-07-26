// To enable SOC revision based run time differentiation, uncomment following line
// and uncomment SSID method in ABD device. The original string is artificailly set as 
// 16 characters, so there is enough room to hold SOC revision string. 
// To adjust the number, the MAX_SOCID_LEN macro as defined in ABD device.h should be
// adjusted at the same time. 

Name (SOID, 348)                 // Holds the Chip Id
Name (SIDS, "SDM850")            // Holds the Chip ID translated to a string
Name (SIDV, 0x00020001)          // Holds the Chip Version as (major<<16)|(minor&0xffff)
Name (SVMJ, 2)                   // Holds the major Chip Version
Name (SVMI, 1)                   // Holds the minor Chip Version
Name (SDFE, 79)                  // Holds the Chip Family enum
Name (SFES, "899800000000000")   // Holds the Chip Family translated to a string
Name (SIDM, 0x0000000FFFFF00FF)  // Holds the Modem Support bit field
Name (SOSN, 0x000003F48D126594)
Name (RMTB, 0x85D00000)
Name (RMTX, 0x00200000)
Name (RFMB, 0x00000000)
Name (RFMS, 0x00000000)
Name (RFAB, 0x00000000)
Name (RFAS, 0x00000000)
// Who is in charge of this?
// Name (TPMA, 0x11111111)         // Holds whether TPM is seperate app or combined with Winsecapp
// Name (TDTV, 0x6654504D)         // Holds TPM type, by default it set to fTPM type
Name (TCMA, 0x8AB00000)            // Holds TrEE Carveout Memory Address
Name (TCML, 0x01400000)            // Holds TrEE Carveout Memory Length
// WTF?
// Name (SOSI, 0xdeadbeefffffffff) // Holds the base address of the SoCInfo shared memory region used by ChipInfoLib

//Include("cust_dsdt_common.asl")

//Audio Drivers
Include("audio.asl")
		
        //
        // Storage - UFS/SD 
        //
        Include("../common/ufs.asl")
        // Include("../common/sdc.asl") // No SD slot
        
        //
        // ASL Bridge Device
        //
		Include("../common/abd.asl")
			
		 Name (ESNL, 20) // Exsoc name limit 20 characters
		 Name (DBFL, 23) // buffer Length, should be ESNL+3
			
//
// PMIC driver 
//
Include("../common/pmic_core.asl")

//
// PMICTCC driver
//
Include("pmic_batt.asl")
			
        Include("../common/pep_common.asl")
        Include("cust_camera_resources.asl")
        // Include("corebsp_wp_resources.asl")
        // Include("nfc_resources.asl") // NFC
        Include("cust_touch_resources.asl")

        Include("../common/bam.asl")
        Include("buses.asl")

        // MPROC Drivers (PIL Driver and Subsystem Drivers)
        Include("../common/win_mproc.asl")
        Include("../common/syscache.asl")
        Include("../common/HoyaSmmu.asl")
        //Include("Ocmem.asl")
        Include("graphics.asl")
        //Include("OcmemTest.asl")

        Include("../common/SCM.asl");

		//
		// SPMI driver 
        //
        Include("../common/spmi.asl")

        //
        // TLMM controller.
        //
        Include("qcgpio.asl")

        // Disbale PCIe
        // Include("../common/pcie.asl")

        Include("../common/cbsp_mproc.asl")

Include("../common/adsprpc.asl")
      
        //
        // RemoteFS
        // 
        Include("../common/rfs.asl")


        // Test Drivers
        // Include("testdev.asl")
		//

        //
        // Qualcomm IPA
        Include("../common/ipa.asl")
		
        Include("../common/gsi.asl")
		
        //
        //Qualcomm DIAG Service
        //
        Device (QDIG)
        {
            Name (_DEP, Package(0x1)
            {
                \_SB_.GLNK
            })
           Name (_HID, "QCOM0225")
		   Alias(\_SB.PSUB, _SUB)
        }

        Include("../common/qcdb.asl")       
        // Include("ssm.asl")
		Include("../common/Pep_lpi.asl")

	//
	//  QcRNG Driver (qcsecuremsm)
	// 
	Device (QRNG)
	{
		Name (_DEP, Package(0x1) {
			   \_SB_.PEP0,
		})
		Name (_HID, "QCOM02FE")
		Name (_UID, 0)
		Method (_CRS, 0x0, NotSerialized)
		{
			Name (RBUF, ResourceTemplate ()
			{
			  // PRNG_CFG_EE2_EE2_PRNG_SUB register address space
			  Memory32Fixed (ReadWrite, 0x00793000, 0x00001000)
			})
			Return (RBUF)
		}			
	}

	
	//
	// QCOM GPS 
	// 
	Include("../common/gps.asl")
		
    // QDSS driver
    Include("../common/Qdss.asl")

// QUPV3 GPI device node and resources
//
Include("../common/qgpi.asl")

Include("../common/qwpp.asl")

//Include("nfc.asl")
// Disabling QCSP Changes 
//Include("qcsp.asl")

Include("../common/sar_manager.asl")
