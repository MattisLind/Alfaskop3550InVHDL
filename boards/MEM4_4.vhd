-- The Alfaskop 3500 MPU I board in  VHDL
library IEEE;
use IEEE.std_logic_1164.all;


entity MEM4_4 is
port(

-- Clk is to be generated externally    
    clkInput : in std_logic;
    nReset : in std_logic;
    
-- Signals from the connector
    P1_31_nWriteMEM : in std_logic;
    P1_30_ARdata0 : in std_logic;
    P1_29_ARdata1 : in std_logic;
    P1_28_ARdata2 : in std_logic;
    P1_27_ARdata3 : in std_logic;
    P1_26_ARdata4 : in std_logic;
    P1_25_ARdata5 : in std_logic;
    P1_24_ARdata6 : in std_logic;
    P1_23_ARdata7 : in std_logic;
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
    P2_14_COMbyteIO0 : in std_logic;
    P2_13_COMbyteIO1 : in std_logic;
    P2_12_COMbyteIO2 : in std_logic;
    P2_11_COMbyteIO3 : in std_logic;
    P2_10_COMbyteIO4 : in std_logic;
    P2_9_COMbyteIO5 : in std_logic;
    P2_8_COMbyteIO6 : in std_logic;
    P2_7_COMbyteIO7 : in std_logic;
    P2_73_COPdata0 : in std_logic;
    P2_72_COPdata1 : in std_logic;
    P2_71_COPdata2 : in std_logic;
    P2_70_COPdata3 : in std_logic;
    P2_69_COPdata4 : in std_logic;
    P2_68_COPdata5 : in std_logic;
    P2_67_COPdata6 : in std_logic;
    P2_66_COPdata7 : in std_logic;
    P2_23_nMEMO0 : out std_logic;
    P2_22_nMEMO1 : out std_logic;
    P2_21_nMEMO2 : out std_logic;
    P2_20_nMEMO3 : out std_logic;
    P2_19_nMEMO4 : out std_logic;
    P2_18_nMEMO5 : out std_logic;
    P2_17_nMEMO6 : out std_logic;
    P2_31_nMEMO7 : out std_logic;
    P1_89_DIMO0 : inout std_logic;
    P1_88_DIMO1 : inout std_logic;
    P1_87_DIMO2 : inout std_logic;
    P1_86_DIMO3 : inout std_logic;
    P1_85_DIMO4 : inout std_logic;
    P1_84_DIMO5 : inout std_logic;
    P1_83_DIMO6 : inout std_logic;
    P1_82_DIMO7 : inout std_logic);

    
end MEM4_4;



architecture logic of MEM4_4 is


component TTL74157 is
port(
  pin1_select : in std_logic;
  pin2_1a: in std_logic;
  pin3_1b  : in std_logic;
  pin4_1y   : out std_logic;
  pin5_2a: in std_logic;
  pin6_2b: in std_logic;
  pin7_2y   : out std_logic;
  pin9_3y   : out std_logic;
  pin10_3b  : in std_logic;
  pin11_3a : in std_logic;
  pin12_4y   : out std_logic; 
  pin13_4b  : in std_logic;
  pin14_4a : in std_logic;
  pin15_strobe  : in std_logic);
end component;


component TTL7442 is
port(
  pin1_ny0  : out std_logic;
  pin2_ny1  : out std_logic;
  pin3_ny2  : out std_logic;
  pin4_ny3  : out std_logic;
  pin5_ny4  : out std_logic;
  pin6_ny5  : out std_logic;
  pin7_ny6  : out std_logic;
  pin9_ny7  : out std_logic;
  pin10_ny8  : out std_logic;
  pin11_ny9  : out std_logic;
  pin12_a3  : in std_logic;  
  pin13_a2  : in std_logic;
  pin14_a1  : in std_logic;
  pin15_a0  : in std_logic);
end component;


component TTL74151 is
port(
  pin1_d3: in std_logic;
  pin2_d2  : in std_logic;
  pin3_d1: in std_logic;
  pin4_d0: in std_logic;
  pin5_y : out std_logic;
  pin6_w  : out std_logic;
  pin7_ng : in std_logic;
  pin9_c  : in std_logic;
  pin10_b : in std_logic;
  pin11_a  : in std_logic;
  pin12_d7   : in std_logic;
  pin13_d6   : in std_logic;
  pin14_d5   : in std_logic;
  pin15_d4   : in std_logic);
end component;


component TTL74153 is
port(
  pin1_n1g: in std_logic;
  pin2_b  : in std_logic;
  pin3_1c3: in std_logic;
  pin4_1c2: in std_logic;
  pin5_1c1 : in std_logic;
  pin6_1c0  : in std_logic;
  pin7_1y : out std_logic;
  pin9_2y  : out std_logic;
  pin10_2c0 : in std_logic;
  pin11_2c1  : in std_logic;
  pin12_2c2   : in std_logic;
  pin13_2c3   : in std_logic;
  pin14_a   : in std_logic;
  pin15_n2g   : in std_logic);
end component;

