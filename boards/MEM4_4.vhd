-- The Alfaskop 3500 MPU I board in  VHDL
library IEEE;
use IEEE.std_logic_1164.all;


entity MEM4_4 is
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

component RAM2102 is
port(
  pin1_a6  : in std_logic;
  pin2_a5  : in std_logic;
  pin3_nw  : in std_logic;
  pin4_a1  : in std_logic;
  pin5_a2  : in std_logic;
  pin6_a3  : in std_logic;
  pin7_a4  : in std_logic;
  pin8_a0 : in std_logic;
  pin11_d  : in std_logic;
  pin12_x  : out std_logic;    
  pin13_nce  : in std_logic;
  pin14_a9  : in std_logic;
  pin15_a8  : in std_logic;
  pin16_a7  : in std_logic);
end component;
  

  

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


component PARAM1 is
port(
  pin1_o1 : out std_logic;
  pin2_o2 : out std_logic;
  pin3_o3 : out std_logic;
  pin4_i1: in std_logic;
  pin5_i2 : in std_logic;
  pin6_o4 : out std_logic;
  pin7_o5 : out std_logic;
  pin10_o6 : out std_logic;
  pin11_o7 : out std_logic;
  pin12_i3 : in std_logic;
  pin13_i4 : in std_logic;
  pin14_o8 : out std_logic;
  pin15_o9 : out std_logic;
  pin16_o10 : out std_logic);
end component;

component PARAM2 is
port(
  pin1_o1 : out std_logic;
  pin2_o2 : out std_logic;
  pin3_o3 : out std_logic;
  pin4_i1: in std_logic;
  pin5_i2 : in std_logic;
  pin6_o4 : out std_logic;
  pin7_o5 : out std_logic;
  pin10_o6 : out std_logic;
  pin11_o7 : out std_logic;
  pin12_i3 : in std_logic;
  pin13_i4 : in std_logic;
  pin14_o8 : out std_logic;
  pin15_o9 : out std_logic;
  pin16_o10 : out std_logic);
end component;

component PARAM3 is
port(
  pin1_o1 : out std_logic;
  pin2_o2 : out std_logic;
  pin3_o3 : out std_logic;
  pin4_i1: in std_logic;
  pin5_i2 : in std_logic;
  pin6_o4 : out std_logic;
  pin7_o5 : out std_logic;
  pin10_o6 : out std_logic;
  pin11_o7 : out std_logic;
  pin12_i3 : in std_logic;
  pin13_i4 : in std_logic;
  pin14_o8 : out std_logic;
  pin15_o9 : out std_logic;
  pin16_o10 : out std_logic);
end component;

component PARAM4 is
port(
  pin1_o1 : out std_logic;
  pin2_o2 : out std_logic;
  pin3_o3 : out std_logic;
  pin4_i1: in std_logic;
  pin5_i2 : in std_logic;
  pin6_o4 : out std_logic;
  pin7_o5 : out std_logic;
  pin10_o6 : out std_logic;
  pin11_o7 : out std_logic;
  pin12_i3 : in std_logic;
  pin13_i4 : in std_logic;
  pin14_o8 : out std_logic;
  pin15_o9 : out std_logic;
  pin16_o10 : out std_logic);
end component;

component MEM1_IC1_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;

component MEM1_IC2_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC3_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC4_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC9_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC10_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC11_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC12_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC17_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC18_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC19_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC20_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC25_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC26_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC27_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;
component MEM1_IC28_1702 is
port(
  pin1_a2  : out std_logic;
  pin2_a1  : out std_logic;
  pin3_a0  : out std_logic;
  pin4_d0  : out std_logic;
  pin5_d1  : out std_logic;
  pin6_d2  : out std_logic;
  pin7_d3  : out std_logic;
  pin8_d4  : out std_logic;
  pin9_d5  : out std_logic;
  pin10_d6  : out std_logic;
  pin11_d7  : out std_logic;
  pin14_nce : in std_logic;
  pin17_a7  : in std_logic;
  pin18_a6  : in std_logic;
  pin19_a5  : in std_logic;
  pin20_a4  : in std_logic;
  pin21_a3  : in std_logic);
end component;

