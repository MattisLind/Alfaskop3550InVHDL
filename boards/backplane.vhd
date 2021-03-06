-- The Alfaskop 3500 MPU I board in  VHDL
-- This module consitutes the backplane into which all cards ar inserted. It connects the various modules.
library IEEE;
use IEEE.std_logic_1164.all;


entity Alfaskop3550 is
port(

-- Internal
-- Clk is to be generated externally    
    clk : in std_logic;
    nReset : in std_logic;
    CP2 : out std_logic;
    nCP1 : out std_logic;
    ReadMEMO : out std_logic;
    nMEMA : out std_logic_vector (15 downto 0);
    nMEMO : out std_logic_vector (7 downto 0);
    cp_end : out std_logic;
    stopCPCounter : in std_logic
    );
end Alfaskop3550;



architecture logic of Alfaskop3550 is

component MPUI is
port(


-- Clk is to be generated externally    
    clkInput : in std_logic;
    nReset : in std_logic;
    nCP1 : out std_logic;
-- Signals from the connector
    P1_38_MEMAChanged : in std_logic;
    P1_69_ReadMEMO : in std_logic;
    P2_9_StopCPCounter : in std_logic;
    P2_7_nCOPHalt : in std_logic;
    P2_67_PAinterrupt : in std_logic;
    P2_88_GEAinterrupt : in std_logic;
    P2_89_KBinterrupt : in std_logic;
    P2_86_EBAinterrupt : in std_logic;
    P2_85_ITransReady : in std_logic;
    P2_84_IRecReady : in std_logic;
    P1_18_nGeneralReset : out std_logic;
    P2_35_nDisableInterrupt : in std_logic;
    P2_33_nMie3 : in std_logic;
    P2_70_DZeroFF : in std_logic;
    P2_71_ALUAeqB : in std_logic;
    P2_72_ARMCO : out std_logic;
    P2_73_ARMCI : out std_logic;
    P2_66_DCarryFF : in std_logic;
    P1_72_nCarry : out std_logic;
    P1_73_nZero : out std_logic;
    P2_64_nMieResCarry : in std_logic;
    P2_65_nMieResZero : in std_logic;
    P2_68_AROPar : in std_logic;
    P2_69_AREPar : in std_logic;
    P1_7_ClockInterrupt : in std_logic;
    
    P1_8_3_07MHz : out std_logic;
    P1_9_153_6kHz : out std_logic;
    P1_10_9600Hz : out std_logic;
    P1_80_1200Hz : out std_logic;
    P1_79_300Hz : out std_logic;
    P1_74_0_6Hz : out std_logic;
    P1_13_2_3Hz : out std_logic;
    P1_58_4_6Hz : out std_logic;
    P1_57_9_2Hz : out std_logic;
    P1_78_IOAddress00Group : out std_logic;
    P1_77_IOAddress04Group : out std_logic;
    P1_76_IOAddress08Group : out std_logic;
    P1_75_IOAddress0CGroup : out std_logic;
    P1_17_IOAddressMUXGroup : out std_logic;
    P1_16_IOAddressEBAGroup : out std_logic;
    P1_15_IOAddressMCAGroup : out std_logic;
    P1_14_IOAddressGEAGroup : out std_logic;
    P1_67_IOAddressA0Group : out std_logic;
    P1_68_IOAddressA1Group : out std_logic;
    P1_81_12_288MHz : out std_logic;
    P2_30_CP2 : out std_logic;
    P2_21_nCP0 : out std_logic;
    P2_11_CP0 : out std_logic;
    P2_27_nEBAINterruptReq : out std_logic;
    P2_37_Mie3 : in std_logic;
    P2_31_nMieResPri : in std_logic;
    P1_29_nSetICMEMAFF : in std_logic;
    P2_29_SelectICMEMA : out std_logic;
    P2_36_nMitd5 : in std_logic;
    P2_32_Interrupt : out std_logic;
    P2_6_InterruptAddress1 : out std_logic;
    P2_8_InterruptAddress2 : out std_logic;
    P2_34_InterruptAddress3 : out std_logic;
    P1_6_nMieReset : in std_logic;
    P1_11_ResetButton : in std_logic;    
    
    P2_38_IRMCI : in std_logic;
    P1_39_IRMCO : in std_logic;
    P1_59_nMEMO0 : in std_logic;
    P1_60_nMEMO1 : in std_logic;
    P1_61_nMEMO2 : in std_logic;
    P1_62_nMEMO3 : in std_logic;
    P1_63_nMEMO4 : in std_logic;
    P1_64_nMEMO5 : in std_logic;
    P1_65_nMEMO6 : in std_logic;
    P1_66_nMEMO7 : in std_logic;

    P2_62_OP3 : out std_logic;
    P2_63_OP2 : out std_logic;
    
    P2_22_Mie : out std_logic;
    P1_35_Mia : out std_logic;
    
    P1_71_nARData7 : in std_logic;
    P2_77_nCError : in std_logic;
    P2_76_nCBreak : in std_logic;
    P2_75_nCOverrun : in std_logic;
    P2_74_nStatus1 : in std_logic;
    P2_83_nStatus2 : in std_logic;
    P2_82_nCRepeat : in std_logic;
    P2_81_nCIDData : in std_logic;
    P2_80_nCOverrunDIA: in std_logic;
    P2_78_Spare : in std_logic;
    P1_37_nPrinterInoperable : in std_logic;
    P2_79_Spare : in std_logic;
    P2_23_nArg0  : out std_logic;
    P2_24_nArg1  : out std_logic;
    P2_25_nArg2  : out std_logic;
    P2_26_nArg3  : out std_logic;
    
    P1_27_Mark  : in std_logic;
    P1_28_nModCarry : out std_logic;
    
    P1_19_CONROM0 : out std_logic;
    P1_20_CONROM1 : out std_logic;
    P1_21_CONROM2 : out std_logic;
    P1_22_CONROM3 : out std_logic;
    P1_23_CONROM4 : out std_logic;
    P1_24_CONROM5 : out std_logic;
    P1_25_CONROM6 : out std_logic;
    P1_26_CONROM7 : out std_logic;
    P1_30_CONROMB : out std_logic;
    P1_31_CONROMC : out std_logic;
    P1_32_CONROMD : out std_logic;
    P1_33_CONROME : out std_logic;
    P1_34_CONROMF : out std_logic;
    P2_15_nCPMit : out std_logic;
    
    P2_10_nEnd : out std_logic;
    
    P2_28_nMijStart : out std_logic;
    
    P2_17_Mi0 : out std_logic;
    P2_12_Mi1 : out std_logic;
    P2_13_Mi2 : out std_logic;
    P2_14_Mi3 : out std_logic;
    P2_18_Mi5 : out std_logic;
    P2_19_Mi6 : out std_logic;
    P2_20_Mi7 : out std_logic;
    
    P2_16_nMi0 : out std_logic);
