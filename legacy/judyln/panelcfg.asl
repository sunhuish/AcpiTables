Name (PCFG, Buffer(){" 
<?xml version='1.0' encoding='utf-8'?>
<PanelName>SW49410_rev1</PanelName>
<PanelDescription>LGD Single DSI Command Mode DSC Panel Rev1 (1440x3120 24bpp)</PanelDescription>
<Group id='Active Timing'>
 <HorizontalActive>1440</HorizontalActive>
 <HorizontalFrontPorch>168</HorizontalFrontPorch>
 <HorizontalBackPorch>84</HorizontalBackPorch>
 <HorizontalSyncPulse>4</HorizontalSyncPulse>
 <HorizontalSyncSkew>0</HorizontalSyncSkew>
 <HorizontalLeftBorder>0</HorizontalLeftBorder>
 <HorizontalRightBorder>0</HorizontalRightBorder>
 <VerticalActive>3120</VerticalActive>
 <VerticalFrontPorch>2</VerticalFrontPorch>
 <VerticalBackPorch>18</VerticalBackPorch>
 <VerticalSyncPulse>18</VerticalSyncPulse>
 <VerticalSyncSkew>0</VerticalSyncSkew>
 <VerticalTopBorder>0</VerticalTopBorder>
 <VerticalBottomBorder>0</VerticalBottomBorder>
 <InvertDataPolarity>False</InvertDataPolarity>
 <InvertVsyncPolairty>False</InvertVsyncPolairty>
 <InvertHsyncPolarity>False</InvertHsyncPolarity>
 <BorderColor>0x0</BorderColor>
 </Group>
 <Group id='Display Interface'>
 <InterfaceType>9</InterfaceType>
 <InterfaceColorFormat>3</InterfaceColorFormat>
 </Group>
 <Group id='DSI Interface'>
 <DSIChannelId>2</DSIChannelId>
 <DSIVirtualId>0</DSIVirtualId>
 <DSIColorFormat>36</DSIColorFormat>
 <DSITrafficMode>1</DSITrafficMode>
 <DSILanes>4</DSILanes>
 <DSIRefreshRate>0x400000</DSIRefreshRate>
 <DSICmdSwapInterface>False</DSICmdSwapInterface>
 <DSICmdUsingTrigger>False</DSICmdUsingTrigger>
 <DSIEnableAutoRefresh>False</DSIEnableAutoRefresh>
 <DSIAutoRefreshFrameNumDiv>0</DSIAutoRefreshFrameNumDiv>
 <DSITECheckEnable>True</DSITECheckEnable>
 <DSITEUsingDedicatedTEPin>True</DSITEUsingDedicatedTEPin>
 <DSITEvSyncStartPos>3120</DSITEvSyncStartPos>
 <DSITEvSyncInitVal>3120</DSITEvSyncInitVal>
 <DSIDSCEnable>True</DSIDSCEnable>
 <DSIDSCMajor>1</DSIDSCMajor>
 <DSIDSCMinor>1</DSIDSCMinor>
 <DSIDSCScr>1</DSIDSCScr>
 <DSIDSCProfileID>0x07</DSIDSCProfileID>
 <DSILP11AtInit>True</DSILP11AtInit>
 <DSIDSCSliceWidth>720</DSIDSCSliceWidth>
 <DSIDSCSliceHeight>60</DSIDSCSliceHeight>
 <DSIControllerMapping>
  00
 </DSIControllerMapping>
</Group>
<DSIInitSequence>
15 00 00
39 2B 00
15 51 FF
15 53 2C
15 5E 00
15 55 81
15 B0 AC
39 30 00
39 B3 04
39 B4 11
39 B5 2E
39 B6 03
39 B8 57
39 B9 64
39 BA 3D
39 BC 00
39 BD 00
39 BF 4F
39 C0 00
39 C1 01
39 C2 CC
39 C3 92
39 C4 26
39 C9 05
39 CA 9B
39 CB F3
39 CC 00
39 CD 09
39 CE 00
39 D0 12
39 D1 12
39 D2 12
39 D3 12
39 D4 DC
39 AD 01
39 AE 01
39 E5 0B
39 E6 11
39 ED 21
15 55 81
39 F3 00
39 F4 00
39 F5 00
39 F6 40
39 F7 40
39 F8 40
39 FB 20
39 FC 13
05 11
FF 50
05 29
FF 14
</DSIInitSequence>
<Group id='Backlight Configuration'>
 <BacklightType>1</BacklightType>
 <BacklightPmicControlType>2</BacklightPmicControlType>
 <BacklightSteps>100</BacklightSteps>
 <BacklightPMICBankSelect>15</BacklightPMICBankSelect>
 <BacklightPMICPWMFrequency>600000</BacklightPMICPWMFrequency>
 <BacklightDefault>80</BacklightDefault>
 <BacklightLowPower>40</BacklightLowPower>
 <PMIPowerPmicNumber>1</PMIPowerPmicNumber>
 <PMIPowerPmicModel>21</PMIPowerPmicModel>
 <PMIPowerconfig>1</PMIPowerConfig>
 <AdaptiveBrightnessFeature>1</AdaptiveBrightnessFeature>
 <CABLEnable>True</CABLEnable>
 <BrignessMinLuminance>302</BrignessMinLuminance>
 <BrignessMaxLuminance>500000</BrignessMaxLuminance>
</Group>
<WLEDStrings>0,1,2,3</WLEDStrings>
<DisplayHeight>3120</DisplayHeight>
"})