signal nMEMA  : std_logic_vector (15 downto 0);
signal nMEMO, ARData, ROMAddress, RWMDataOut, ROMData, RWMDataIn : std_logic_vector (7 downto 0);
signal nCOPData, nDIMO : std_logic_vector (7 downto 0);
signal nCOMByteIO ,ROMDataOut : std_logic_vector (7 downto 0);
signal RWMaddress : std_logic_vector (9 downto 0);
signal IC38_1, IC38_2, IC38_3, IC38_5, IC38_6, IC38_7, IC38_9, IC51_6, IC51_8, IC78_10: std_logic;
signal IC38_4, IC66_6, IC37_1, IC37_2, IC37_3, IC37_4, IC37_5, IC37_6, IC37_9 : std_logic;
signal IC62_1, IC66_3, I61_16, IC61_15, IC61_14 : std_logic;
signal IC61_4, IC59_8, IC59_10, IC59_12, IC61_7, IC61_1, IC61_3 : std_logic;
signal IC61_11, IC62_7, IC63_1, IC63_2, IC63_3, IC63_6, IC62_16, IC62_15 : std_logic;
signal IC63_16, IC63_15, IC63_14, IC59_4, IC63_11, IC63_10, IC63_7 : std_logic;
signal IC39_6, IC36_11, IC36_3 : std_logic;
signal IC41_10, IC41_4, IC41_1, IC39_8 : std_logic;
signal IC46_6, IC46_3, IC46_11, IC46_8 : std_logic;
signal IC52_3, IC65_6, IC65_8, IC52_8, IC52_6, IC78_8 : std_logic;
signal IC59_2, IC52_11, IC41_13, IC78_4, IC78_2, IC72_4, IC72_7, IC72_12 : std_logic;
signal IC67_3, IC66_11, IC77_11, IC59_6, IC77_8, IC77_3, IC39_3 : std_logic;
signal IC36_8, IC36_6, I62_14, IC62_11, IC62_10, IC62_6, IC62_3, IC62_2 : std_logic;
signal IC62_14, IC61_16, IC61_6, IC61_2, IC61_10 : std_logic;
signal IC66_8 : std_logic;
signal IC37_7, IC54_5, IC54_6, IC54_7, IC54_9 : std_logic;
signal IC78_12, IC80_6, IC60_6, IC60_3 : std_logic;
signal IC80_8, IC80_10, IC80_12, IC80_2, IC80_4, IC78_6, IC77_6 : std_logic;
signal IC67_6, IC67_11, IC67_8, IC79_7, IC79_9, IC60_16, IC60_15 : std_logic;
signal IC60_10, IC60_11, IC60_7, IC60_2, IC60_1, IC60_14 : std_logic;
signal PCBPositionInfo1, PCBPositionInfo2, COPReadORder : std_logic;
begin 

  ARData(0) <=  P1_30_ARData0;
  ARData(1) <=  P1_29_ARData1;
  ARData(2) <=  P1_28_ARData2;
  ARData(3) <=  P1_27_ARData3;
  ARData(4) <=  P1_26_ARData4;
  ARData(5) <=  P1_25_ARData5;
  ARData(6) <=  P1_24_ARData6;
  ARData(7) <=  P1_23_ARData7;


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

  P2_23_nMEMO0 <= nMEMO(0);
  P2_22_nMEMO1 <= nMEMO(1);
  P2_21_nMEMO2 <= nMEMO(2);
  P2_20_nMEMO3 <= nMEMO(3);
  P2_19_nMEMO4 <= nMEMO(4);
  P2_18_nMEMO5 <= nMEMO(5);
  P2_17_nMEMO6 <= nMEMO(6);
  P2_31_nMEMO7 <= nMEMO(7);

  nDIMO <= "HHHHHHHH"; -- pull up for nDIMO bus. IC85 - optional only one in
                       -- the system

nDIMO(0) <= P1_89_DIMO0;
nDIMO(1) <= P1_88_DIMO1;
nDIMO(2) <= P1_87_DIMO2;
nDIMO(3) <= P1_86_DIMO3;
nDIMO(4) <= P1_85_DIMO4;
nDIMO(5) <= P1_84_DIMO5;
nDIMO(6) <= P1_83_DIMO6;
nDIMO(7) <= P1_82_DIMO7;