end component;

component MPUII is
  port(

    nReset : in std_logic;
    
  -- Signals from the connector
    P2_22_Mie : in std_logic;
    P2_17_Mi0 : in std_logic;
    P2_12_Mi1 : in std_logic;
    P2_13_Mi2 : in std_logic;
    P2_14_Mi3 : in std_logic;
    P2_18_Mi5 : in std_logic;
    P2_19_Mi6 : in std_logic;
    P2_16_nMi0 : in std_logic;
    P2_10_nEnd : in std_logic;
    P2_15_nCPmit : in std_logic;
    P1_81_nWriteMEM : out std_logic;
    P2_30_CP2 : in std_logic;
    P2_33_nMie3 : out std_logic;
    P2_37_Mie3 : out std_logic;
    P2_35_nDisableInterrupt : out std_logic;
    P2_39_MEMAfromdisplay : in std_logic;
    P2_29_SelectICMEMA : in std_logic;
    
    P2_38_IRMC1 : out std_logic;
    P1_39_IRMC0 : out std_logic;
    P2_28_IODataFromMPU : out std_logic;
    P2_27_nIODataToMPU : out std_logic;
    P2_67_nOut : out std_logic;
    P1_27_Mark : out std_logic;
    P1_6_nMieReset : out std_logic;
    P2_31_nMieRespri : out std_logic;
    
    P2_65_nMieResZero : out std_logic;
    P2_64_nMieResCarry : out std_logic;
    P1_37_nMEMoccupation : in std_logic;
    P1_38_MEMAChanged : out std_logic;
    P1_36_nMitd5 : out std_logic;
    P1_29_nSetICMEMAFF : out std_logic;
    P2_32_Interrupt : in std_logic;
    P2_89_nMEMA0 : out std_logic;
    P2_88_nMEMA1 : out std_logic;
    P2_87_nMEMA2 : out std_logic;
    P2_86_nMEMA3 : out std_logic;
    P2_85_nMEMA4 : out std_logic;
    P2_84_nMEMA5 : out std_logic;
    P2_83_nMEMA6 : out std_logic;
    P2_82_nMEMA7 : out std_logic;
    P2_81_nMEMA8 : out std_logic;
    P2_80_nMEMA9 : out std_logic;
    P2_79_nMEMA10 : out std_logic;
    P2_78_nMEMA11 : out std_logic;
    P2_77_nMEMA12 : out std_logic;
    P2_76_nMEMA13 : out std_logic;
    P2_75_nMEMA14 : out std_logic;
    P2_74_nMEMA15 : out std_logic;
    
    P2_72_ARS0 : in std_logic;
    P2_73_ARS1 : in std_logic;
	P1_66_nMEMO7 : in std_logic;
    P1_65_nMEMO6 : in std_logic;
    P1_64_nMEMO5 : in std_logic;
    P1_63_nMEMO4 : in std_logic;
    P1_62_nMEMO3 : in std_logic;
    P1_61_nMEMO2 : in std_logic;
    P1_60_nMEMO1 : in std_logic;
    P1_59_nMEMO0 : in std_logic;

    P1_34_CONROM15 : in std_logic;
    P1_33_CONROM14 : in std_logic;
    P1_32_CONROM13 : in std_logic;
    P1_31_CONROM12 : in std_logic;
    P1_30_CONROM11 : in std_logic;
    P1_26_CONROM7 : in std_logic;
    P1_25_CONROM6 : in std_logic;    
    P1_24_CONROM5 : in std_logic;
    P1_20_CONROM1 : in std_logic;
    P1_19_CONROM0 : in std_logic;

    P1_28_nModCarry : in std_logic;
    P1_71_nCarry : in std_logic;
    P2_21_nCP0 : in std_logic;
    P2_20_Mi7 : in std_logic;    
    P1_35_Mia : in std_logic;
    P2_11_CP0 : in std_logic;
    P1_18_nGeneralReset : in std_logic;
    P1_72_nZero : in std_logic;
    P2_6_nInterruptAddress1 : in std_logic;
    P2_9_nInterruptAddress2 : in std_logic;
    P2_34_nInterruptAddress3 : in std_logic;

    P1_7_IOData0 : inout std_logic;
    P1_8_IOData1 : inout std_logic;
    P1_9_IOData2 : inout std_logic;
    P1_10_IOData3 : inout std_logic;
    P1_11_IOData4 : inout std_logic;
    P1_12_IOData5 : inout std_logic;
    P1_13_IOData6 : inout std_logic;
    P1_14_IOData7 : inout std_logic;
    P1_15_IOData80 : out std_logic;
    P1_16_IOData81 : out std_logic;
    
    P1_70_nARdata7 : out std_logic;
    P1_80_ARdata0 : out std_logic;
    P1_79_ARdata1 : out std_logic;
    P1_78_Ardata2 : out std_logic;
    P1_77_ARdata3 : out std_logic;
    P1_76_ARdata4 : out std_logic;
    P1_75_ARdata5 : out std_logic;
    P1_74_ARdata6 : out std_logic;
    P1_73_ARdata7 : out std_logic;

    P2_71_ALUAeqB : out std_logic;
    P2_70_DZeroFF : out std_logic;
    P2_69_AREvenParity : out std_logic;
    P2_68_AROddPraity : out std_logic;
    P2_66_DCarryFF : out std_logic;
    P1_68_ReadMEMO : out std_logic;
    P2_8_RegBlock0 : out std_logic;
    P2_23_nArg0 : in std_logic;
    P2_24_nArg1 : in std_logic;
    P2_25_nArg2 : in std_logic;
    P2_26_nArg3 : in std_logic
);
end component;

