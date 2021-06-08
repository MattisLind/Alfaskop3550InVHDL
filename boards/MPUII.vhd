-- The Alfaskop 3500 MPU II board in  VHDL
library IEEE;
use IEEE.std_logic_1164.all;


entity MPUII is
port(

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

    P2_65_MieResZero : out std_logic;
    P2_64_MieResCarry : out std_logic;
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
    
       


    P1_28_ModCarry : in std_logic;
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
    P2_26_nArg3 : in std_logic);    
end MPUII;



architecture logic of MPUII is

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

component TTL74198 is
port(
  pin1_s0: in std_logic;
  pin2_srsi  : in std_logic;
  pin3_a : in std_logic;
  pin4_qA   : out std_logic;
  pin5_b  : in std_logic;
  pin6_qB   : out std_logic;
  pin7_c : in std_logic;
  pin8_qC   : out std_logic;
  pin9_d  : in std_logic;
  pin10_qD   : out std_logic;
  pin11_clk: in std_logic;
  pin13_clear : in std_logic;
  pin14_qE   : out std_logic;
  pin15_e : in std_logic;
  pin16_qF   : out std_logic;
  pin17_f  : in std_logic;
  pin18_qG   : out std_logic;
  pin19_g : in std_logic;
  pin20_qH   : out std_logic;
  pin21_h  : in std_logic;
  pin22_slsi : in std_logic;
  pin23_s1: in std_logic);
end component;

component TTL74181 is
port(
  pin1_b0  : in std_logic;
  pin2_a0  : in std_logic;
  pin3_s3  : in std_logic;
  pin4_s2  : in std_logic;
  pin5_s1  : in std_logic;
  pin6_s0  : in std_logic;
  pin7_cn  : in std_logic;
  pin8_m  : in std_logic;
  pin9_f0  : out std_logic;
  pin10_f1  : out std_logic;
  pin11_f2  : out std_logic;  
  pin13_f3  : out std_logic;
  pin14_aeqb  : out std_logic;
  pin15_p  : out std_logic;
  pin16_cn4: out std_logic;
  pin17_g: out std_logic;  
  pin18_b3: in std_logic;
  pin19_a3: in std_logic;
  pin20_b2: in std_logic;
  pin21_a2: in std_logic;
  pin22_b1 : in std_logic;
  pin23_a1 : in std_logic);
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

component TTL74180 is
port(
  pin1_g : in std_logic;
  pin2_h: in std_logic;
  pin3_even  : in std_logic;
  pin4_odd   : in std_logic;
  pin5_sumeven: out std_logic;
  pin6_sumodd: out std_logic;
  pin8_a : in std_logic;	
  pin9_b   : in std_logic;
  pin10_c  : in std_logic;
  pin11_d : in std_logic;
  pin12_e   : in std_logic; 
  pin13_f  : in std_logic);  
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

component TTL74193 is
port(
  pin1_b  : in std_logic;
  pin2_qB   : out std_logic;
  pin3_qA   : out std_logic;
  pin4_down: in std_logic;
  pin5_up  : in std_logic;
  pin6_qC   : out std_logic;
  pin7_qD   : out std_logic;
  pin9_d  : in std_logic;
  pin10_c : in std_logic;
  pin11_nLoad: in std_logic;  
  pin12_nCO : out std_logic;
  pin13_nBO : out std_logic;
  pin14_clr: in std_logic;
  pin15_a : in std_logic
  );
end component;

component TTL74189 is
port(
  pin1_a0  : in std_logic;
  pin2_ncs  : in std_logic;
  pin3_nwe  : in std_logic;
  pin4_d0  : in std_logic;
  pin5_nq0  : out std_logic;
  pin6_d1  : in std_logic;
  pin7_nq1  : out std_logic;
  pin9_nq2  : out std_logic;
  pin10_d2  : in std_logic;
  pin11_nq3  : out std_logic;  
  pin12_d3  : in std_logic;
  pin13_a3  : in std_logic;
  pin14_a2  : in std_logic;
  pin15_a1  : in std_logic);
end component;

component TTLDM8214 is
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

component TTL7474 is
port(
  pin1_n1clr  : in std_logic;
  pin2_1d  : in std_logic;
  pin3_1clk  : in std_logic;
  pin4_n1pre  : in std_logic;
  pin5_1q  : out std_logic;
  pin6_n1q  : out std_logic;
  pin8_n2q  : out std_logic;
  pin9_2q  : out std_logic;
  pin10_n2pre  : in std_logic;
  pin11_2clk  : in std_logic;
  pin12_2d  : in std_logic;  
  pin13_n2clr  : in std_logic);
end component;

component TTL74175 is
port(
  pin1_nclr  : in std_logic;
  pin2_1q  : out std_logic;
  pin3_n1q  : out std_logic;
  pin4_1d  : in std_logic;
  pin5_2d  : in std_logic;
  pin6_n2q  : out std_logic;
  pin7_2q  : out std_logic;
  pin9_clk  : in std_logic;
  pin10_3q  : out std_logic;
  pin11_n3q  : out std_logic;
  pin12_3d  : in std_logic;  
  pin13_4d  : in std_logic;
  pin14_n4q  : out std_logic;
  pin15_4q  : out std_logic);
end component;

component TTL74154 is
port(
  pin1_ny0  : out std_logic;
  pin2_ny1  : out std_logic;
  pin3_ny2  : out std_logic;
  pin4_ny3  : out std_logic;
  pin5_ny4  : out std_logic;
  pin6_ny5  : out std_logic;
  pin7_ny6  : out std_logic;
  pin8_ny7  : out std_logic;
  pin9_ny8  : out std_logic;
  pin10_ny9  : out std_logic;
  pin11_ny10  : out std_logic;  
  pin13_ny11  : out std_logic;
  pin14_ny12  : out std_logic;
  pin15_ny13  : out std_logic;
  pin16_ny14: out std_logic;
  pin17_ny15: out std_logic;  
  pin18_ne1: in std_logic;
  pin19_ne2: in std_logic;
  pin20_a3: in std_logic;
  pin21_a2: in std_logic;
  pin22_a1 : in std_logic;
  pin23_a0 : in std_logic);
end component;


component TTL74155 is
port(
  pin1_1c  : in std_logic;
  pin2_n1g  : in std_logic;
  pin3_b  : in std_logic;
  pin4_1y3  : out std_logic;
  pin5_1y2  : out std_logic;
  pin6_1y1  : out std_logic;
  pin7_1y0  : out std_logic;
  pin9_2y0  : out std_logic;
  pin10_2y1  : out std_logic;
  pin11_2y2  : out std_logic;  
  pin12_2y3  : out std_logic;
  pin13_a  : in std_logic;
  pin14_n2g  : in std_logic;
  pin15_n2c  : in std_logic);
end component;