nCOMByteIO(0) <= P2_14_nCOMByteIO0;
nCOMByteIO(1) <= P2_13_nCOMByteIO1;
nCOMByteIO(2) <= P2_12_nCOMByteIO2;
nCOMByteIO(3) <= P2_11_nCOMByteIO3;
nCOMByteIO(4) <= P2_10_nCOMByteIO4;
nCOMByteIO(5) <= P2_9_nCOMByteIO5;
nCOMByteIO(6) <= P2_8_nCOMByteIO6;
nCOMByteIO(7) <= P2_7_nCOMByteIO7;

nCOPData(0) <= P2_73_nCOPData0;
nCOPData(1) <= P2_72_nCOPData1;
nCOPData(2) <= P2_71_nCOPData2;
nCOPData(3) <= P2_70_nCOPData3;
nCOPData(4) <= P2_69_nCOPData4;
nCOPData(5) <= P2_68_nCOPData5;
nCOPData(6) <= P2_67_nCOPData6;
nCOPData(7) <= P2_66_nCOPData7;

  
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


  PCBPositionInfo1 <= P2_62_PCBPositionInfo;
  PCBPositionInfo1 <= 'H';
  PCBPositionInfo2 <= P2_63_PCBPositionInfo;
  PCBPositionInfo2 <= 'H';

AddressModified_IC79: TTL74153 port map (
  pin1_n1g => '0',
  pin2_b  => nMEMA(13),
  pin3_1c3 => IC80_6,
  pin4_1c2 => PCBPositionInfo1,
  pin5_1c1 => IC80_6,
  pin6_1c0  => PCBPositionInfo1,
  pin7_1y => IC79_7,
  pin9_2y  => IC79_9,
  pin10_2c0 => '1',
  pin11_2c1  =>'1',
  pin12_2c2  => '0',
  pin13_2c3  => '0',
  pin14_a  => nMEMA(12),
  pin15_n2g  => '0'); 

RWM_ROM_DATA_SEL_IC53: TTLDM8123 port map(
  pin1_select => IC77_3,
  pin2_1a => RWMDataOut(0),
  pin3_1b => ROMDataOut(0),
  pin4_1y => nMEMO(0),
  pin5_2a => RWMDataOut(1),
  pin6_2b => ROMDataOut(1),
  pin7_2y => nMEMO(1),
  pin9_3y  => nMEMO(2),
  pin10_3b => ROMDataOut(2),
  pin11_3a => RWMDataOut(2),
  pin12_4y => nMEMO(3), 
  pin13_4b => ROMDataOut(3),
  pin14_4a => RWMDataOut(3),
  pin15_strobe => IC39_3); 

RWM_ROM_DATA_SEL_IC40: TTLDM8123 port map(
  pin1_select => IC77_3,
  pin2_1a => RWMDataOut(4),
  pin3_1b => ROMDataOut(4),
  pin4_1y => nMEMO(4),
  pin5_2a => RWMDataOut(5),
  pin6_2b => ROMDataOut(5),
  pin7_2y => nMEMO(5),
  pin9_3y  => nMEMO(6),
  pin10_3b => ROMDataOut(6),
  pin11_3a => RWMDataOut(6),
  pin12_4y => nMEMO(7), 
  pin13_4b => ROMDataOut(7),
  pin14_4a => RWMDataOut(7),
  pin15_strobe => IC39_3);

OS_CONTROL_CIRCUI_IC72: TTL74157 port map(
  pin1_select => IC77_6, 
  pin2_1a => nMEMA(3),
  pin3_1b => '0',
  pin4_1y => IC72_4,
  pin5_2a => nMEMA(2),
  pin6_2b => '0',
  pin7_2y => IC72_7,
  pin9_3y => open,
  pin10_3b => '0',
  pin11_3a => '0',
  pin12_4y => IC72_12,
  pin13_4b => '1',
  pin14_4a => nMEMA(1),
  pin15_strobe => IC59_8
);


IC47: TTL74151 port map (
  pin1_d3 => IC60_6, 
  pin2_d2 => IC60_3, 
  pin3_d1 => IC60_2,
  pin4_d0 => IC60_1,
  pin5_y => nMEMO(0),
  pin6_w => open,
  pin7_ng => '0',
  pin9_c => IC59_12,
  pin10_b => IC59_10,
  pin11_a => IC59_8,
  pin12_d7 => nCOPData(0),
  pin13_d6 => nDIMO(0),
  pin14_d5 => nCOMByteIO(0),
  pin15_d4 => IC60_7);
  