component MEM4_4_1 is
port(

-- Signals from the connector
    P1_31_nWriteMEM : in std_logic;
    P1_30_ARData0 : in std_logic;
    P1_29_ARData1 : in std_logic;
    P1_28_ARData2 : in std_logic;
    P1_27_ARData3 : in std_logic;
    P1_26_ARData4 : in std_logic;
    P1_25_ARData5 : in std_logic;
    P1_24_ARData6 : in std_logic;
    P1_23_ARData7 : in std_logic;
    P2_39_nMEMA0 : in std_logic;
    P2_38_nMEMA1 : in std_logic;
    P2_37_nMEMA2 : in std_logic;
    P2_36_nMEMA3 : in std_logic;
    P2_35_nMEMA4 : in std_logic;
    P2_34_nMEMA5 : in std_logic;
    P2_33_nMEMA6 : in std_logic;
    P2_32_nMEMA7 : in std_logic;
    P2_31_nMEMA8 : in std_logic;
    P2_30_nMEMA9 : in std_logic;
    P2_29_nMEMA10 : in std_logic;
    P2_28_nMEMA11 : in std_logic;
    P2_27_nMEMA12 : in std_logic;
    P2_26_nMEMA13 : in std_logic;
    P2_25_nMEMA14 : in std_logic;
    P2_24_nMEMA15 : in std_logic;
    P2_62_PCBPositionInfo : in std_logic;
    P2_63_PCBPositionInfo : in std_logic;
    P2_65_COPReadOrder : in std_logic;
    P2_14_nCOMbyteIO0 : in std_logic;
    P2_13_nCOMbyteIO1 : in std_logic;
    P2_12_nCOMbyteIO2 : in std_logic;
    P2_11_nCOMbyteIO3 : in std_logic;
    P2_10_nCOMbyteIO4 : in std_logic;
    P2_9_nCOMbyteIO5 : in std_logic;
    P2_8_nCOMbyteIO6 : in std_logic;
    P2_7_nCOMbyteIO7 : in std_logic;
    P2_73_nCOPdata0 : in std_logic;
    P2_72_nCOPdata1 : in std_logic;
    P2_71_nCOPdata2 : in std_logic;
    P2_70_nCOPdata3 : in std_logic;
    P2_69_nCOPdata4 : in std_logic;
    P2_68_nCOPdata5 : in std_logic;
    P2_67_nCOPdata6 : in std_logic;
    P2_66_nCOPdata7 : in std_logic;
    P2_23_nMEMO0 : out std_logic;
    P2_22_nMEMO1 : out std_logic;
    P2_21_nMEMO2 : out std_logic;
    P2_20_nMEMO3 : out std_logic;
    P2_19_nMEMO4 : out std_logic;
    P2_18_nMEMO5 : out std_logic;
    P2_17_nMEMO6 : out std_logic;
    P2_16_nMEMO7 : out std_logic;
    P1_89_DIMO0 : in std_logic;
    P1_88_DIMO1 : in std_logic;
    P1_87_DIMO2 : in std_logic;
    P1_86_DIMO3 : in std_logic;
    P1_85_DIMO4 : in std_logic;
    P1_84_DIMO5 : in std_logic;
    P1_83_DIMO6 : in std_logic;
    P1_82_DIMO7 : in std_logic);