component TTL74125 is
port(
  pin1_1c : in std_logic;
  pin2_1a : in std_logic;
  pin3_1y : out std_logic;
  pin4_2c : in std_logic;
  pin5_2a : in std_logic;
  pin6_2y : out std_logic;
  pin8_3y : out std_logic;
  pin9_3a : in std_logic;
  pin10_3c : in std_logic;
  pin11_4y : out std_logic;
  pin12_4a : in std_logic; 
  pin13_4c : in std_logic);
end component;  


signal IC67_14, IC67_16, EnableIOdata : std_logic; 
signal nMEMO, nARdata, ARdata, Aleg, Bbus, ALUdata, IOData : std_logic_vector (7 downto 0);
signal CONROM, nMEMA,MAR : std_logic_vector (15 downto 0);
signal Mi : std_logic_vector (7 downto 0);
signal nALUdata : std_logic_vector (7 downto 0);
signal IC34_6, IC34_3 : std_logic;
signal NewIC12, IC17_5, IC17_6, IC17_8, IC18_6, IC18_8 : std_logic;
signal IC16_5, IC16_6, IC16_8, IC16_9, IC3_3, IC3_6 : std_logic;
signal IncrICM, DecrICM,LoadICM, IC26_13, IC2_14, IC2_12, LoadICL, nICLcarry : std_logic;
signal IncrICL, IC65_6, IC8_4, IC8_5, IC8_11, IC41_4, IC6_5, IC6_4: std_logic;

signal IC62_6, IC62_7, IC62_10, IC62_11, ALUcarry, IC38_8 : std_logic;
signal IC : std_logic_vector (12 downto 0);
signal Mie : std_logic_vector (30 downto 1);
signal Mitd : std_logic_vector (5 downto 0);
signal IC9_3, IC9_6, IC9_8, IC9_11, IC15_3, IC15_6, IC15_8, IC15_11 : std_logic;
signal IC19_3, IC19_8, IC19_11, IC20_3, IC20_6, IC20_8, IC20_11 : std_logic;
signal IC21_8, IC21_6, IC21_12 : std_logic;
signal IC27_3, IC27_6, IC27_8, IC27_11 : std_logic;
signal IC28_6, IC28_8, IC29_3, IC29_6, IC29_8, IC29_11 : std_logic;
signal IC30_3, IC30_6, IC30_8, IC30_11 : std_logic;
signal IC32_6, IC32_8, IC32_12 : std_logic;
signal IC33_3, IC33_6, IC33_8, IC33_11 : std_logic;
signal IC34_8, IC34_11 : std_logic;
signal IC38_2,IC38_4,IC38_6,IC38_10,IC38_12 : std_logic;
signal IC39_3,IC39_6,IC39_8,IC39_11 : std_logic;
signal IC43_2, IC44_11 : std_logic;
signal IC46_8,IC46_6 : std_logic; 
signal IC50_3,IC50_6,IC50_8, IC50_11: std_logic; 
signal IC64_6, IC64_8, IC64_12 : std_logic;
signal IC65_3,IC65_8, IC65_11: std_logic; 
signal IC70_3,IC70_6,IC70_8, IC70_11:std_logic;
signal IC76_8,MarkCarry : std_logic;
signal IC77_3,IC77_6,IC77_8,IC77_11: std_logic;
signal IC79_14,ICMcarry,AddToIC  : std_logic;
signal IC82_3,IC82_6,IC82_8,IC82_11:std_logic;
signal AeqB, IC66_6, IC58_1, IC58_2, IC58_3 : std_logic;
signal IC22_12, IC22_13,IC45_5,IC45_6,IC45_7,IC45_9 : std_logic;
signal StackAddress : std_logic_vector (3 downto 0);
signal IC10_6, IC10_2, IC10_3, IC10_7, CP0, nCP0 : std_logic;
signal Arg : std_logic_vector (3 downto 0);
signal MEMToBMia : std_logic_vector (2 downto 1);


begin 

nCP0 <= P2_21_nCP0;
CP0 <= P2_11_CP0;


ASELECTOR_IC81: TTL74157 port map(
  pin1_select => '1', -- TODO
  pin2_1a => nMEMO(7),
  pin3_1b => nARdata(7),
  pin4_1y => Aleg(7),
  pin5_2a => nMEMO(6),
  pin6_2b => nARdata(6),
  pin7_2y => Aleg(6),
  pin9_3y  => Aleg(5),
  pin10_3b => nARdata(5),
  pin11_3a => nMEMO(5),
  pin12_4y => Aleg(4), 
  pin13_4b => nARdata(4),
  pin14_4a => nMEMO(4),
  pin15_strobe => '1'); -- TODO

ASELECTOR_IC69: TTL74157 port map(
  pin1_select => '1', -- TODO
  pin2_1a => nMEMO(3),
  pin3_1b => nARdata(3),
  pin4_1y => Aleg(3),
  pin5_2a => nMEMO(2),
  pin6_2b => nARdata(2),
  pin7_2y => Aleg(2),
  pin9_3y => Aleg(1),
  pin10_3b => nARdata(1),
  pin11_3a => nMEMO(1),
  pin12_4y => Aleg(0), 
  pin13_4b => nARdata(0),
  pin14_4a => nMEMO(0),
  pin15_strobe => '1'); -- TODO


nMEMO(7) <= P1_66_nMEMO7;
nMEMO(7) <= P1_65_nMEMO6;
nMEMO(7) <= P1_64_nMEMO5;
nMEMO(7) <= P1_63_nMEMO4;
nMEMO(7) <= P1_62_nMEMO3;
nMEMO(7) <= P1_61_nMEMO2;
nMEMO(7) <= P1_60_nMEMO1;
nMEMO(7) <= P1_59_nMEMO0;



ALU_IC79: TTL74181 port map(
  pin1_b0 => Bbus(4),
  pin2_a0 => Aleg(4),
  pin3_s3 => CONROM(15),
  pin4_s2 => CONROM(14),
  pin5_s1 => CONROM(13),
  pin6_s0 => CONROM(12),
  pin7_cn => IC67_16,
  pin8_m => CONROM(11),
  pin9_f0 => nALUdata(4),
  pin10_f1 => nALUdata(5),
  pin11_f2 => nALUdata(6),  
  pin13_f3 => nALUdata(7),
  pin14_aeqb => open, -- TODO
  pin15_p => open,
  pin16_cn4 => ALUCarry,
  pin17_g => open,  
  pin18_b3 => Bbus(7),
  pin19_a3 => Aleg(7),
  pin20_b2 => Bbus(6),
  pin21_a2 => Aleg(6),
  pin22_b1 => Bbus(5),
  pin23_a1 => Aleg(5));