IC73: TTL74151 port map (
  pin1_d3 => IC60_11, 
  pin2_d2 => IC60_14, 
  pin3_d1 => IC60_15,
  pin4_d0 => IC60_16,
  pin5_y => nMEMO(1),
  pin6_w => open,
  pin7_ng => '0',
  pin9_c => IC59_12,
  pin10_b => IC59_10,
  pin11_a => IC59_8,
  pin12_d7 => nCOPData(1),
  pin13_d6 => nDIMO(1),
  pin14_d5 => nCOMByteIO(1),
  pin15_d4 => IC60_10);
  

IC60: PARAM1 port map (
  pin1_o1 => IC60_1,
  pin2_o2 => IC60_2,
  pin3_o3 => IC60_3,
  pin4_i1 => '1',
  pin5_i2 => '0',
  pin6_o4 => IC60_6,
  pin7_o5 => IC60_7,
  pin10_o6 => IC60_10,
  pin11_o7 => IC60_11,
  pin12_i3 => ROMAddress(0),
  pin13_i4 => IC59_4,
  pin14_o8 => IC60_14,
  pin15_o9 => IC60_15,
  pin16_o10 => IC60_16);

IC48: TTL74151 port map (
  pin1_d3 => IC61_6, 
  pin2_d2 => IC61_3, 
  pin3_d1 => IC61_2,
  pin4_d0 => IC61_1,
  pin5_y => nMEMO(2),
  pin6_w => open,
  pin7_ng => '0',
  pin9_c => IC59_12,
  pin10_b => IC59_10,
  pin11_a => IC59_8,
  pin12_d7 => nCOPData(2),
  pin13_d6 => nDIMO(2),
  pin14_d5 => nCOMByteIO(2),
  pin15_d4 => IC61_7);
  
IC74: TTL74151 port map (
  pin1_d3 => IC61_11, 
  pin2_d2 => IC61_14, 
  pin3_d1 => IC61_15,
  pin4_d0 => IC61_16,
  pin5_y => nMEMO(3),
  pin6_w => open,
  pin7_ng => '0',
  pin9_c => IC59_12,
  pin10_b => IC59_10,
  pin11_a => IC59_8,
  pin12_d7 => nCOPData(3),
  pin13_d6 => nDIMO(3),
  pin14_d5 => nCOMByteIO(3),
  pin15_d4 => IC61_10);
  

IC61: PARAM1 port map (
  pin1_o1 => IC61_1,
  pin2_o2 => IC61_2,
  pin3_o3 => IC61_3,
  pin4_i1 => '1',
  pin5_i2 => '0',
  pin6_o4 => IC61_6,
  pin7_o5 => IC61_7,
  pin10_o6 => IC61_10,
  pin11_o7 => IC61_11,
  pin12_i3 => ROMAddress(0),
  pin13_i4 => IC59_4,
  pin14_o8 => IC61_14,
  pin15_o9 => IC61_15,
  pin16_o10 => IC61_16);

IC49: TTL74151 port map (
  pin1_d3 => IC62_6, 
  pin2_d2 => IC62_3, 
  pin3_d1 => IC62_2,
  pin4_d0 => IC62_1,
  pin5_y => nMEMO(4),
  pin6_w => open,
  pin7_ng => '0',
  pin9_c => IC59_12,
  pin10_b => IC59_10,
  pin11_a => IC59_8,
  pin12_d7 => nCOPData(4),
  pin13_d6 => nDIMO(4),
  pin14_d5 => nCOMByteIO(4),
  pin15_d4 => IC62_7);
  
IC75: TTL74151 port map (
  pin1_d3 => IC62_11, 
  pin2_d2 => IC62_14, 
  pin3_d1 => IC62_15,
  pin4_d0 => IC62_16,
  pin5_y => nMEMO(5),
  pin6_w => open,
  pin7_ng => '0',
  pin9_c => IC59_12,
  pin10_b => IC59_10,
  pin11_a => IC59_8,
  pin12_d7 => nCOPData(5),
  pin13_d6 => nDIMO(5),
  pin14_d5 => nCOMByteIO(5),
  pin15_d4 => IC62_10);
  