end component;
component MEM4_4_2 is
port(

-- Signals from the connector
    P1_31_nWriteMEM : in std_logic;
    P1_30_ARData0 : in std_logic;
    P1_29_ARData1 : in std_logic;
    P1_28_ARData2 : in std_logic;
    P1_27_ARData3 : in std_logic;
    P1_26_ARData4 : in std_logic;
    P1_25_ARData5 : in std_logic;
    P1_24_ARData6 : in std_logic;
    P1_23_ARData7 : in std_logic;
    P2_39_nMEMA0 : in std_logic;
    P2_38_nMEMA1 : in std_logic;
    P2_37_nMEMA2 : in std_logic;
    P2_36_nMEMA3 : in std_logic;
    P2_35_nMEMA4 : in std_logic;
    P2_34_nMEMA5 : in std_logic;
    P2_33_nMEMA6 : in std_logic;
    P2_32_nMEMA7 : in std_logic;
    P2_31_nMEMA8 : in std_logic;
    P2_30_nMEMA9 : in std_logic;
    P2_29_nMEMA10 : in std_logic;
    P2_28_nMEMA11 : in std_logic;
    P2_27_nMEMA12 : in std_logic;
    P2_26_nMEMA13 : in std_logic;
    P2_25_nMEMA14 : in std_logic;
    P2_24_nMEMA15 : in std_logic;
    P2_62_PCBPositionInfo : in std_logic;
    P2_63_PCBPositionInfo : in std_logic;
    P2_65_COPReadOrder : in std_logic;
    P2_14_nCOMbyteIO0 : in std_logic;
    P2_13_nCOMbyteIO1 : in std_logic;
    P2_12_nCOMbyteIO2 : in std_logic;
    P2_11_nCOMbyteIO3 : in std_logic;
    P2_10_nCOMbyteIO4 : in std_logic;
    P2_9_nCOMbyteIO5 : in std_logic;
    P2_8_nCOMbyteIO6 : in std_logic;
    P2_7_nCOMbyteIO7 : in std_logic;
    P2_73_nCOPdata0 : in std_logic;
    P2_72_nCOPdata1 : in std_logic;
    P2_71_nCOPdata2 : in std_logic;
    P2_70_nCOPdata3 : in std_logic;
    P2_69_nCOPdata4 : in std_logic;
    P2_68_nCOPdata5 : in std_logic;
    P2_67_nCOPdata6 : in std_logic;
    P2_66_nCOPdata7 : in std_logic;
    P2_23_nMEMO0 : out std_logic;
    P2_22_nMEMO1 : out std_logic;
    P2_21_nMEMO2 : out std_logic;
    P2_20_nMEMO3 : out std_logic;
    P2_19_nMEMO4 : out std_logic;
    P2_18_nMEMO5 : out std_logic;
    P2_17_nMEMO6 : out std_logic;
    P2_16_nMEMO7 : out std_logic;
    P1_89_DIMO0 : out std_logic;
    P1_88_DIMO1 : out std_logic;
    P1_87_DIMO2 : out std_logic;
    P1_86_DIMO3 : out std_logic;
    P1_85_DIMO4 : out std_logic;
    P1_84_DIMO5 : out std_logic;
    P1_83_DIMO6 : out std_logic;
    P1_82_DIMO7 : out std_logic);
end component;