ALU_IC67: TTL74181 port map(
  pin1_b0 => Bbus(0),
  pin2_a0 => Aleg(0),
  pin3_s3 => CONROM(15),
  pin4_s2 => CONROM(14),
  pin5_s1 => CONROM(13),
  pin6_s0 => CONROM(12),
  pin7_cn => '0', -- TODO
  pin8_m => CONROM(11),
  pin9_f0 => nALUdata(0),
  pin10_f1 => nALUdata(1),
  pin11_f2 => nALUdata(2),  
  pin13_f3 => nALUdata(3),
  pin14_aeqb => IC67_14, -- TODO
  pin15_p => open,
  pin16_cn4 => IC67_16,
  pin17_g => open,  
  pin18_b3 => Bbus(3),
  pin19_a3 => Aleg(3),
  pin20_b2 => Bbus(2),
  pin21_a2 => Aleg(2),
  pin22_b1 => Bbus(1),
  pin23_a1 => Aleg(1)
);  
  
THREESTATE_IC83: TTL74125 port map(
  pin1_1c => EnableIOdata,
  pin2_1a => nARdata(7),
  pin3_1y => IOData(7),
  pin4_2c => EnableIOdata,
  pin5_2a  => nARdata(6),
  pin6_2y => IOData(6),
  pin8_3y => IOData(5),
  pin9_3a  => nARdata(5),
  pin10_3c => EnableIOdata,
  pin11_4y => IOData(4),
  pin12_4a  => nARdata(4), 
  pin13_4c => EnableIOdata);  



THREESTATE_IC71: TTL74125 port map(
  pin1_1c => EnableIOdata,
  pin2_1a  => nARdata(3),
  pin3_1y => IOData(3),
  pin4_2c => EnableIOdata,
  pin5_2a  => nARdata(2),
  pin6_2y => IOData(2),
  pin8_3y => IOData(1),
  pin9_3a  => nARdata(1),
  pin10_3c => EnableIOdata,
  pin11_4y => IOData(0),
  pin12_4a  => nARdata(0),
  pin13_4c => EnableIOdata);

P1_7_IOData0 <= IOData(0);
P1_8_IOData1 <= IOData(1);
P1_9_IOData2 <= IOData(2);
P1_10_IOData3 <= IOData(3);
P1_11_IOData4 <= IOData(4);
P1_12_IOData5 <= IOData(5);
P1_13_IOData6 <= IOData(6);
P1_14_IOData7 <= IOData(7);




BSELECTOR_IC84: TTLDM8123 port map(
  pin1_select => IC45_5,
  pin2_1a =>IOData(7),
  pin3_1b => nMEMO(7),
  pin4_1y =>Bbus(7),
  pin5_2a =>IOData(6),
  pin6_2b =>nMEMO(6),
  pin7_2y =>Bbus(6),
  pin9_3y  =>Bbus(5),
  pin10_3b =>nMEMO(5),
  pin11_3a =>IOData(5),
  pin12_4y =>Bbus(4), 
  pin13_4b =>nMEMO(4),
  pin14_4a =>IOData(4),
  pin15_strobe => IC43_2); 
  
BSELECTOR_IC72: TTLDM8123 port map(
  pin1_select => IC45_5,  
  pin2_1a =>IOData(3),
  pin3_1b =>nMEMO(3),
  pin4_1y =>Bbus(3),
  pin5_2a =>IOData(2),
  pin6_2b =>nMEMO(2),
  pin7_2y =>Bbus(2),
  pin9_3y  =>Bbus(1),
  pin10_3b =>nMEMO(1),
  pin11_3a =>IOData(1),
  pin12_4y =>Bbus(0), 
  pin13_4b =>nMEMO(0),
  pin14_4a =>IOData(0),
  pin15_strobe => IC43_2);   


PARITY_IC66: TTL74180 port map(
  pin1_g => nARdata(6),
  pin2_h => nARdata(7),
  pin3_even => '1',
  pin4_odd  => '0',
  pin5_sumeven => P2_69_AREvenParity,
  pin6_sumodd => IC66_6,
  pin8_a => nARdata(0), 	
  pin9_b => nARdata(1),
  pin10_c => nARdata(2),
  pin11_d => nARdata(3),
  pin12_e  => nARdata(4), 
  pin13_f => nARdata(5));


P1_15_IOData80 <= IC66_6;
P2_68_AROddPraity <= IC66_6; 


IC78: TTL74151 port map (
  pin1_d3 => IC50_11, 
  pin2_d2 => P1_71_nCarry, 
  pin3_d1 => nARdata(0),
  pin4_d0 => nARdata(7),
  pin5_y => open,
  pin6_w => P2_66_DCarryFF,
  pin7_ng => '0',
  pin9_c => Mi(7),
  pin10_b => IC77_8,
  pin11_a => CONROM(5),
  pin12_d7 => '1',
  pin13_d6 => P1_16_IOData81,
  pin14_d5 => '1',
  pin15_d4 => nALUdata(6));

IC45: TTL7442 port map (
  pin1_ny0 => open,
  pin2_ny1 => open,
  pin3_ny2 => open,
  pin4_ny3 => open,
  pin5_ny4 => IC45_5,
  pin6_ny5 => IC45_6,
  pin7_ny6 => IC45_7,
  pin9_ny7 => IC45_9,
  pin10_ny8 => open,
  pin11_ny9 => open,
  pin12_a3 => Mi(2),
  pin13_a2 => Mi(7),
  pin14_a1 => Mi(1),
  pin15_a0 => Mi(0)
  );



Mi(0) <= P2_17_Mi0;
Mi(1) <= P2_12_Mi1;
Mi(2) <= P2_13_Mi2;
Mi(3) <= P2_14_Mi3;
Mi(5) <= P2_18_Mi5;
Mi(6) <= P2_19_Mi6;
Mi(7) <= P2_20_Mi7;

STACKCOUNTER_IC22: TTL74193 port map (
  pin1_b => '1',
  pin2_qB => StackAddress(1),
  pin3_qA => StackAddress(0),
  pin4_down => Mie(7),
  pin5_up => IC29_11,
  pin6_qC => StackAddress(2),
  pin7_qD => StackAddress(3),
  pin9_d => '1',
  pin10_c => '1',
  pin11_nLoad => P1_18_nGeneralReset,
  pin12_nCO => IC22_12,
  pin13_nBO => IC22_13,
  pin14_clr => '0',
  pin15_a => '1'
);



STACKCOUNTER_IC10: TTL74193 port map (
  pin1_b => '1',
  pin2_qB => IC10_2, 
  pin3_qA => IC10_3,
  pin4_down => IC22_13,
  pin5_up => IC22_12,
  pin6_qC => IC10_6,
  pin7_qD => open,
  pin9_d => '1',
  pin10_c => '1',
  pin11_nLoad => P1_18_nGeneralReset,
  pin12_nCO => open,
  pin13_nBO => open,
  pin14_clr => '0',
  pin15_a => '1'
);