IC62: PARAM1 port map (
  pin1_o1 => IC62_1,
  pin2_o2 => IC62_2,
  pin3_o3 => IC62_3,
  pin4_i1 => '1',
  pin5_i2 => '0',
  pin6_o4 => IC62_6,
  pin7_o5 => IC62_7,
  pin10_o6 => IC62_10,
  pin11_o7 => IC62_11,
  pin12_i3 => ROMAddress(0),
  pin13_i4 => IC59_4,
  pin14_o8 => IC62_14,
  pin15_o9 => IC62_15,
  pin16_o10 => IC62_16);

IC50: TTL74151 port map (
  pin1_d3 => IC63_6, 
  pin2_d2 => IC63_3, 
  pin3_d1 => IC63_2,
  pin4_d0 => IC63_1,
  pin5_y => nMEMO(6),
  pin6_w => open,
  pin7_ng => '0',
  pin9_c => IC59_12,
  pin10_b => IC59_10,
  pin11_a => IC59_8,
  pin12_d7 => nCOPData(6),
  pin13_d6 => nDIMO(6),
  pin14_d5 => nCOMByteIO(6),
  pin15_d4 => IC63_7);
  
IC76: TTL74151 port map (
  pin1_d3 => IC63_11, 
  pin2_d2 => IC63_14, 
  pin3_d1 => IC63_15,
  pin4_d0 => IC63_16,
  pin5_y => nMEMO(7),
  pin6_w => open,
  pin7_ng => '0',
  pin9_c => IC59_12,
  pin10_b => IC59_10,
  pin11_a => IC59_8,
  pin12_d7 => nCOPData(7),
  pin13_d6 => nDIMO(7),
  pin14_d5 => nCOMByteIO(7),
  pin15_d4 => IC63_10);
  

IC63: PARAM1 port map (
  pin1_o1 => IC63_1,
  pin2_o2 => IC63_2,
  pin3_o3 => IC63_3,
  pin4_i1 => '1',
  pin5_i2 => '0',
  pin6_o4 => IC63_6,
  pin7_o5 => IC63_7,
  pin10_o6 => IC63_10,
  pin11_o7 => IC63_11,
  pin12_i3 => ROMAddress(0),
  pin13_i4 => IC59_4,
  pin14_o8 => IC63_14,
  pin15_o9 => IC63_15,
  pin16_o10 => IC63_16);

IC8:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(0),
  pin12_x => RWMDataOut(0),    
  pin13_nce => IC54_5,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

  
IC16:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(1),
  pin12_x => RWMDataOut(1),    
  pin13_nce => IC54_5,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC24:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(2),
  pin12_x => RWMDataOut(2),    
  pin13_nce => IC54_5,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC32:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(3),
  pin12_x => RWMDataOut(3),    
  pin13_nce => IC54_5,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC45:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(4),
  pin12_x => RWMDataOut(4),    
  pin13_nce => IC54_5,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC58:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(5),
  pin12_x => RWMDataOut(5),    
  pin13_nce => IC54_5,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC71:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(6),
  pin12_x => RWMDataOut(6),    
  pin13_nce => IC54_5,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC84:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(7),
  pin12_x => RWMDataOut(7),    
  pin13_nce => IC54_5,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC7:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(0),
  pin12_x => RWMDataOut(0),    
  pin13_nce => IC54_6,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

  
IC15:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(1),
  pin12_x => RWMDataOut(1),    
  pin13_nce => IC54_6,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC23:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(2),
  pin12_x => RWMDataOut(2),    
  pin13_nce => IC54_6,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC31:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(3),
  pin12_x => RWMDataOut(3),    
  pin13_nce => IC54_6,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC44:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(4),
  pin12_x => RWMDataOut(4),    
  pin13_nce => IC54_6,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC57:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(5),
  pin12_x => RWMDataOut(5),    
  pin13_nce => IC54_6,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC70:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(6),
  pin12_x => RWMDataOut(6),    
  pin13_nce => IC54_6,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC83:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(7),
  pin12_x => RWMDataOut(7),    
  pin13_nce => IC54_6,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC6:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(0),
  pin12_x => RWMDataOut(0),    
  pin13_nce => IC54_7,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

  
