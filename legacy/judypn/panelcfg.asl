Name (PCFG, Buffer(){"
<?xml version='1.0' encoding='utf-8'?>
<PanelName>SW43408A</PanelName>
<PanelDescription>LGD Single DSI Command Mode DSC POLED DV2 Panel (1440x3120 24bpp)</PanelDescription>
<Group id='Active Timing'>
 <HorizontalActive>1440</HorizontalActive>
 <HorizontalFrontPorch>168</HorizontalFrontPorch>
 <HorizontalBackPorch>88</HorizontalBackPorch>
 <HorizontalSyncPulse>4</HorizontalSyncPulse>
 <HorizontalSyncSkew>0</HorizontalSyncSkew>
 <HorizontalLeftBorder>0</HorizontalLeftBorder>
 <HorizontalRightBorder>0</HorizontalRightBorder>
 <VerticalActive>3120</VerticalActive>
 <VerticalFrontPorch>9</VerticalFrontPorch>
 <VerticalBackPorch>10</VerticalBackPorch>
 <VerticalSyncPulse>1</VerticalSyncPulse>
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
 <DSIClockHSForceRequest>1</DSIClockHSForceRequest>
 <DSIRefreshRate>0x5A0000</DSIRefreshRate>
 <DSICmdSwapInterface>False</DSICmdSwapInterface>
 <DSICmdUsingTrigger>False</DSICmdUsingTrigger>
 <DSIEnableAutoRefresh>True</DSIEnableAutoRefresh>
 <DSIAutoRefreshFrameNumDiv>1</DSIAutoRefreshFrameNumDiv>
 <DSIDSCEnable>True</DSIDSCEnable>
 <DSIDSCMajor>1</DSIDSCMajor>
 <DSIDSCMinor>1</DSIDSCMinor>
 <DSIDSCScr>1</DSIDSCScr>
 <DSIDSCProfileID>7</DSIDSCProfileID>
 <DSILP11AtInit>True</DSILP11AtInit>
 <DSIDSCSliceWidth>720</DSIDSCSliceWidth>
 <DSIDSCSliceHeight>60</DSIDSCSliceHeight>
 <DSITECheckEnable>True</DSITECheckEnable>
 <DSITEUsingDedicatedTEPin>True</DSITEUsingDedicatedTEPin>
 <DSITEvSyncStartPos>3120</DSITEvSyncStartPos>
 <DSITEvSyncInitVal>3120</DSITEvSyncInitVal>
 <DSIControllerMapping>
  00
 </DSIControllerMapping>
 <DisplayResetInfo>0 2000 1000 10000 0</DisplayResetInfo>
</Group><DSIInitSequence>
07 11 00
15 B0 AC
39 F7 01
15 B0 CA
39 55 00
05 11
FF BE
15 26 02
39 51 03
39 53 0C
15 35 00
39 44 00
39 2A 00
39 2B 00
15 B0 AC
39 B8 3D
39 B9 11
39 BA 11
39 BB 11
15 B0 55
39 E3 01
39 EC 3F
39 ED 6C
39 CC 88
39 CD 6C
39 CE 83
39 CF EF
39 D0 50
39 D1 80 
39 D2 FB
39 D3 62
39 D4 80
39 D5 7D
39 D6 4D
39 D7 80
39 D8 7F
39 55 16
FF 3C
05 29
</DSIInitSequence>
<DSITermSequence>
 05 28
 FF 0A
 05 10
 FF 96
</DSITermSequence>
<DisplayHeight>3120</DisplayHeight>
<Group id='Backlight Configuration'>
 <BacklightType>3</BacklightType>
 <BacklightSteps>1</BacklightSteps>
<BrightnessMaxLuminance>564300</ BrightnessMaxLuminance>
<BrightnessMinLuminance>613</BrightnessMinLuminance>
<BrightnessRangeLevel0>400 400000 1 0</BrightnessRangeLevel0>
</Group>
"})