IC58: TTL7442 port map (  pin1_ny0 => open,
  pin2_ny1 => IC58_1,
  pin3_ny2 => IC58_2,
  pin4_ny3 => IC58_3,
  pin5_ny4 => open,
  pin6_ny5 => open,
  pin7_ny6 => open,
  pin9_ny7 => open,
  pin10_ny8 => open,
  pin11_ny9 => open,
  pin12_a3 => IC30_8,
  pin13_a2 => IC10_6,
  pin14_a1 => IC10_2,
  pin15_a0 => IC10_3
                          );




ALUdata(7) <= not nALUdata(7); -- IC43 4 / 3
ALUdata(6) <= not nALUdata(6); -- IC43 6 / 5
ALUdata(5) <= not nALUdata(5); -- IC43 10 / 11
ALUdata(4) <= not nALUdata(4); -- IC44 3 / 1 2
ALUdata(3) <= not nALUdata(3); -- IC44 8 / 9 10
ALUdata(2) <= not nALUdata(2); -- IC44 6 / 4 5
ALUdata(1) <= not nALUdata(1); -- IC43 12 / 13
ALUdata(0) <= not nALUdata(0); -- IC43 8 / 9

STACK_IC11: TTL74189 port map(
  pin1_a0 => StackAddress(0),
  pin2_ncs => IC58_1,
  pin3_nwe => IC29_11,
  pin4_d0 => ALUdata(7),
  pin5_nq0 => Bbus(7),
  pin6_d1 => ALUdata(6),
  pin7_nq1 => Bbus(6),
  pin9_nq2 => Bbus(5),
  pin10_d2 => ALUdata(5),
  pin11_nq3 => Bbus(4),
  pin12_d3 => ALUdata(4),
  pin13_a3 => StackAddress(3),
  pin14_a2 => StackAddress(2),
  pin15_a1 => StackAddress(1)
);


STACK_IC12: TTL74189 port map(
  pin1_a0 => StackAddress(0),
  pin2_ncs => IC58_1,
  pin3_nwe => IC29_11,
  pin4_d0 => ALUdata(3),
  pin5_nq0 => Bbus(3),
  pin6_d1 => ALUdata(2),
  pin7_nq1 => Bbus(2),
  pin9_nq2 => Bbus(1),
  pin10_d2 => ALUdata(1),
  pin11_nq3 => Bbus(0),
  pin12_d3 => ALUdata(0),
  pin13_a3 => StackAddress(3),
  pin14_a2 => StackAddress(2),
  pin15_a1 => StackAddress(1)
);


STACK_IC23: TTL74189 port map(
  pin1_a0 => StackAddress(0),
  pin2_ncs => IC58_2,
  pin3_nwe => IC29_11,
  pin4_d0 => ALUdata(7),
  pin5_nq0 => Bbus(7),
  pin6_d1 => ALUdata(6),
  pin7_nq1 => Bbus(6),
  pin9_nq2 => Bbus(5),
  pin10_d2 => ALUdata(5),
  pin11_nq3 => Bbus(4),
  pin12_d3 => ALUdata(4),
  pin13_a3 => StackAddress(3),
  pin14_a2 => StackAddress(2),
  pin15_a1 => StackAddress(1)
);
STACK_IC24: TTL74189 port map(
  pin1_a0 => StackAddress(0),
  pin2_ncs => IC58_2,
  pin3_nwe => IC29_11,
  pin4_d0 => ALUdata(3),
  pin5_nq0 => Bbus(3),
  pin6_d1 => ALUdata(2),
  pin7_nq1 => Bbus(2),
  pin9_nq2 => Bbus(1),
  pin10_d2 => ALUdata(1),
  pin11_nq3 => Bbus(0),
  pin12_d3 => ALUdata(0),
  pin13_a3 => StackAddress(3),
  pin14_a2 => StackAddress(2),
  pin15_a1 => StackAddress(1)
);
STACK_IC35: TTL74189 port map(
  pin1_a0 => StackAddress(0),
  pin2_ncs => IC58_3,
  pin3_nwe => IC29_11,
  pin4_d0 => ALUdata(7),
  pin5_nq0 => Bbus(7),
  pin6_d1 => ALUdata(6),
  pin7_nq1 => Bbus(6),
  pin9_nq2 => Bbus(5),
  pin10_d2 => ALUdata(5),
  pin11_nq3 => Bbus(4),
  pin12_d3 => ALUdata(4),
  pin13_a3 => StackAddress(3),
  pin14_a2 => StackAddress(2),
  pin15_a1 => StackAddress(1)
);
STACK_IC36: TTL74189 port map(
  pin1_a0 => StackAddress(0),
  pin2_ncs => IC58_3,
  pin3_nwe => IC29_11,
  pin4_d0 => ALUdata(3),
  pin5_nq0 => Bbus(3),
  pin6_d1 => ALUdata(2),
  pin7_nq1 => Bbus(2),
  pin9_nq2 => Bbus(1),
  pin10_d2 => ALUdata(1),
  pin11_nq3 => Bbus(0),
  pin12_d3 => ALUdata(0),
  pin13_a3 => StackAddress(3),
  pin14_a2 => StackAddress(2),
  pin15_a1 => StackAddress(1)
);


Arg(0) <= P2_23_nArg0;
Arg(1) <= P2_24_nArg1;
Arg(2) <= P2_25_nArg2;
Arg(3) <= P2_26_nArg3;