signal nWriteMEM, Mie, nMi0,nEnd,nCPmit,nMie3,Mie3nDisableInterrupt,SelectICMEMA,IRMC1,IRMC0 : std_logic;
signal IODataFromMPU,nIODataToMPU,nOut,Mark,nMieReset,nMieRespri : std_logic;
signal MEMAChanged,nMitd5,nSetICMEMAFF,Interrupt,ARS0,ARS1,ModCarry,nCarry,nCP0 : std_logic;
signal Mia,CP0,nGeneralReset,nZero,IOData80,IOData81,nARdata7,ALUAeqB,DZeroFF,nMijStart  : std_logic;
signal AREvenParity,AROddParity,DCarryFF: std_logic;
signal IOData, ARdata, Mi, nCOMByte : std_logic_vector (7 downto 0);
signal nArg: std_logic_vector (3 downto 0);
signal nInterruptAddress : std_logic_vector (2 downto 0);
signal CONROM: std_logic_vector (15 downto 0);
signal nDisableInterrupt, Mie3, nMieResCarry, nMieResZero, nSelectICMEMA, nModCarry   : std_logic;
signal DIMO : std_logic_vector (7 downto 0);
begin

  nCOMByte <= "01000100";

  
  MPUIBoard: MPUI port map (
  
-- Clk is to be generated externally    
    clkInput => clk,
    nReset => nReset,
    nCP1 => nCP1,
-- Signals from the connector
    P1_38_MEMAChanged =>  MEMAChanged,
    P1_69_ReadMEMO => ReadMEMO,
    P2_9_StopCPCounter => stopCPCounter,
    P2_7_nCOPHalt => '1',
    P2_67_PAinterrupt => '1',
    P2_88_GEAinterrupt => '1',
    P2_89_KBinterrupt => '1',
    P2_86_EBAinterrupt => '1',
    P2_85_ITransReady => '1',
    P2_84_IRecReady => '1',
    P1_18_nGeneralReset => nGeneralReset,
    P2_35_nDisableInterrupt  => nDisableInterrupt,
    P2_33_nMie3 => nMie3,
    P2_70_DZeroFF => DZeroFF,
    P2_71_ALUAeqB => ALUAeqB,
    P2_72_ARMCO => ARS0,
    P2_73_ARMCI => ARS1,
    P2_66_DCarryFF => DCarryFF, 
    P1_72_nCarry => nCarry,
    P1_73_nZero => nZero,
    P2_64_nMieResCarry => nMieResCarry,
    P2_65_nMieResZero => nMieResZero,
    P2_68_AROPar => AREvenParity,
    P2_69_AREPar => AROddParity,
    P1_7_ClockInterrupt => '0',
    
    P1_8_3_07MHz => open,
    P1_9_153_6kHz => open,
    P1_10_9600Hz => open,
    P1_80_1200Hz => open,
    P1_79_300Hz => open,
    P1_74_0_6Hz => open,
    P1_13_2_3Hz => open,
    P1_58_4_6Hz => open,
    P1_57_9_2Hz => open,
    P1_78_IOAddress00Group => open,
    P1_77_IOAddress04Group => open,
    P1_76_IOAddress08Group => open,
    P1_75_IOAddress0CGroup => open,
    P1_17_IOAddressMUXGroup => open,
    P1_16_IOAddressEBAGroup => open,
    P1_15_IOAddressMCAGroup => open,
    P1_14_IOAddressGEAGroup => open,
    P1_67_IOAddressA0Group => open,
    P1_68_IOAddressA1Group => open,
    P1_81_12_288MHz => open,
    P2_30_CP2 => CP2,
    P2_21_nCP0 => nCP0,
    P2_11_CP0 => CP0,
    P2_27_nEBAINterruptReq => open,
    P2_37_Mie3 => Mie3,
    P2_31_nMieResPri => nMieRespri,
    P1_29_nSetICMEMAFF => nSetICMEMAFF,
    P2_29_SelectICMEMA => nSelectICMEMA,
    P2_36_nMitd5 => nMitd5,
    P2_32_Interrupt => Interrupt,
    P2_6_InterruptAddress1 => nInterruptAddress(0),
    P2_8_InterruptAddress2 => nInterruptAddress(1),
    P2_34_InterruptAddress3 => nInterruptAddress(2),
    P1_6_nMieReset => nMieReset,
    P1_11_ResetButton => nReset,  
    
    P2_38_IRMCI => IRMC1,
    P1_39_IRMCO => IRMC0,
    P1_59_nMEMO0 => nMEMO(0),
    P1_60_nMEMO1 => nMEMO(1),
    P1_61_nMEMO2 => nMEMO(2),
    P1_62_nMEMO3 => nMEMO(3),
    P1_63_nMEMO4 => nMEMO(4),
    P1_64_nMEMO5 => nMEMO(5),
    P1_65_nMEMO6 => nMEMO(6),
    P1_66_nMEMO7 => nMEMO(7),

    P2_62_OP3 => open,
    P2_63_OP2 => open,
    
    P2_22_Mie => Mie,
    P1_35_Mia => Mia,
    
    P1_71_nARData7 => nARdata7,
    P2_77_nCError => '1',
    P2_76_nCBreak => '1',
    P2_75_nCOverrun => '1',
    P2_74_nStatus1 => '1',
    P2_83_nStatus2 => '1',
    P2_82_nCRepeat => '1',
    P2_81_nCIDData => '1',
    P2_80_nCOverrunDIA => '1',
    P2_78_Spare => '1',
    P1_37_nPrinterInoperable => '1',
    P2_79_Spare => '1',
    P2_23_nArg0 => nArg(0),
    P2_24_nArg1 => nArg(1),
    P2_25_nArg2 => nArg(2),
    P2_26_nArg3 => nArg(3),
    
    P1_27_Mark => Mark,
    P1_28_nModCarry => nModCarry,
    
    P1_19_CONROM0 => CONROM(0),
    P1_20_CONROM1 => CONROM(1),
    P1_21_CONROM2 => CONROM(2),
    P1_22_CONROM3 => CONROM(3),
    P1_23_CONROM4 => CONROM(4),
    P1_24_CONROM5 => CONROM(5),
    P1_25_CONROM6 => CONROM(6),
    P1_26_CONROM7 => CONROM(7),
    P1_30_CONROMB => CONROM(11),
    P1_31_CONROMC => CONROM(12),
    P1_32_CONROMD => CONROM(13),
    P1_33_CONROME => CONROM(14),
    P1_34_CONROMF => CONROM(15),
    P2_15_nCPMit => nCPMit,
    
    P2_10_nEnd => nEnd,
    
    P2_28_nMijStart => nMijStart,
    
    P2_17_Mi0 => Mi(0),
    P2_12_Mi1 => Mi(1),
    P2_13_Mi2 => Mi(2),
    P2_14_Mi3 => Mi(3),
    P2_18_Mi5 => Mi(5),
    P2_19_Mi6 => Mi(6),
    P2_20_Mi7 => Mi(7),
    
    P2_16_nMi0 => nMi0
  );

  MPUIIboard: MPUII port map (
    nReset => nReset,
  -- Signals from the connector
    P2_22_Mie => Mie,
    P2_17_Mi0 => Mi(0),
    P2_12_Mi1 => Mi(1),
    P2_13_Mi2 => Mi(2),
    P2_14_Mi3 => Mi(3),
    P2_18_Mi5 => Mi(5),
    P2_19_Mi6 => Mi(6),
    P2_20_Mi7 => Mi(7),
    P2_16_nMi0 => nMi0,
    P2_10_nEnd => nEnd,
    P2_15_nCPmit => nCPmit,
    P1_81_nWriteMEM => nWriteMEM,
    P2_30_CP2 => CP2,
    P2_33_nMie3 => nMie3,
    P2_37_Mie3 => Mie3,
    P2_35_nDisableInterrupt => nDisableInterrupt,
    P2_39_MEMAfromdisplay => '1',
    P2_29_SelectICMEMA => nSelectICMEMA,
    
    P2_38_IRMC1 => IRMC1,
    P1_39_IRMC0 => IRMC0,
    P2_28_IODataFromMPU => IODataFromMPU,
    P2_27_nIODataToMPU => nIODataToMPU,
    P2_67_nOut => nOut,
    P1_27_Mark => Mark,
    P1_6_nMieReset => nMieReset,
    P2_31_nMieRespri => nMieRespri,
    
    P2_65_nMieResZero => nMieResZero,
    P2_64_nMieResCarry => nMieResCarry,
    P1_37_nMEMoccupation => '1',
    P1_38_MEMAChanged => MEMAChanged,
    P1_36_nMitd5 => nMitd5,
    P1_29_nSetICMEMAFF => nSetICMEMAFF,
    P2_32_Interrupt => Interrupt,
    P2_89_nMEMA0 => nMEMA(0),
    P2_88_nMEMA1 => nMEMA(1),
    P2_87_nMEMA2 => nMEMA(2),
    P2_86_nMEMA3 => nMEMA(3),
    P2_85_nMEMA4 => nMEMA(4),
    P2_84_nMEMA5 => nMEMA(5),
    P2_83_nMEMA6 => nMEMA(6),
    P2_82_nMEMA7 => nMEMA(7),
    P2_81_nMEMA8 => nMEMA(8),
    P2_80_nMEMA9 => nMEMA(9),
    P2_79_nMEMA10 => nMEMA(10),
    P2_78_nMEMA11 => nMEMA(11),
    P2_77_nMEMA12 => nMEMA(12),
    P2_76_nMEMA13 => nMEMA(13),
    P2_75_nMEMA14 => nMEMA(14),
    P2_74_nMEMA15 => nMEMA(15),
    
    P2_72_ARS0 => ARS0,
    P2_73_ARS1 => ARS1,
	P1_66_nMEMO7 => nMEMO(7),
    P1_65_nMEMO6 => nMEMO(6),
    P1_64_nMEMO5 => nMEMO(5),
    P1_63_nMEMO4 => nMEMO(4),
    P1_62_nMEMO3 => nMEMO(3),
    P1_61_nMEMO2 => nMEMO(2),
    P1_60_nMEMO1 => nMEMO(1),
    P1_59_nMEMO0 => nMEMO(0),

    P1_34_CONROM15 => CONROM(15),
    P1_33_CONROM14  => CONROM(14),
    P1_32_CONROM13  => CONROM(13),
    P1_31_CONROM12  => CONROM(12),
    P1_30_CONROM11  => CONROM(11),
    P1_26_CONROM7  => CONROM(7),
    P1_25_CONROM6  => CONROM(6),    
    P1_24_CONROM5  => CONROM(5),
    P1_20_CONROM1  => CONROM(1),
    P1_19_CONROM0  => CONROM(0),


    P1_28_nModCarry => nModCarry,
    P1_71_nCarry => nCarry,
    P2_21_nCP0 => nCP0,
    P1_35_Mia => Mia,
    P2_11_CP0 => CP0,
    P1_18_nGeneralReset => nGeneralReset, 
    P1_72_nZero => nZero,
    P2_6_nInterruptAddress1 => nInterruptAddress(0),
    P2_9_nInterruptAddress2 => nInterruptAddress(1),
    P2_34_nInterruptAddress3 => nInterruptAddress(2),

	P1_7_IOData0 => IOData(0), 
	P1_8_IOData1 => IOData(1),
	P1_9_IOData2 => IOData(2),
	P1_10_IOData3 => IOData(3),
	P1_11_IOData4 => IOData(4),
	P1_12_IOData5 => IOData(5),
	P1_13_IOData6 => IOData(6),
	P1_14_IOData7 => IOData(7),
	P1_15_IOData80 => IOData80,
	P1_16_IOData81 => IOData81,

    P1_70_nARdata7 => nARdata7,
    P1_80_ARdata0 => ARdata(0),
    P1_79_ARdata1 => ARdata(1),
    P1_78_Ardata2 => ARdata(2),
    P1_77_ARdata3 => ARdata(3),
    P1_76_ARdata4 => ARdata(4),
    P1_75_ARdata5 => ARdata(5),
    P1_74_ARdata6 => ARdata(6),
    P1_73_ARdata7 => ARdata(7),

    P2_71_ALUAeqB => ALUAeqB,
    P2_70_DZeroFF => DZeroFF,
    P2_69_AREvenParity => AREvenParity,
    P2_68_AROddPraity => AROddParity,
    P2_66_DCarryFF => DCarryFF,
    P1_68_ReadMEMO => ReadMEMO,
    P2_8_RegBlock0 => open,
    P2_23_nArg0 => nArg(0),
    P2_24_nArg1 => nArg(1),
    P2_25_nArg2 => nArg(2),
    P2_26_nArg3 => nArg(3)
  );