IC14:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(1),
  pin12_x => RWMDataOut(1),    
  pin13_nce => IC54_7,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC22:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(2),
  pin12_x => RWMDataOut(2),    
  pin13_nce => IC54_7,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC30:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(3),
  pin12_x => RWMDataOut(3),    
  pin13_nce => IC54_7,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC43:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(4),
  pin12_x => RWMDataOut(4),    
  pin13_nce => IC54_7,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC56:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(5),
  pin12_x => RWMDataOut(5),    
  pin13_nce => IC54_7,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC69:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(6),
  pin12_x => RWMDataOut(6),    
  pin13_nce => IC54_7,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC82:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(7),
  pin12_x => RWMDataOut(7),    
  pin13_nce => IC54_7,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC5:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(0),
  pin12_x => RWMDataOut(0),    
  pin13_nce => IC54_9,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

  
IC13:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(1),
  pin12_x => RWMDataOut(1),    
  pin13_nce => IC54_9,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC21:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(2),
  pin12_x => RWMDataOut(2),    
  pin13_nce => IC54_9,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC29:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(3),
  pin12_x => RWMDataOut(3),    
  pin13_nce => IC54_9,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC42:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(4),
  pin12_x => RWMDataOut(4),    
  pin13_nce => IC54_9,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC55:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(5),
  pin12_x => RWMDataOut(5),    
  pin13_nce => IC54_9,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC68:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(6),
  pin12_x => RWMDataOut(6),    
  pin13_nce => IC54_9,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));

IC81:  RAM2102 port map(
  pin1_a6 => RWMAddress(6),
  pin2_a5 => RWMAddress(5),
  pin3_nw => IC66_11,
  pin4_a1 => RWMAddress(1),
  pin5_a2 => RWMAddress(2),
  pin6_a3 => RWMAddress(3),
  pin7_a4 => RWMAddress(4),
  pin8_a0 => RWMAddress(0),
  pin11_d => RWMDataIn(7),
  pin12_x => RWMDataOut(7),    
  pin13_nce => IC54_9,
  pin14_a9 => RWMAddress(9),
  pin15_a8 => RWMAddress(8),
  pin16_a7 => RWMAddress(7));


IC1:  MEM1_IC1_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC37_4,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));

IC2:  MEM1_IC2_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC37_9,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));
  
IC3:  MEM1_IC3_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC38_4,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));
  
IC4:  MEM1_IC4_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC38_9,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));
  

IC9:  MEM1_IC9_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC37_3,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));

IC10:  MEM1_IC10_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC37_7,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));
  
IC11:  MEM1_IC11_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC38_3,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));
  
IC12:  MEM1_IC12_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC38_7,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));
  

IC17:  MEM1_IC17_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC37_2,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));

IC18:  MEM1_IC18_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC37_6,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));
  
IC19:  MEM1_IC19_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC38_2,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));
  
IC20:  MEM1_IC20_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC38_6,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));
  

IC25:  MEM1_IC25_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC37_1,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));

IC26:  MEM1_IC26_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC37_5,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));
  
IC27:  MEM1_IC27_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC38_1,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));
  
IC28:  MEM1_IC28_1702 port map(
  pin1_a2 => ROMAddress(2),
  pin2_a1 => ROMAddress(1),
  pin3_a0 => ROMAddress(0),
  pin4_d0 => ROMData(0),
  pin5_d1 => ROMData(1),
  pin6_d2 => ROMData(2),
  pin7_d3 => ROMData(3),
  pin8_d4 => ROMData(4),
  pin9_d5 => ROMData(5),
  pin10_d6 => ROMData(6),
  pin11_d7 => ROMData(7),
  pin14_nce => IC38_5,
  pin17_a7 => ROMAddress(7),
  pin18_a6 => ROMAddress(6),
  pin19_a5 => ROMAddress(5),
  pin20_a4 => ROMAddress(4),
  pin21_a3 => ROMAddress(3));
  
  
-- IC36 7438 quad 2 input nand OC output
  IC36_3 <= nMEMA(5) nand '1';
  IC36_6 <= nMEMA(4) nand '1';
  IC36_8 <= nMEMA(6) nand '1';
  IC36_11 <= nMEMA(7) nand '1';

  ROMAddress(4) <= IC36_6;
  ROMAddress(5) <= IC36_3;
  ROMAddress(6) <= IC36_8;
  ROMAddress(7) <= IC36_11;

-- IC39 7408 quad 2 input and
  IC39_3 <= IC77_3 and IC39_6;
  IC39_6 <= IC51_6 and IC51_8;
  IC39_8 <= nMEMA(14) and nMEMA(15);  
--  IC39_11 <=
    