REGISTER_IC47: TTL74189 port map(
  pin1_a0 => IC27_6,
  pin2_ncs => IC33_11,
  pin3_nwe => IC64_12,
  pin4_d0 => ALUdata(7),
  pin5_nq0 => Bbus(7),
  pin6_d1 => ALUdata(6),
  pin7_nq1 => Bbus(6),
  pin9_nq2 => Bbus(5),
  pin10_d2 => ALUdata(5),
  pin11_nq3 => Bbus(4),
  pin12_d3 => ALUdata(4),
  pin13_a3 => IC39_6,
  pin14_a2 => Arg(2),
  pin15_a1 => Arg(1)
);
REGISTER_IC48: TTL74189 port map(
  pin1_a0 => IC27_6,
  pin2_ncs => IC33_11,
  pin3_nwe => IC64_12,
  pin4_d0 => ALUdata(3),
  pin5_nq0 => Bbus(3),
  pin6_d1 => ALUdata(2),
  pin7_nq1 => Bbus(2),
  pin9_nq2 => Bbus(1),
  pin10_d2 => ALUdata(1),
  pin11_nq3 => Bbus(0),
  pin12_d3 => ALUdata(0),
  pin13_a3 => IC39_6,
  pin14_a2 => Arg(2),
  pin15_a1 => Arg(1)
);
REGISTER_IC59: TTL74189 port map(
  pin1_a0 => IC27_6,
  pin2_ncs => IC33_3,
  pin3_nwe => IC64_12,
  pin4_d0 => ALUdata(7),
  pin5_nq0 => Bbus(7),
  pin6_d1 => ALUdata(6),
  pin7_nq1 => Bbus(6),
  pin9_nq2 => Bbus(5),
  pin10_d2 => ALUdata(5),
  pin11_nq3 => Bbus(4),
  pin12_d3 => ALUdata(4),
  pin13_a3 => IC39_6,
  pin14_a2 => Arg(2),
  pin15_a1 => Arg(1)
);
REGISTER_IC60: TTL74189 port map(
  pin1_a0 => IC27_6,
  pin2_ncs => IC33_3,
  pin3_nwe => IC64_12,
  pin4_d0 => ALUdata(3),
  pin5_nq0 => Bbus(3),
  pin6_d1 => ALUdata(2),
  pin7_nq1 => Bbus(2),
  pin9_nq2 => Bbus(1),
  pin10_d2 => ALUdata(1),
  pin11_nq3 => Bbus(0),
  pin12_d3 => ALUdata(0),
  pin13_a3 => IC39_6,
  pin14_a2 => Arg(2),
  pin15_a1 => Arg(1)
);
BSELECTOR_IC51: TTLDM8214 port map(
  pin1_n1g => IC34_11,
  pin2_b => IC34_6,
  pin3_1c3 => '1',
  pin4_1c2 => '1',
  pin5_1c1 => IC17_5,
  pin6_1c0 => IC(7),
  pin7_1y => Bbus(7),
  pin9_2y => Bbus(6),
  pin10_2c0 => IC(6),
  pin11_2c1 => P1_71_nCarry,
  pin12_2c2 => '1',
  pin13_2c3 => '1',
  pin14_a => IC34_3,
  pin15_n2g => IC34_11);


BSELECTOR_IC74: TTLDM8214 port map(
  pin1_n1g => IC34_11,
  pin2_b => IC34_6,
  pin3_1c3 => '1',
  pin4_1c2 => '1',
  pin5_1c1 => P1_72_nZero,
  pin6_1c0 => IC(5),
  pin7_1y => Bbus(5),
  pin9_2y => Bbus(4),
  pin10_2c0 => IC(4),
  pin11_2c1 => IC(12),
  pin12_2c2 => NewIC12,
  pin13_2c3 => '1',
  pin14_a => IC34_3,
  pin15_n2g => IC34_11);

BSELECTOR_IC63: TTLDM8214 port map(
  pin1_n1g => IC34_11,
  pin2_b => IC34_6,
  pin3_1c3 => P2_34_nInterruptAddress3,
  pin4_1c2 => IC39_6,
  pin5_1c1 => IC(11),
  pin6_1c0 => IC(3),
  pin7_1y => Bbus(3),
  pin9_2y => Bbus(2),
  pin10_2c0 => IC(2),
  pin11_2c1 => IC(10),
  pin12_2c2 => Arg(2),
  pin13_2c3 => P2_9_nInterruptAddress2,
  pin14_a => IC34_3,
  pin15_n2g => IC34_11
);
BSELECTOR_IC40: TTLDM8214 port map(
  pin1_n1g => IC34_11,
  pin2_b => IC34_6,
  pin3_1c3 => P2_6_nInterruptAddress1,
  pin4_1c2 => Arg(1),
  pin5_1c1 => IC(9),
  pin6_1c0 => IC(1),
  pin7_1y => Bbus(1),
  pin9_2y => Bbus(0),
  pin10_2c0 => IC(0),
  pin11_2c1 => IC(8),
  pin12_2c2 => IC27_6,
  pin13_2c3 => '1',
  pin14_a => IC34_3,
  pin15_n2g => IC34_11
);

IC17: TTL7474 port map (
  pin1_n1clr => Mie(6),
  pin2_1d => NALUdata(7),
  pin3_1clk => Mitd(3),
  pin4_n1pre => Mie(5),
  pin5_1q => IC17_5,
  pin6_n1q => IC17_6,
  pin8_n2q => IC17_8,
  pin9_2q => open,
  pin10_n2pre => Mie(15),
  pin11_2clk => Mie(19),
  pin12_2d => '0',
  pin13_n2clr => P1_18_nGeneralReset
); 


P2_8_RegBlock0 <= IC17_5;

P1_81_nWriteMEM <= IC17_8;


IC18: TTL7474 port map (
  pin1_n1clr => Mie(26),
  pin2_1d => '0',
  pin3_1clk => P2_10_nEnd,
  pin4_n1pre => Mie(25),
  pin5_1q => open,
  pin6_n1q => IC18_6,
  pin8_n2q => IC18_8,
  pin9_2q => open,
  pin10_n2pre => Mie(26),
  pin11_2clk => P2_10_nEnd,
  pin12_2d => '0',
  pin13_n2clr => Mie(25)
); 


IC16: TTL7474 port map (
  pin1_n1clr => IC28_6,
  pin2_1d => nALUdata(4),
  pin3_1clk => IC15_6,
  pin4_n1pre => IC15_8,
  pin5_1q => IC16_5,
  pin6_n1q => IC16_6,
  pin8_n2q => IC16_8,
  pin9_2q => IC16_9,
  pin10_n2pre => Mie(4),
  pin11_2clk => IC3_3,
  pin12_2d => '0',
  pin13_n2clr => P1_18_nGeneralReset
); 


MARM_IC25: TTL74198 port map (
  pin1_s0 => '1' ,
  pin2_srsi => '1',
  pin3_a => nALUdata(7),
  pin4_qA => MAR(15) ,
  pin5_b  => nALUdata(6),
  pin6_qB => MAR(14) ,
  pin7_c => nALUdata(5),
  pin8_qC => MAR(13) ,
  pin9_d => nALUdata(4),
  pin10_qD => MAR(12) ,
  pin11_clk => IC3_6,
  pin13_clear => IC27_8,
  pin14_qE => MAR(11) ,
  pin15_e => nALUdata(3),
  pin16_qF => MAR(10) ,
  pin17_f => nALUdata(2),
  pin18_qG => MAR(9) ,
  pin19_g => nALUdata(1),
  pin20_qH => MAR(8) ,
  pin21_h => nALUdata(0),
  pin22_slsi => '1',
  pin23_s1 => '1'
);


MARM_IC1: TTL74198 port map (
  pin1_s0 => '1',
  pin2_srsi => '1',
  pin3_a => nALUdata(7),
  pin4_qA => MAR(7) ,
  pin5_b  => nALUdata(6),
  pin6_qB => MAR(6) ,
  pin7_c => nALUdata(5),
  pin8_qC => MAR(5) ,
  pin9_d => nALUdata(4),
  pin10_qD => MAR(4) ,
  pin11_clk => IC27_3,
  pin13_clear => IC27_8,
  pin14_qE => MAR(3) ,
  pin15_e => nALUdata(3),
  pin16_qF => MAR(2) ,
  pin17_f => nALUdata(2),
  pin18_qG => MAR(1) ,
  pin19_g => nALUdata(1),
  pin20_qH => MAR(0) ,
  pin21_h => nALUdata(0),
  pin22_slsi => '1',
  pin23_s1 => '1'
);