MEM1board: MEM4_4_1 port map (
-- Signals from the connector
    P1_31_nWriteMEM => nWriteMEM,
    P1_30_ARData0 => ARdata(0),
    P1_29_ARData1 => ARdata(1),
    P1_28_ARData2 => ARdata(2),
    P1_27_ARData3 => ARdata(3),
    P1_26_ARData4 => ARdata(4),
    P1_25_ARData5 => ARdata(5),
    P1_24_ARData6 => ARdata(6),
    P1_23_ARData7 => ARdata(7),
    P2_39_nMEMA0 => nMEMA(0),
    P2_38_nMEMA1 => nMEMA(1),
    P2_37_nMEMA2 => nMEMA(2),
    P2_36_nMEMA3 => nMEMA(3),
    P2_35_nMEMA4 => nMEMA(4),
    P2_34_nMEMA5 => nMEMA(5),
    P2_33_nMEMA6 => nMEMA(6),
    P2_32_nMEMA7 => nMEMA(7),
    P2_31_nMEMA8 => nMEMA(8),
    P2_30_nMEMA9 => nMEMA(9),
    P2_29_nMEMA10 => nMEMA(10),
    P2_28_nMEMA11 => nMEMA(11),
    P2_27_nMEMA12 => nMEMA(12),
    P2_26_nMEMA13 => nMEMA(13),
    P2_25_nMEMA14 => nMEMA(14),
    P2_24_nMEMA15 => nMEMA(15),
    P2_62_PCBPositionInfo => '1', 
    P2_63_PCBPositionInfo => '0',
    P2_65_COPReadOrder => 'Z',
    P2_14_nCOMbyteIO0 => nCOMByte(0),
    P2_13_nCOMbyteIO1 => nCOMByte(1),
    P2_12_nCOMbyteIO2 => nCOMByte(2),
    P2_11_nCOMbyteIO3 => nCOMByte(3),
    P2_10_nCOMbyteIO4 => nCOMByte(4),
    P2_9_nCOMbyteIO5 => nCOMByte(5),
    P2_8_nCOMbyteIO6 => nCOMByte(6),
    P2_7_nCOMbyteIO7 => nCOMByte(7),
    P2_73_nCOPdata0 => 'X',
    P2_72_nCOPdata1 => 'X',
    P2_71_nCOPdata2 => 'X',
    P2_70_nCOPdata3 => 'X',
    P2_69_nCOPdata4 => 'X',
    P2_68_nCOPdata5 => 'X',
    P2_67_nCOPdata6 => 'X',
    P2_66_nCOPdata7 => 'X',
    P2_23_nMEMO0 => nMEMO(0),
    P2_22_nMEMO1 => nMEMO(1),
    P2_21_nMEMO2 => nMEMO(2),
    P2_20_nMEMO3 => nMEMO(3),
    P2_19_nMEMO4 => nMEMO(4),
    P2_18_nMEMO5 => nMEMO(5),
    P2_17_nMEMO6 => nMEMO(6),
    P2_16_nMEMO7 => nMEMO(7),
    P1_89_DIMO0 => DIMO(0),
    P1_88_DIMO1 => DIMO(1),
    P1_87_DIMO2 => DIMO(2),
    P1_86_DIMO3 => DIMO(3),
    P1_85_DIMO4 => DIMO(4),
    P1_84_DIMO5 => DIMO(5),
    P1_83_DIMO6 => DIMO(6),
    P1_82_DIMO7 => DIMO(7));