-- IC41 7402 quad 2 input nor 
  IC41_1 <= IC65_6 nor IC77_8;
  IC41_4 <= ARData(0) nor ARData(0);
  IC41_10 <= ARData(2) nor ARData(2);
  IC41_13 <= ARData(1) nor ARData(1);

  RWMDataIn(0) <= IC41_4;
  RWMDataIn(1) <= IC41_13;
  RWMDataIn(2) <= IC41_10;
  
-- IC46 7438 quad 2 input nand oc output
  IC46_3  <= nMEMA(1) nand '1';
  IC46_6  <= nMEMA(2) nand '1';
  IC46_8  <= nMEMA(3) nand '1';
  IC46_11 <= nMEMA(0) nand '1';
  
  ROMAddress(0) <= IC46_11;
  ROMAddress(1) <= IC46_3;
  ROMAddress(2) <= IC46_6;
  ROMAddress(3) <= IC46_8;
  
--IC51 7420 dual 4 input nand

  IC51_6 <= not (IC65_8 and IC65_6 and IC78_8 and IC39_8);
  IC51_8 <= not (nMEMA(11) and IC65_6 and IC65_8 and IC39_8);            
-- IC52 7437 quad 2 input nand

  IC52_3 <= nMEMA(0) nand '1';
  IC52_6 <= nMEMA(1) nand '1';
  IC52_8 <= nMEMA(2) nand '1';
  IC52_11 <= nMEMA(3) nand '1';

  RWMAddress(0) <= IC52_3;
  RWMAddress(1) <= IC52_6;
  RWMAddress(2) <= IC52_8;
  RWMAddress(3) <= IC52_11;

-- IC59 7404 hex inverter
  IC59_2 <= not nMEMA(14);
  IC59_4 <= not IC46_11;
  IC59_6 <= not COPReadOrder;
  IC59_8 <= not IC72_12;
  IC59_10 <= not IC72_7;
  IC59_12 <= not IC72_4;

  COPReadOrder <= 'H';
  COPReadOrder <= P2_65_COPReadOrder;
-- IC65 7451 dual and-or
  IC65_6 <= (IC78_2 and PCBPositionInfo2) nor ( IC77_11 and IC79_9 );
  IC65_8 <= (IC78_4 and PCBPositionInfo2) nor ( IC77_11 and IC79_7 );

-- IC66 7437 quad 2 input nand
  IC66_3 <= nMEMA(8) nand '1';
  IC66_6 <= nMEMA(9) nand '1';
  IC66_8 <= P1_31_nWriteMEM nand '1';
  IC66_11 <= IC66_8 nand '1';
  
  RWMAddress(8) <= IC66_3;
  RWMAddress(9) <= IC66_6;

-- IC67 7437 quad 2 input nand
  IC67_3 <= nMEMA(6) nand '1';
  IC67_6 <= nMEMA(7) nand '1';
  IC67_8 <= nMEMA(4) nand '1';
  IC67_11 <= nMEMA(5) nand '1';

  RWMAddress(4) <= IC67_8;
  RWMAddress(5) <= IC67_11;
  RWMAddress(6) <= IC67_3;
  RWMAddress(7) <= IC67_6; 
  
-- IC77 7400 quad 2 input nand

  IC77_3 <= IC65_8 nand IC41_1;
  IC77_6 <= IC59_2 nand IC78_6;
  IC77_8 <= IC39_8 nand IC39_8;
  IC77_11 <= PCBPositionInfo2 nand PCBPositionInfo2;

-- IC78 7404 hex inverter
  
  IC78_2 <= not nMEMA(12);
  IC78_4 <= not nMEMA(13);
  IC78_6 <= not nMEMA(15);
  IC78_8 <= not nMEMA(11);
  IC78_10 <= not nMEMA(10);
  IC78_12 <= not IC65_8;
  
-- IC80 7404 hex inverter
  IC80_2 <= not ARData(4);
  IC80_4 <= not ARData(3);
  IC80_6 <= not PCBPositionInfo1;
  IC80_8 <= not ARData(7);
  IC80_10 <= not ARData(6);
  IC80_12 <= not ARData(5);

  RWMDataIn(3) <= IC80_4;
  RWMDataIn(4) <= IC80_2;
  RWMDataIn(5) <= IC80_12;
  RWMDataIn(6) <= IC80_10;
  RWMDataIn(7) <= IC80_8;

  
end logic;  