IC_IC26: TTL74193 port map (
  pin1_b => nALUdata(1),
  pin2_qB => IC(9), 
  pin3_qA => IC(8),
  pin4_down => IncrICM,
  pin5_up => DecrICM,
  pin6_qC => IC(10),
  pin7_qD => IC(11),
  pin9_d => nALUdata(3),
  pin10_c => nALUdata(2),
  pin11_nLoad => LoadICM,
  pin12_nCO => open,
  pin13_nBO => IC26_13,
  pin14_clr => P2_33_nMie3,
  pin15_a => nALUdata(0)
);



IC_IC14: TTL74193 port map (
  pin1_b => nALUdata(5),
  pin2_qB => IC(5), 
  pin3_qA => IC(4),
  pin4_down => IC2_14,
  pin5_up => IC2_12,
  pin6_qC => IC(6),
  pin7_qD => IC(7),
  pin9_d => nALUdata(7),
  pin10_c => nALUdata(6),
  pin11_nLoad => LoadICL,
  pin12_nCO => open,
  pin13_nBO => nICLcarry,
  pin14_clr => '0',
  pin15_a => nALUdata(4)

);


IC_IC2: TTL74193 port map (
  pin1_b => nALUdata(1),
  pin2_qB => IC(1), 
  pin3_qA => IC(0),
  pin4_down => IncrICL,
  pin5_up => '1',
  pin6_qC => IC(2),
  pin7_qD => IC(3),
  pin9_d => nALUdata(3),
  pin10_c => nALUdata(2),
  pin11_nLoad => LoadICL,
  pin12_nCO => open,
  pin13_nBO => IC26_13,
  pin14_clr => '0',
  pin15_a => nALUdata(0)

);

ICMcarry <= IC26_13;


IC65_6 <= P2_39_MEMAfromdisplay nand IC65_11;
IC65_11 <= IC65_6 nand not P2_39_MEMAfromdisplay;

MEMA_SELECTOR_IC73: TTLDM8123 port map(
  pin1_select => P2_29_SelectICMEMA,
  pin2_1a => MAR(15),
  pin3_1b => P2_29_SelectICMEMA,
  pin4_1y => nMEMA(15),
  pin5_2a => MAR(14),
  pin6_2b => P2_29_SelectICMEMA,
  pin7_2y => nMEMA(14),
  pin9_3y => nMEMA(13),
  pin10_3b => P2_29_SelectICMEMA,
  pin11_3a => MAR(13),
  pin12_4y => nMEMA(12), 
  pin13_4b => IC(12),
  pin14_4a => MAR(12),
  pin15_strobe => IC65_6
  );



MEMA_SELECTOR_IC61: TTLDM8123 port map(
  pin1_select => P2_29_SelectICMEMA,
  pin2_1a => MAR(11),
  pin3_1b => IC(11),
  pin4_1y => nMEMA(11),
  pin5_2a => MAR(10),
  pin6_2b => IC(10),
  pin7_2y => nMEMA(10),
  pin9_3y => nMEMA(9),
  pin10_3b => IC(9),
  pin11_3a => MAR(9),
  pin12_4y => nMEMA(8), 
  pin13_4b => IC(8),
  pin14_4a => MAR(8),
  pin15_strobe => IC65_6

);
MEMA_SELECTOR_IC49: TTLDM8123 port map(
  pin1_select => P2_29_SelectICMEMA,
  pin2_1a => MAR(7),
  pin3_1b => IC(7),
  pin4_1y => nMEMA(7),
  pin5_2a => MAR(6),
  pin6_2b => IC(6),
  pin7_2y => nMEMA(6),
  pin9_3y => nMEMA(5),
  pin10_3b => IC(5),
  pin11_3a => MAR(5),
  pin12_4y => nMEMA(4), 
  pin13_4b => IC(4),
  pin14_4a => MAR(4),
  pin15_strobe => IC65_6

);
MEMA_SELECTOR_IC37: TTLDM8123 port map(
  pin1_select => P2_29_SelectICMEMA,
  pin2_1a => MAR(3),
  pin3_1b => IC(3),
  pin4_1y => nMEMA(3),
  pin5_2a => MAR(2),
  pin6_2b => IC(2),
  pin7_2y => nMEMA(2),
  pin9_3y => nMEMA(1),
  pin10_3b => IC(1),
  pin11_3a => MAR(1),
  pin12_4y => nMEMA(0), 
  pin13_4b => IC(0),
  pin14_4a => MAR(0),
  pin15_strobe => IC65_6
);


P2_89_nMEMA0 <= nMEMA(0);
P2_88_nMEMA1 <= nMEMA(1);
P2_87_nMEMA2 <= nMEMA(2);
P2_86_nMEMA3 <= nMEMA(3);
P2_85_nMEMA4 <= nMEMA(4);
P2_84_nMEMA5 <= nMEMA(5);
P2_83_nMEMA6 <= nMEMA(6);
P2_82_nMEMA7 <= nMEMA(7);
P2_81_nMEMA8 <= nMEMA(8);
P2_80_nMEMA9 <= nMEMA(9);
P2_79_nMEMA10 <= nMEMA(10);
P2_78_nMEMA11 <= nMEMA(11);
P2_77_nMEMA12 <= nMEMA(12);
P2_76_nMEMA13 <= nMEMA(13);
P2_75_nMEMA14 <= nMEMA(14);
P2_74_nMEMA15 <= nMEMA(15);



MIE_DECODER_IC8: TTL74155 port map(
  pin1_1c => '1', 
  pin2_n1g => '0',
  pin3_b => P2_22_Mie,
  pin4_1y3 => IC8_4,
  pin5_1y2 => IC8_5,
  pin6_1y1 => open,
  pin7_1y0 => open,
  pin9_2y0 => open,
  pin10_2y1 => open,
  pin11_2y2 => IC8_11,
  pin12_2y3 => open,
  pin13_a => Mi(5),
  pin14_n2g => Mi(2),
  pin15_n2c => Mi(1)
);




MIE_DECODER_IC41: TTL74157 port map(
  pin1_select => Mi(3), 
  pin2_1a => Mi(0),
  pin3_1b => '0',
  pin4_1y => IC41_4,
  pin5_2a => '1',
  pin6_2b => '0',
  pin7_2y => P2_38_IRMC1,
  pin9_3y => P1_39_IRMC0,
  pin10_3b => P2_16_nMi0,
  pin11_3a => Mi(0),
  pin12_4y => open,
  pin13_4b => '0',
  pin14_4a => '0',
  pin15_strobe => IC8_11
);



