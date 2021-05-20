-- Testbench for TTL 7490 Decade and Binary Counters
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component MPUI is
port(

-- Internal
    Int_nCP1 : out std_logic;
    
-- Clk is to be generated externally    
    clkInput : in std_logic;
    nReset : in std_logic;
    
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
    P1_18_GeneralReset : out std_logic;
    P2_35_DisableInterrupt : in std_logic;
    P2_33_Mie3 : in std_logic;
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
    P1_74_0_3Hz : out std_logic;
    P1_13_2_3Hz : out std_logic;
    P1_58_4_6Hz : out std_logic;
    P1_57_9_6Hz : out std_logic;
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
    P1_29_nSetICMEMA : in std_logic;
    P2_29_SelectICMEMA : out std_logic;
    P2_36_nMitd5 : in std_logic;
    P2_32_Interrupt : out std_logic;
    P2_6_InterruptAddress1 : out std_logic;
    P2_8_InterruptAddress2 : out std_logic;
    P2_34_InterruptAddress3 : out std_logic;
    P1_6_MieReset : in std_logic;
    P1_11_ResetButton : in std_logic;    
    
    P1_38_IRMCI : in std_logic;
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
    
    P2_nMijStart : out std_logic;
    
    P2_17_Mi0 : out std_logic;
    P2_12_Mi1 : out std_logic;
    P2_13_Mi2 : out std_logic;
    P2_14_Mi3 : out std_logic;
    P2_18_Mi5 : out std_logic;
    P2_19_Mi6 : out std_logic;
    P2_20_Mi7 : out std_logic;
    
    P2_16_nMi0 : out std_logic
);
end component;

signal clkInput, nCP0, CP0, CP2, nCP1 : std_logic;
signal nReset : std_logic;
signal nMEMO, Mi : std_logic_vector (7 downto 0);
signal CONROM :  std_logic_vector (15 downto 0);
begin

  -- Connect DUT
  DUT: MPUI port map(
-- Internal
    Int_nCP1 => nCP1,
    
-- Clk is to be generated externally    
    clkInput => clkInput,
    nReset => nReset,
-- Signals from the connector
    P1_38_MEMAChanged => '0',
    P1_69_ReadMEMO => '0',
    P2_9_StopCPCounter => '1',
    P2_7_nCOPHalt => '1', 
    P2_67_PAinterrupt => '1',
    P2_88_GEAinterrupt => '1',
    P2_89_KBinterrupt => '1',
    P2_86_EBAinterrupt => '1',
    P2_85_ITransReady => '1',
    P2_84_IRecReady => '1',
    P1_18_GeneralReset => open,
    P2_35_DisableInterrupt => '1',
    P2_33_Mie3 => '1',
    P2_70_DZeroFF => '1',
    P2_71_ALUAeqB => '1',
    P2_72_ARMCO => open,
    P2_73_ARMCI => open,
    P2_66_DCarryFF => '1',
    P1_72_nCarry => open,
    P1_73_nZero => open,
    P2_64_nMieResCarry => '1',
    P2_65_nMieResZero => '1',
    P2_68_AROPar => '1',
    P2_69_AREPar => '1',
    P1_7_ClockInterrupt => '1',
    
    P1_8_3_07MHz => open,
    P1_9_153_6kHz => open,
    P1_10_9600Hz => open,
    P1_80_1200Hz => open,
    P1_79_300Hz => open,
    P1_74_0_3Hz => open,
    P1_13_2_3Hz => open,
    P1_58_4_6Hz => open,
    P1_57_9_6Hz => open,
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
    P2_27_nEBAINterruptReq  => open,
    P2_37_Mie3 => '1',
    P2_31_nMieResPri => '1',
    P1_29_nSetICMEMA => '1',
    P2_29_SelectICMEMA => open,
    P2_36_nMitd5 => '1',
    P2_32_Interrupt => open,
    P2_6_InterruptAddress1 => open,
    P2_8_InterruptAddress2 => open,
    P2_34_InterruptAddress3 => open,
    P1_6_MieReset => '1',
    P1_11_ResetButton => '1',  
    
    P1_38_IRMCI => '1',
    P1_39_IRMCO => '1',
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
    
    P2_22_Mie => open,
    P1_35_Mia => open,
    
    P1_71_nARData7 => '1',
    P2_77_nCError => '1',
    P2_76_nCBreak => '1',
    P2_75_nCOverrun => '1',
    P2_74_nStatus1 => '1',
    P2_83_nStatus2 => '1',
    P2_82_nCRepeat => '1',
    P2_81_nCIDData => '1',
    P2_80_nCOverrunDIA => '1',
    P2_78_Spare => '1',
    P1_37_nPrinterInoperable  => '1',
    P2_79_Spare => '1',
    P2_23_nArg0 => open,
    P2_24_nArg1 => open,
    P2_25_nArg2 => open,
    P2_26_nArg3 => open,
    
    P1_27_Mark => '1',
    P1_28_nModCarry => open,
    
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
    P2_15_nCPMit => open,
    
    P2_10_nEnd => open,
    
    P2_nMijStart => open,
    
    P2_17_Mi0 => Mi(0),
    P2_12_Mi1 => Mi(1),
    P2_13_Mi2 => Mi(2),
    P2_14_Mi3 => Mi(3),
    P2_18_Mi5 => Mi(5),
    P2_19_Mi6 => Mi(6),
    P2_20_Mi7 => Mi(7),
    
    P2_16_nMi0 => open);
  process
  begin
    nReset <= '0';
	wait for 200 ns;
    nReset <= '1';
    wait for 200 ns;
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    
	assert (CP0 = '0') report "Fail CP0 not cleared" severity error;


	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
