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
    
    P3_72_ARS0 : in std_logic;
    P3_73_ARS1 : in std_logic;
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
    P1_35_Mia : in std_logic;
    P2_11_CP0 : in std_logic;
    P1_18_nGeneralReset : in std_logic;
    P1_71_nZero : in std_logic;
    P2_6_nInterruptAddress1 : in std_logic;
    P2_9_nInterruptAddress2 : in std_logic;
    P2_34_nInterruptAddress3 : in std_logic;

	P1_7_IOData0 : out std_logic;
	P1_8_IOData1 : out std_logic;
	P1_9_IOData2 : out std_logic;
	P1_10_IOData3 : out std_logic;
	P1_11_IOData4 : out std_logic;
	P1_12_IOData5 : out std_logic;
	P1_13_IOData6 : out std_logic;
	P1_14_IOData7 : out std_logic;
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


signal IC67_16, ALUCarry, EnableIOdata : std_logic; 
signal nMEMO, nARdata, Aleg, Bbus, ALUdata, IOData : std_logic_vector (7 downto 0);
signal CONROM : std_logic_vector (15 downto 0);


begin 


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


ALU_IC79: TTL74181 port map(
  pin1_b0 => Bbus(4),
  pin2_a0 => Aleg(4),
  pin3_s3 => CONROM(15),
  pin4_s2 => CONROM(14),
  pin5_s1 => CONROM(13),
  pin6_s0 => CONROM(12),
  pin7_cn => IC67_16,
  pin8_m => CONROM(11),
  pin9_f0 => ALUdata(4),
  pin10_f1 => ALUdata(5),
  pin11_f2 => ALUdata(6),  
  pin13_f3 => ALUdata(7),
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
  pin9_f0 => ALUdata(0),
  pin10_f1 => ALUdata(1),
  pin11_f2 => ALUdata(2),  
  pin13_f3 => ALUdata(3),
  pin14_aeqb => open, -- TODO
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
  
BSELECTOR_IC84: TTLDM8123 port map(
  pin1_select => '1', -- TODO 
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
  pin15_strobe => '1'); -- TODO
  
BSELECTOR_IC72: TTLDM8123 port map(
  pin1_select => '1', -- TODO 
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
  pin15_strobe => '1'); -- TODO   


PARITY_IC66: TTL74180 port map(
  pin1_g => nARdata(6),
  pin2_h => nARdata(7),
  pin3_even => '1',
  pin4_odd  => '0',
  pin5_sumeven => P2_69_AREvenParity,
  pin6_sumodd => P2_68_AROddPraity,
  pin8_a => nARdata(0), 	
  pin9_b => nARdata(1),
  pin10_c => nARdata(2),
  pin11_d => nARdata(3),
  pin12_e  => nARdata(4), 
  pin13_f => nARdata(5));

IC78: TTL74151 port map (
  pin1_d3 => '1', -- TODO
  pin2_d2 => P1_71_nCarry, 
  pin3_d1 => nARdata(0),
  pin4_d0 => nARdata(7),
  pin5_y => open,
  pin6_w => P2_66_DCarryFF,
  pin7_ng => '0',
  pin9_c => '0', -- TODO
  pin10_b => '0', -- TODO
  pin11_a => '0', -- TODO
  pin12_d7 => '1',
  pin13_d6 => P1_16_IOData81,
  pin14_d5 => '1',
  pin15_d4 => ALUdata(6));
end logic;