MIE_DECODER_IC6: TTL74154 port map(
  pin1_ny0 => open,
  pin2_ny1 => Mie(1),
  pin3_ny2 => Mie(2),
  pin4_ny3 => Mie(3),
  pin5_ny4 => Mie(4),
  pin6_ny5 => Mie(5),
  pin7_ny6 => Mie(6),
  pin8_ny7 => Mie(7),
  pin9_ny8 => Mie(8),
  pin10_ny9 => Mie(9),
  pin11_ny10 => Mie(10),
  pin13_ny11 => Mie(11),
  pin14_ny12 => Mie(12),
  pin15_ny13 => Mie(13),
  pin16_ny14 => Mie(14),
  pin17_ny15 => Mie(15),
  pin18_ne1 => nCP0,
  pin19_ne2 => IC6_5,
  pin20_a3 => Mi(3),
  pin21_a2 => Mi(2),
  pin22_a1 => Mi(1),
  pin23_a0 => Mi(0)
);


P1_6_nMieReset <= Mie(9);
P2_31_nMieRespri <= Mie(18); 
P2_65_MieResZero <= Mie(27);
P2_64_MieResCarry <= Mie(28);


MIE_DECODER_IC4: TTL74154 port map(
  pin1_ny0 => open,
  pin2_ny1 => Mie(16),
  pin3_ny2 => Mie(17),
  pin4_ny3 => Mie(18),
  pin5_ny4 => Mie(19),
  pin6_ny5 => Mie(20),
  pin7_ny6 => Mie(21),
  pin8_ny7 => Mie(22),
  pin9_ny8 => Mie(23),
  pin10_ny9 => Mie(24),
  pin11_ny10 => Mie(25),
  pin13_ny11 => Mie(26),
  pin14_ny12 => Mie(27),
  pin15_ny13 => Mie(28),
  pin16_ny14 => Mie(29),
  pin17_ny15 => Mie(30),
  pin18_ne1 => nCP0,
  pin19_ne2 => IC6_4,
  pin20_a3 => Mi(3),
  pin21_a2 => Mi(2),
  pin22_a1 => Mi(1),
  pin23_a0 => Mi(0)
);




MITD_DECODER_IC3: TTL7442 port map (
  pin1_ny0 => Mitd(0),
  pin2_ny1 => Mitd(1),
  pin3_ny2 => Mitd(2),
  pin4_ny3 => Mitd(3),
  pin5_ny4 => Mitd(4),
  pin6_ny5 => Mitd(5),
  pin7_ny6 => open,
  pin9_ny7 => open,
  pin10_ny8 => open,
  pin11_ny9 => open,
  pin12_a3 => P2_15_nCPmit,
  pin13_a2 => Mi(6),
  pin14_a1 => Mi(5),
  pin15_a0 => Mi(3)
);

P1_36_nMitd5 <= Mitd(5);


IC62: TTL74175 port map (
  pin1_nclr => '1', 
  pin2_1q => open,
  pin3_n1q => open,
  pin4_1d => '0',
  pin5_2d => Aleg(7),
  pin6_n2q => IC62_6,
  pin7_2q => IC62_7,
  pin9_clk => P2_30_CP2,
  pin10_3q => IC62_10,
  pin11_n3q => IC62_11,
  pin12_3d => ALUcarry,
  pin13_4d => '0',
  pin14_n4q => open,
  pin15_4q => open
  );


AR_IC55: TTL74198 port map (
  pin1_s0 => P2_72_ARS0 ,
  pin2_srsi => IC38_8,
  pin3_a => nALUdata(7),
  pin4_qA => nARdata(7) ,
  pin5_b  => nALUdata(6),
  pin6_qB => nARdata(6) ,
  pin7_c => nALUdata(5),
  pin8_qC => nARdata(5) ,
  pin9_d => nALUdata(4),
  pin10_qD => nARdata(4) ,
  pin11_clk => nCP0,
  pin13_clear => IC27_8,
  pin14_qE => nARdata(3) ,
  pin15_e => nALUdata(3),
  pin16_qF => nARdata(2) ,
  pin17_f => nALUdata(2),
  pin18_qG => nARdata(1) ,
  pin19_g => nALUdata(1),
  pin20_qH => nARdata(0) ,
  pin21_h => nALUdata(0),
  pin22_slsi => IC38_8,
  pin23_s1 => P2_73_ARS1
);

P1_70_nARdata7 <= nARdata(7);

-- IC9 7400 QUAD NAND
IC9_3 <= IC21_6 nand Mie(29);
IC9_6 <= P2_10_nEnd nand IC21_12; 
IC9_8 <=  IC9_11 nand Mie(14);
IC9_11 <= IC9_8 nand P2_10_nEnd; 

MEMToBMia(1) <= IC9_11;
MEMToBMia(2) <= IC9_8;

P1_27_Mark <= IC9_3;
MarkCarry <= IC9_3;


         
-- IC15 7408 QUAD AND
IC15_3 <= IC29_3 and Mie(2);
IC15_6 <= Mitd(2) and Mitd(3);
IC15_8 <= Mie(3) and IC27_8; 
IC15_11 <= Mitd(1) and IC29_8;

IncrICL <= IC15_3;
P2_33_nMie3 <= IC15_8;


-- IC19 7400 QUAD NAND
IC19_3 <= IC32_8 nand Mie(16);
-- IC19_6 
IC19_8 <= Mie(20) nand IC19_11;
IC19_11 <= P2_10_nEnd nand IC19_8;

-- IC20 7400 QUAD NAND
IC20_3 <= IC20_6 nand Mie(21);
IC20_6 <= IC20_3 nand P2_10_nEnd; 
IC20_8 <= MEMToBMia(2) nand P1_35_Mia;
IC20_11 <= IC21_8 nand Mie(22);

-- IC21 7410 TRIPLE 3-INPUT NAND

IC21_8 <= not (Mie(23) and P2_10_nEnd and IC20_11);
IC21_6 <= not (Mie(1) and Mie(30) and IC9_3);
IC21_12 <= not (IC9_6 and Mie(24) and Mie(24));


-- IC27 74S00 QUAD 2-INPUT NAND
IC27_3 <= Mitd(4) nand IC15_11;
IC27_6 <= IC27_11 nand IC18_6;
IC27_8 <= '0' nand '0';
IC27_11 <= IC18_8 nand Arg(0);


-- IC28 7451 AND - NOR GATES
IC28_6 <= (IC16_5 and IC16_9 ) nor (IC16_6 and IC16_8);
IC28_8 <= (P2_30_CP2 and P1_35_Mia )  nor (CP0 and P1_35_Mia);
NewIC12 <= IC28_6;