MEM2board: MEM4_4_2 port map (
-- Signals from the connector
    P1_31_nWriteMEM => nWriteMEM,
    P1_30_ARData0 => ARdata(0),
    P1_29_ARData1 => ARdata(1),
    P1_28_ARData2 => ARdata(2),
    P1_27_ARData3 => ARdata(3),
    P1_26_ARData4 => ARdata(4),
    P1_25_ARData5 => ARdata(5),
    P1_24_ARData6 => ARdata(6),
    P1_23_ARData7 => ARdata(7),
    P2_39_nMEMA0 => nMEMA(0),
    P2_38_nMEMA1 => nMEMA(1),
    P2_37_nMEMA2 => nMEMA(2),
    P2_36_nMEMA3 => nMEMA(3),
    P2_35_nMEMA4 => nMEMA(4),
    P2_34_nMEMA5 => nMEMA(5),
    P2_33_nMEMA6 => nMEMA(6),
    P2_32_nMEMA7 => nMEMA(7),
    P2_31_nMEMA8 => nMEMA(8),
    P2_30_nMEMA9 => nMEMA(9),
    P2_29_nMEMA10 => nMEMA(10),
    P2_28_nMEMA11 => nMEMA(11),
    P2_27_nMEMA12 => nMEMA(12),
    P2_26_nMEMA13 => nMEMA(13),
    P2_25_nMEMA14 => nMEMA(14),
    P2_24_nMEMA15 => nMEMA(15),
    P2_62_PCBPositionInfo => '0', 
    P2_63_PCBPositionInfo => '0',
    P2_65_COPReadOrder => 'Z',
    P2_14_nCOMbyteIO0 => 'X',
    P2_13_nCOMbyteIO1 => 'X',
    P2_12_nCOMbyteIO2 => 'X',
    P2_11_nCOMbyteIO3 => 'X',
    P2_10_nCOMbyteIO4 => 'X',
    P2_9_nCOMbyteIO5 => 'X',
    P2_8_nCOMbyteIO6 => 'X',
    P2_7_nCOMbyteIO7 => 'X',
    P2_73_nCOPdata0 => 'X',
    P2_72_nCOPdata1 => 'X',
    P2_71_nCOPdata2 => 'X',
    P2_70_nCOPdata3 => 'X',
    P2_69_nCOPdata4 => 'X',
    P2_68_nCOPdata5 => 'X',
    P2_67_nCOPdata6 => 'X',
    P2_66_nCOPdata7 => 'X',
    P2_23_nMEMO0 => open,
    P2_22_nMEMO1 => open,
    P2_21_nMEMO2 => open,
    P2_20_nMEMO3 => open,
    P2_19_nMEMO4 => open,
    P2_18_nMEMO5 => open,
    P2_17_nMEMO6 => open,
    P2_16_nMEMO7 => open,
    P1_89_DIMO0 => DIMO(0),
    P1_88_DIMO1 => DIMO(1),
    P1_87_DIMO2 => DIMO(2),
    P1_86_DIMO3 => DIMO(3),
    P1_85_DIMO4 => DIMO(4),
    P1_84_DIMO5 => DIMO(5),
    P1_83_DIMO6 => DIMO(6),
    P1_82_DIMO7 => DIMO(7));

  
  cp_end <= nEnd;
--  IOData <= "HHHHHHHH";
end logic;