component TTLDM8123 is
port(
  pin1_select : in std_logic;
  pin2_1a: in std_logic;
  pin3_1b  : in std_logic;
  pin4_1y   : out std_logic;
  pin5_2a: in std_logic;
  pin6_2b: in std_logic;
  pin7_2y   : out std_logic;
  pin9_3y   : out std_logic;
  pin10_3b  : in std_logic;
  pin11_3a : in std_logic;
  pin12_4y   : out std_logic; 
  pin13_4b  : in std_logic;
  pin14_4a : in std_logic;
  pin15_strobe  : in std_logic);
end component;


signal nMEMA : std_logic_vector (15 downto 0);
begin 

  nMEMA(0) <=   P2_39_nMEMA0;
  nMEMA(1) <=   P2_38_nMEMA1;
  nMEMA(2) <=   P2_37_nMEMA2;
  nMEMA(3) <=   P2_36_nMEMA3;
  nMEMA(4) <=   P2_35_nMEMA4;
  nMEMA(5) <=   P2_34_nMEMA5;
  nMEMA(6) <=   P2_33_nMEMA6;
  nMEMA(7) <=   P2_32_nMEMA7;
  nMEMA(8) <=   P2_31_nMEMA8;
  nMEMA(9) <=   P2_30_nMEMA9;
  nMEMA(10) <=   P2_29_nMEMA10;
  nMEMA(11) <=   P2_28_nMEMA11;
  nMEMA(12) <=   P2_27_nMEMA12;
  nMEMA(13) <=   P2_26_nMEMA13;
  nMEMA(14) <=   P2_25_nMEMA14;
  nMEMA(15) <=  P2_24_nMEMA15;

  
CE_SEL_ROM_IC38: TTL7442 port map (
  pin1_ny0 => IC38_1,
  pin2_ny1 => IC38_2,
  pin3_ny2 => IC38_3,
  pin4_ny3 => IC38_4,
  pin5_ny4 => IC38_5,
  pin6_ny5 => IC38_6,
  pin7_ny6 => IC38_7,
  pin9_ny7 => IC38_9,
  pin10_ny8 => open,
  pin11_ny9 => open,
  pin12_a3 => IC51_6,
  pin13_a2 => IC78_10,
  pin14_a1 => IC66_6,
  pin15_a0 => IC66_3
  );


CE_SEL_ROM_IC37: TTL7442 port map (
  pin1_ny0 => IC37_1,
  pin2_ny1 => IC37_2,
  pin3_ny2 => IC37_3,
  pin4_ny3 => IC37_4,
  pin5_ny4 => IC37_5,
  pin6_ny5 => IC37_6,
  pin7_ny6 => IC37_7,
  pin9_ny7 => IC37_9,
  pin10_ny8 => open,
  pin11_ny9 => open,
  pin12_a3 => IC51_8,
  pin13_a2 => IC78_10,
  pin14_a1 => IC66_6,
  pin15_a0 => IC66_3
  );

CE_SEL_RWM_IC54: TTL7442 port map (
  pin1_ny0 => open,
  pin2_ny1 => open,
  pin3_ny2 => open,
  pin4_ny3 => open,
  pin5_ny4 => IC54_5,
  pin6_ny5 => IC54_6,
  pin7_ny6 => IC54_7,
  pin9_ny7 => IC54_9,
  pin10_ny8 => open,
  pin11_ny9 => open,
  pin12_a3 => IC78_12,
  pin13_a2 => IC41_1,
  pin14_a1 => IC78_8,
  pin15_a0 => IC78_10
  );

  P2_62_PCBPositionInfo <= 'H';
  P2_63_PCBPositionInfo <= 'H';


AddressModified_IC79: TTL74153 port map (
  pin1_n1g => '0',
  pin2_b  => nMEMA(13),
  pin3_1c3 => IC80_6,
  pin4_1c2 => P2_62_PCBPositionInfo,
  pin5_1c1 => IC80_6,
  pin6_1c0  => P2_62_PCBPositionInfo,
  pin7_1y => MicIn(7),
  pin9_2y  =>MicIn(6),
  pin10_2c0 => '1',
  pin11_2c1  =>'1',
  pin12_2c2  => '0',
  pin13_2c3  => '0',
  pin14_a  => nMEMA(12),
  pin15_n2g  => '0'); 

-- IC65
  IC65_6 <= (IC78_2 and P2_63_PCBPositionInfo) nor ( IC77_11 and IC79_9 );
  IC65_8 <= (IC78_4 and P2_63_PCBPositionInfo) nor ( IC77_11 and IC79_7 );
  
-- IC77

  IC77_3 <=
  IC77_6 <=
  IC77_8 <=
  IC77_11 <= P2_63_PCBPositionInfo nand P2_63_PCBPositionInfo;

-- IC78
  IC78_2 <= not nMEMA(12);
  IC78_4 <= not nMEMA(13);
  IC78_6 <= not nMEMA(15);
  IC78_8 <= not nMEMA(11);
  IC78_10 <= not nMEMA(10);
  IC78_12 <= not IC65_8;
  
-- IC80
  IC80_2 <=
  IC80_4 <=
  IC80_6 <= not P2_62_PCBPositionInfo;
  IC80_8 <=
  IC80_10 <=
  IC80_12 <=
end logic;  