-- IC29 7432 QUAD 2-INPUT OR
IC29_3 <= P2_32_interrupt or Mie(1);
IC29_6 <= ICMcarry or IC30_11;
IC29_8 <= nCP0 or AddToIC;
IC29_11 <= IC30_3 or IC30_3;

-- IC30 7408 QUAD 2-INPUT AND

IC30_3 <= IC64_8 and Mitd(0);
IC30_6 <= IC30_11 and Mie(13);
IC30_8 <= IC45_9 and IC30_3;
IC30_11 <= IC39_11 and nICLcarry;


-- IC31 7430 8-INPUT NAND
P1_38_MEMAChanged <= not (P1_37_nMEMOccupation and IC15_11 and Mie(13) and IC15_6 and Mitd(4) and Mitd(5) and IncrICL and Mie(12)); 

-- IC32 7410 TRIPLE 3-INPUT NAND
IC32_6 <= not (MEMToBMia(1) and P1_35_Mia and AddToIC);
IC32_8 <= not (P1_18_nGeneralReset and Mie(17)  and IC19_3 ); 
IC32_12 <= not (MEMToBMia(1) and IC45_6 and IC45_5);


-- IC33 7400 QUAD 2-INPUT NAND

IC33_3 <= IC17_6 nand IC33_6;
IC33_6 <= IC32_6 nand IC45_7;
IC33_8 <= IC41_4 nand IC41_4;
IC33_11 <= IC33_6 nand IC17_5;


-- IC34 7408 QUAD 2-INPUT AND
IC34_3 <= AddToIC and Mi(0);
IC34_6 <= AddToIC and Mi(1);
IC34_8 <= Mie(12) and P1_18_nGeneralReset;
IC34_11 <= AddToIC and IC44_11;
P1_29_nSetICMEMAFF <= IC34_8;



-- IC38 7408 HEX INVERTER
IC38_2 <= not IC19_8;
IC38_4 <= not IC21_8;
IC38_6 <= not IC20_11;
IC38_8 <= not IC76_8;
IC38_10 <= not IC28_8;
IC38_12 <= not IC15_8;
P2_37_Mie3 <= IC38_12;
P2_28_IODataFromMPU <= IC38_4;
P2_27_nIODataToMPU <= IC38_2;
P2_67_nOut <= IC38_6;

-- IC39 7432 QUAD 2-INPUT OR

IC39_3  <= IC29_8 or IC50_6;
IC39_6 <= IC21_12 or Arg(3); 
IC39_8 <= IC15_11 or IC15_11;
IC39_11 <= IC29_8 or IC50_8;
LoadICL <= IC39_8;
DecrICM <= IC39_3;

-- IC43 7404 HEX INVERTER
IC43_2 <= not IC32_12;
-- IC43_4 <=
-- IC43_6 <=
-- IC43_8 <=
-- IC43_10 <=
-- IC43_12 <=

-- IC44 7400 QUAD 2-INPUT NAND
-- IC44_3 <=
-- IC44_6 <=
-- IC44_8 <=
IC44_11 <= Mi(2) nand Mi(7);



-- IC46 74S20 DUAL 4-INPUT NAND
IC46_8 <= not (Mie(7) and IC20_8 and IC45_6 and AddToIC);
IC46_6 <= not (P1_35_Mia and P2_16_nMi0 and CONROM(7) and CONROM(7));

P1_68_ReadMEMO <= IC46_8;

-- IC50 7400 QUAD 2-INPUT NAND
IC50_3 <= P2_39_MEMAfromdisplay nand P2_39_MEMAfromdisplay;
IC50_6 <= IC62_6 nand IC62_11;
IC50_8 <= IC62_7 nand IC62_10;
IC50_11 <= ALUCarry nand ALUCarry;
-- IC64 74H10 TRIPLE 3-INPUT NAND
IC64_8 <= not (CONROM(0) and P1_35_Mia and IC38_10 );
IC64_6 <= not (Mie(16) and IC16_8 and IC32_8);

P2_35_nDisableInterrupt <= IC64_6;

-- IC65 7400 QUAD 2-INPUT NAND
IC65_3 <= P1_35_Mia nand CONROM(7);
IC65_6 <= P2_39_MEMAfromdisplay nand IC65_11;
IC65_8 <= Mi(6) nand Mi(6);
IC65_11 <= IC50_3 nand IC65_6;


AddToIC <= IC65_3; 
-- IC70 7437 QUAD 2-INPUT NAND
IC70_3 <= ARdata(0) nand ARdata(0);
IC70_6 <= ARdata(1) nand ARdata(1);
IC70_8 <= ARdata(2) nand ARdata(2);
IC70_11 <= ARdata(3) nand ARdata(3); 

-- IC76 7451 AND NOR GATE
IC76_8 <=  (P1_28_ModCarry and P1_28_ModCarry ) nor (MarkCarry and P1_71_nCarry);
-- IC77 7400 QUAD 2-INPUT NAND GATE
IC77_3 <= Mi(6) nand AeqB; 
IC77_6 <= IC77_3 nand IC77_11;
IC77_8 <= CONROM(6) nand IC65_8;
IC77_11 <= IC65_8 nand nALUdata(5);

P2_70_DZeroFF <= IC77_6;

-- IC82 7437 QUAD 2-INPUT NAND BUFFER
IC82_3 <= nARdata(4) nand nARdata(4);
IC82_6 <= nARdata(5) nand nARdata(5);
IC82_8 <= nARdata(6) nand nARdata(6);
IC82_11 <= nARdata(7) nand nARdata(7);


P1_80_ARdata0 <= ARdata(0);
P1_79_ARdata1 <= ARdata(1);
P1_78_Ardata2 <= ARdata(2);
P1_77_ARdata3 <= ARdata(3);
P1_76_ARdata4 <= ARdata(4);
P1_75_ARdata5 <= ARdata(5);
P1_74_ARdata6 <= ARdata(6);
P1_73_ARdata7 <= ARdata(7);


-- Wire OR A=B outputs from 74181 ALU since those are OC

AeqB <= IC79_14 and IC67_14;

P2_71_ALUAeqB <= AeqB;

CONROM(15) <= P1_34_CONROM15;
CONROM(14) <= P1_33_CONROM14;
CONROM(13) <= P1_32_CONROM13;
CONROM(12) <= P1_31_CONROM12;
CONROM(11) <= P1_30_CONROM11;
CONROM(10) <= '0';
CONROM(9) <= '0';
CONROM(8) <= '0';
CONROM(7) <= P1_26_CONROM7;
CONROM(6) <= P1_25_CONROM6;    
CONROM(5) <= P1_24_CONROM5;
CONROM(4) <= '0';
CONROM(3) <= '0';
CONROM(2) <= '0';
CONROM(1) <= P1_20_CONROM1;
CONROM(0) <= P1_19_CONROM0;
    


end logic;
