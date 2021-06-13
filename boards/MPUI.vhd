-- The Alfaskop 3500 MPU I board in  VHDL
library IEEE;
use IEEE.std_logic_1164.all;


entity MPUI is
port(

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

    
end MPUI;



architecture logic of MPUI is

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

component TTL7483 is
port(
  pin1_a4  : in std_logic;
  pin2_s3   : out std_logic;
  pin3_a3: in std_logic;  
  pin4_b3: in std_logic;
  pin6_s2   : out std_logic;
  pin7_b2 : in std_logic;
  pin8_a2  : in std_logic;
  pin9_s1   : out std_logic;
  pin10_a1  : in std_logic;
  pin11_b1 : in std_logic;  
  pin13_c0 : in std_logic;
  pin14_c4   : out std_logic;
  pin15_s4   : out std_logic;
  pin16_b4: in std_logic);
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

component TTL74150 is
port(
  pin1_e7  : in std_logic;
  pin2_e6  : in std_logic;
  pin3_e5  : in std_logic;
  pin4_e4  : in std_logic;
  pin5_e3  : in std_logic;
  pin6_e2  : in std_logic;
  pin7_e1  : in std_logic;
  pin8_e0  : in std_logic;
  pin9_ng  : in std_logic;
  pin10_w  : out std_logic;
  pin11_d  : in std_logic;  
  pin13_c  : in std_logic;
  pin14_b  : in std_logic;
  pin15_a  : in std_logic;
  pin16_e15: in std_logic;
  pin17_e14: in std_logic;  
  pin18_e13: in std_logic;
  pin19_e12: in std_logic;
  pin20_e11: in std_logic;
  pin21_e10: in std_logic;
  pin22_e9 : in std_logic;
  pin23_e8 : in std_logic);
end component;


component TTL74278 is
port(
  pin1_strb  : in std_logic;
  pin2_d3  : in std_logic;
  pin3_d4  : in std_logic;
  pin4_p0  : in std_logic;
  pin5_p1  : out std_logic;
  pin6_y4  : out std_logic;
  pin8_y3  : out std_logic;
  pin9_y2  : out std_logic;
  pin10_y1  : out std_logic;
  pin12_d1  : in std_logic;  
  pin13_d2  : in std_logic);
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


component TTL7493 is
port(
  pin1_ncp1 : in std_logic;
  pin2_mr1  : in std_logic;
  pin3_mr2  : in std_logic;
  pin8_q2  : out std_logic;
  pin9_q1  : out std_logic;
  pin11_q3  : out std_logic;
  pin12_q0  : out std_logic;
  pin14_ncp0 : in std_logic);  
end component;

component TTL7490 is
port(
  pin1_b  : in std_logic;
  pin2_r01  : in std_logic;
  pin3_r02  : in std_logic;
  pin6_r91  : in std_logic;
  pin7_r92  : in std_logic;
  pin8_qc  : out std_logic;
  pin9_qb  : out std_logic;
  pin11_qd  : out std_logic;
  pin12_qa  : out std_logic;  
  pin14_a  : in std_logic);
end component;



component TTL74148 is
port(
  pin1_i4  : in std_logic;
  pin2_i5  : in std_logic;
  pin3_i6  : in std_logic;
  pin4_i7  : in std_logic;
  pin5_ei  : in std_logic;
  pin6_a2  : out std_logic;
  pin7_a1  : out std_logic;
  pin9_a0  : out std_logic;
  pin10_i0  : in std_logic;
  pin11_i1  : in std_logic;  
  pin12_i2  : in std_logic;
  pin13_i3  : in std_logic;
  pin14_gs  : out std_logic;
  pin15_eo  : out std_logic);
end component;


component TTL74174 is
port(
  pin1_nclr  : in std_logic;
  pin2_1q  : out std_logic;
  pin3_1d  : in std_logic;
  pin4_2d  : in std_logic;
  pin5_2q  : out std_logic;
  pin6_3d  : in std_logic;
  pin7_3q  : out std_logic;
  pin9_clk  : in std_logic;
  pin10_4q  : out std_logic;
  pin11_4d  : in std_logic;
  pin12_5q  : out std_logic;  
  pin13_5d  : in std_logic;
  pin14_6d  : in std_logic;
  pin15_6q  : out std_logic);
end component;


component TTL74164 is
port(
  pin1_a  : in std_logic;
  pin2_b  : in std_logic;
  pin3_qa  : out std_logic;
  pin4_qb  : out std_logic;
  pin5_qc  : out std_logic;
  pin6_qd  : out std_logic;
  pin8_clk  : in std_logic;
  pin9_nclr  : in std_logic;
  pin10_qe  : out std_logic;
  pin11_qf  : out std_logic;
  pin12_qg  : out std_logic;  
  pin13_qh  : out std_logic);
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

component IC27_PROM256x4 is
port(
  pin1_a6  : in std_logic;
  pin2_a5  : in std_logic;
  pin3_a4  : in std_logic;
  pin4_a3  : in std_logic;
  pin5_a0  : in std_logic;
  pin6_a1  : in std_logic;
  pin7_a2  : in std_logic;
  pin9_d3  : out std_logic;
  pin10_d2  : out std_logic;
  pin11_d1  : out std_logic;  
  pin12_d0  : out std_logic;
  pin13_g1  : in std_logic;
  pin14_g2  : in std_logic;
  pin15_a7  : in std_logic);
end component;


component IC28_PROM256x4 is
port(
  pin1_a6  : in std_logic;
  pin2_a5  : in std_logic;
  pin3_a4  : in std_logic;
  pin4_a3  : in std_logic;
  pin5_a0  : in std_logic;
  pin6_a1  : in std_logic;
  pin7_a2  : in std_logic;
  pin9_d3  : out std_logic;
  pin10_d2  : out std_logic;
  pin11_d1  : out std_logic;  
  pin12_d0  : out std_logic;
  pin13_g1  : in std_logic;
  pin14_g2  : in std_logic;
  pin15_a7  : in std_logic);
end component;


component IC18_32x8_PROM is
port(
  pin1_d0  : out std_logic;
  pin2_d1  : out std_logic;
  pin3_d2  : out std_logic;
  pin4_d3  : out std_logic;
  pin5_d4  : out std_logic;
  pin6_d5  : out std_logic;
  pin7_d6  : out std_logic;
  pin9_d7  : out std_logic;
  pin10_a0  : in std_logic;
  pin11_a1  : in std_logic;
  pin12_a2  : in std_logic;
  pin13_a3  : in std_logic;
  pin14_a4  : in std_logic;
  pin15_g  : in std_logic);
end component;

component IC19_32x8_PROM is
port(
  pin1_d0  : out std_logic;
  pin2_d1  : out std_logic;
  pin3_d2  : out std_logic;
  pin4_d3  : out std_logic;
  pin5_d4  : out std_logic;
  pin6_d5  : out std_logic;
  pin7_d6  : out std_logic;
  pin9_d7  : out std_logic;
  pin10_a0  : in std_logic;
  pin11_a1  : in std_logic;
  pin12_a2  : in std_logic;
  pin13_a3  : in std_logic;
  pin14_a4  : in std_logic;
  pin15_g  : in std_logic);
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



signal MEMO : std_logic_vector (7 downto 0);
signal nArg : std_logic_vector (3 downto 0);
signal OP : std_logic_vector (3 downto 0);
signal CP0, nCP0,IRMCO,IRMCI : std_logic;
signal CONROMAddress : std_logic_vector (3 downto 0);
signal CONROM : std_logic_vector(15 downto 0);
signal Mi : std_logic_vector (7 downto 0);
signal MijCONROM, SelectOP, MijStartDis,MijStart : std_logic;
signal Mij,Mis,Mir : std_logic;
signal AdderInc : std_logic_vector (3 downto 0);
signal Mic : std_logic_vector (7 downto 0);
signal AdderOut : std_logic_vector (7 downto 0);
signal MicROM : std_logic_vector (7 downto 0);
signal MicWord : std_logic_vector (7 downto 0);
signal MicIn : std_logic_vector (7 downto 0);
signal lowAdderCarry, CF, Mark : std_logic;
signal clkToggle : std_logic;
signal IC59_6 : std_logic;
signal IC59_9 : std_logic;
signal memoryTimingStartCount, memoryTimingCarry,memoryTimingLoad : std_logic;
signal IntRegOut: std_logic_vector (7 downto 0);
signal nIntRegOut : std_logic_vector (7 downto 0);

signal GRIntern: std_logic;

signal InterruptClear : std_logic_vector (7 downto 0);
signal InterruptRequest : std_logic;
signal nInterruptAddress : std_logic_vector (3 downto 1);
signal Interrupt, nInterrupt : std_logic;

signal IC50_5, IC50_6,IC50_8, IC50_9, IC76_11, IC53_6 , IC3_6 :std_logic;
signal IC3_8, CPend, IC63_6,nZero,nCarry : std_logic;
signal nARCParity,Clk6144MHz, CP1, nCP1,CP2, CK_10T, CK_4T, CK_80T, CK_76kHz, CK_1280T : std_logic;
signal IC35_12, CK_1200Hz, IC35_11, CK_300Hz, CK37Hz, CK_4_8Hz, CK_9_2Hz, CK_2_3Hz, CK_1_2Hz, CK_0_6Hz : std_logic;
signal IC48_9, IC77_12, IC77_4, IC79_9, IC48_8, Mia, IC71_14, IC71_6, IC71_3 : std_logic;
signal IC72_12, IC47_13 : std_logic;
signal IC61_1, IC61_4, IC38_11 : std_logic;
signal IC57_6, IC25_3, IC1_11 : std_logic;
signal IC82_3, IC82_6, IC29_13, IC76_6 : std_logic;
signal IC2_10, IC2_7, IC2_5, IC48_5, IC2_15, IC2_12, IC26_9, IC2_2 : std_logic;

begin 


P1_19_CONROM0 <= CONROM(0);
P1_20_CONROM1 <= CONROM(1);
P1_21_CONROM2 <= CONROM(2);
P1_22_CONROM3 <= CONROM(3);
P1_23_CONROM4 <= CONROM(4);
P1_24_CONROM5 <= CONROM(5);
P1_25_CONROM6 <= CONROM(6);
P1_26_CONROM7 <= CONROM(7);
P1_30_CONROMB <= CONROM(11);
P1_31_CONROMC <= CONROM(12);
P1_32_CONROMD <= CONROM(13);
P1_33_CONROME <= CONROM(14);
P1_34_CONROMF <= CONROM(15);


  
P2_28_nMijStart <= MijStart;
-- IC53 B
IC53_6 <= mi(3) and mi(2) and mi(1);   
-- IC76 D
IC76_11 <= not IC53_6; 
-- IC53 C
SelectOP <= IC53_6 and Mi(0); 
-- IC65 B
MijCONROM <= IC76_11 nand Mij;
-- IC53 C
MijStartDis <= Mij and SelectOP and Interrupt; 
-- IC65 C
MijStart <= not (SelectOP and nInterrupt and Mij);  
-- IC3 A
IC3_6 <= Mi(4) nand ( Mi(5) or Mi(6) or Mi(7) ); 
-- IC3 B
IC3_8 <= nReset nand ( nCP0 or IC3_6 ); 
-- IC52 D
CPend <= not IC3_8; 
P2_10_nEnd <= IC3_6;
IRMCO <= P2_38_IRMCI;
IRMCI <= P1_39_IRMCO;

 IR_IC42: TTL74198 port map(
 	pin1_s0 =>IRMCO,
 	pin2_srsi => nArg(0),
    pin3_a => MEMO(7),
    pin4_qA => OP(3),
    pin5_b => MEMO(3),
    pin6_qB => nArg(3),
    pin7_c => MEMO(6),
    pin8_qC => OP(2),
    pin9_d => MEMO(2),
    pin10_qD => nArg(2),
    pin11_clk => nCP0,
    pin13_clear => nReset,
    pin14_qE => OP(1),
    pin15_e => MEMO(5),
    pin16_qF => nArg(1),
    pin17_f => MEMO(1),
    pin18_qG => OP(0),
    pin19_g => MEMO(4),
    pin20_qH => nArg(0),
    pin21_h => MEMO(0),
    pin22_slsi => OP(3),
    pin23_s1 => IRMCI);

MEMO(0) <= P1_59_nMEMO0;
MEMO(1) <= P1_60_nMEMO1;
MEMO(2) <= P1_61_nMEMO2;
MEMO(3) <= P1_62_nMEMO3;
MEMO(4) <= P1_63_nMEMO4;
MEMO(5) <= P1_64_nMEMO5;
MEMO(6) <= P1_65_nMEMO6;
MEMO(7) <= P1_66_nMEMO7;
P2_23_nArg0 <= nArg(0);
P2_24_nArg1 <= nArg(1);
P2_25_nArg2 <= nArg(2);
P2_26_nArg3 <= nArg(3);

P2_62_OP3 <= OP(3);
P2_63_OP2 <= OP(2);


 SEL1_IC30: TTL74157 port map(
 	pin1_select => SelectOP,
 	pin2_1a =>  not Mi(3),
 	pin3_1b => OP(3),
    pin4_1y => CONROMAddress(3),
    pin5_2a =>  not Mi(2),
    pin6_2b => OP(2),
    pin7_2y => CONROMAddress(2),
    pin9_3y => CONROMAddress(1),
    pin10_3b => OP(1),
    pin11_3a =>  not Mi(1),
    pin12_4y => CONROMAddress(0),
    pin13_4b => OP(0),
    pin14_4a =>  not Mi(0),
    pin15_strobe => Mi(7));


SEL1_IC54: TTL74157 port map(  
	pin1_select => Mij,
  	pin2_1a => Mir nor mi(1),
  	pin3_1b => nArg(3),
  	pin4_1y => AdderInc(3),
  	pin5_2a => Mir nor Mi(0),
  	pin6_2b => nArg(2),
  	pin7_2y => AdderInc(2),
  	pin9_3y => AdderInc(1),
  	pin10_3b => nArg(1),
  	pin11_3a => '0',
  	pin12_4y => AdderInc(0), 
  	pin13_4b => nArg(0),
  	pin14_4a => Mis,
  	pin15_strobe => MijStartDis);
    
    
ADDER_IC45: TTL7483 port map(
  pin1_a4 => '0',
  pin2_s3 => AdderOut(6),
  pin3_a3 => '0',
  pin4_b3 => Mic(6),
  pin6_s2 => AdderOut(5),
  pin7_b2 => Mic(5),
  pin8_a2 => '0',
  pin9_s1 => AdderOut(4),
  pin10_a1 => lowAdderCarry,
  pin11_b1 => Mic(4),
  pin13_c0 => Mi(2) nor Mir,
  pin14_c4 => open,
  pin15_s4 => AdderOut(7),
  pin16_b4 => Mic(7)); 

ADDER_IC66: TTL7483 port map(  
  pin1_a4 => Mic(3),
  pin2_s3 => AdderOut(2),
  pin3_a3 => Mic(2),
  pin4_b3 => AdderInc(2),
  pin6_s2 => AdderOut(1),
  pin7_b2 => AdderInc(1),
  pin8_a2 => Mic(1),
  pin9_s1 => AdderOut(0),
  pin10_a1 => Mic(0),
  pin11_b1 => IC63_6,
  pin13_c0 => AdderInc(0),
  pin14_c4 => lowAdderCarry,
  pin15_s4 => AdderOut(3),
  pin16_b4 => AdderInc(3)); 
  
 
  

  
SEL2_IC21: TTL74153 port map (
  pin1_n1g => MijStartDis,
  pin2_b  => MijStart,
  pin3_1c3 => AdderOut(7),
  pin4_1c2 => CONROM(7),
  pin5_1c1 => CONROM(15),
  pin6_1c0  => '1',
  pin7_1y => MicIn(7),
  pin9_2y  =>MicIn(6),
  pin10_2c0 => '1',
  pin11_2c1  => CONROM(14),
  pin12_2c2  => CONROM(6),
  pin13_2c3  => AdderOut(6),
  pin14_a  => MijCONROM,
  pin15_n2g  => MijStartDis); 
  
SEL2_IC9: TTL74153 port map (  
  pin1_n1g => MijStartDis,
  pin2_b  => MijStart,
  pin3_1c3 => AdderOut(5),
  pin4_1c2 => CONROM(5),
  pin5_1c1 => CONROM(13),
  pin6_1c0  => '1',
  pin7_1y => MicIn(5),
  pin9_2y  => MicIn(4),
  pin10_2c0 => '1',
  pin11_2c1  => CONROM(12),
  pin12_2c2  => CONROM(4),
  pin13_2c3  => AdderOut(4),
  pin14_a  => MijCONROM,
  pin15_n2g  => MijStartDis);  
  
SEL2_IC17: TTL74153 port map (
  pin1_n1g => '0',
  pin2_b  => MijStart,
  pin3_1c3 => AdderOut(3),
  pin4_1c2 => CONROM(3),
  pin5_1c1 => CONROM(11),
  pin6_1c0  => '1',
  pin7_1y => MicIn(3),
  pin9_2y  => MicIn(2),
  pin10_2c0 => '1',
  pin11_2c1  => CONROM(10),
  pin12_2c2  => CONROM(2),
  pin13_2c3  => AdderOut(2),
  pin14_a  => MijCONROM,
  pin15_n2g  =>'0');  
  
SEL2_IC5: TTL74153 port map (
  pin1_n1g =>'0',
  pin2_b  => MijStart,
  pin3_1c3 => AdderOut(1),
  pin4_1c2 => CONROM(1),
  pin5_1c1 => CONROM(9),
  pin6_1c0  => '1',
  pin7_1y => MicIn(1),
  pin9_2y  => MicIn(0),
  pin10_2c0 => '1',
  pin11_2c1  => CONROM(8),
  pin12_2c2  => CONROM(0),
  pin13_2c3  => AdderOut(0),
  pin14_a  => MijCONROM,
  pin15_n2g  =>'0'); 
  
MIC_IC34: TTL74198 port map(
 	pin1_s0 => '1',
 	pin2_srsi => '1',
    pin3_a => MicIn(7),
    pin4_qA => Mic(7) ,
    pin5_b => MicIn(6),
    pin6_qB => Mic(6) ,
    pin7_c => MicIn(5),
    pin8_qC => Mic(5) ,
    pin9_d => MicIn(4),
    pin10_qD => Mic(4),
    pin11_clk => CP0,
    pin13_clear => CPEnd,
    pin14_qE => Mic(3) ,
    pin15_e => MicIn(3),
    pin16_qF => Mic(2),
    pin17_f =>MicIn(2) ,
    pin18_qG => Mic(1),
    pin19_g => MicIn(1),
    pin20_qH => Mic(0),
    pin21_h =>MicIn(0) ,
    pin22_slsi => '1',
    pin23_s1 => '1'); 
  

MICROM2_IC28: IC28_PROM256x4 port map (
  pin1_a6 => Mic(6),
  pin2_a5 => Mic(5),
  pin3_a4 => Mic(4),
  pin4_a3 => Mic(3),
  pin5_a0 => Mic(0),
  pin6_a1 => Mic(1),
  pin7_a2 => Mic(2),
  pin9_d3 => MicROM(3),
  pin10_d2 => MicROM(2),
  pin11_d1 => MicROM(1),
  pin12_d0 => MicROM(0),
  pin13_g1 => '0',
  pin14_g2 => '0',
  pin15_a7 => Mic(7)
);  
  

MICROM2_IC27: IC27_PROM256x4 port map (
  pin1_a6 => Mic(6),
  pin2_a5 => Mic(5),
  pin3_a4 => Mic(4),
  pin4_a3 => Mic(3),
  pin5_a0 => Mic(0),
  pin6_a1 => Mic(1),
  pin7_a2 => Mic(2),
  pin9_d3 => MicROM(7),
  pin10_d2 => MicROM(6),
  pin11_d1 => MicROM(5),
  pin12_d0 => MicROM(4),
  pin13_g1 => '0',
  pin14_g2 => '0',
  pin15_a7 => Mic(7)
);
 Latches_IC15: TTL74157 port map(
 	pin1_select => nCP0 ,
 	pin2_1a => Mi(7) ,
 	pin3_1b => MicROM(7),
    pin4_1y => Mi(7),
    pin5_2a => Mi(6),
    pin6_2b => MicROM(6),
    pin7_2y => Mi(6),
    pin9_3y => Mi(5),
    pin10_3b => MicROM(5),
    pin11_3a => Mi(5),
    pin12_4y => Mi(4),
    pin13_4b => MicROM(4),
    pin14_4a => Mi(4),
    pin15_strobe => '0');    

 Latches_IC40: TTL74157 port map(
 	pin1_select => nCP0 ,
 	pin2_1a => Mi(3) ,
 	pin3_1b => MicROM(3),
    pin4_1y => Mi(3),
    pin5_2a => Mi(2),
    pin6_2b => MicROM(2),
    pin7_2y => Mi(2),
    pin9_3y => Mi(1),
    pin10_3b => MicROM(1),
    pin11_3a => Mi(1),
    pin12_4y => Mi(0),
    pin13_4b => MicROM(0),
    pin14_4a => Mi(0),
    pin15_strobe => '0');    

P2_17_Mi0 <= Mi(0);
P2_12_Mi1 <= Mi(1);
P2_13_Mi2 <= Mi(2);
P2_14_Mi3 <= Mi(3);
P2_18_Mi5 <= Mi(5);
P2_19_Mi6 <= Mi(6);
P2_20_Mi7 <= Mi(7);
    




Selector_IC63: TTL74151 port map(  
  pin1_d3 => CF,
  pin2_d2 => not CF,
  pin3_d1 => nArg(0) or nArg(1) or nArg(2) or nArg(3),
  pin4_d0 => nZero,
  pin5_y => open, 
  pin6_w => IC63_6,
  pin7_ng => not Mis,
  pin9_c => Mi(2),
  pin10_b => Mi(1),
  pin11_a => Mi(0),
  pin12_d7 => '1',
  pin13_d6 => P1_27_Mark,
  pin14_d5 => OP(3),
  pin15_d4 => nCarry
);
  

ConditionSelector_IC74: TTL74150 port map (
  pin1_e7 => P2_83_nStatus2,
  pin2_e6 => P2_82_nCRepeat ,
  pin3_e5 => P2_81_nCIDData,
  pin4_e4 => P2_80_nCOverrunDIA,
  pin5_e3 => P2_78_Spare ,
  pin6_e2 => P1_37_nPrinterInoperable,
  pin7_e1 => P2_79_Spare,
  pin8_e0 => '0',
  pin9_ng => '0',
  pin10_w => CF,
  pin11_d => nArg(3),
  pin13_c => nArg(2),
  pin14_b => nArg(1),
  pin15_a => nArg(0),
  pin16_e15 => nZero,
  pin17_e14 => nCarry,
  pin18_e13 => P1_71_nARData7,
  pin19_e12 => nARCParity,
  pin20_e11 => P2_77_nCError,
  pin21_e10 => P2_76_nCBreak,
  pin22_e9 => P2_75_nCOverrun,
  pin23_e8 =>P2_74_nStatus1);  

TypeDecoder_IC39: TTL74278 port map (
  pin1_strb => nCP0,
  pin2_d3 => MicROM(4), 
  pin3_d4 => MicROM(3),
  pin4_p0 => Mi(7), 
  pin5_p1 => Mir, 
  pin6_y4 => Mis,
  pin8_y3 => Mij,
  pin9_y2 => Mia,
  pin10_y1 => P2_22_Mie,
  pin12_d1 => MicROM(6), 
  pin13_d2 => MicROM(5)
);



DFF_IC8: TTL7474 port map (
  pin1_n1clr => P1_29_nSetICMEMAFF,
  pin2_1d => '0',
  pin3_1clk => CP0 nand P1_69_ReadMEMO ,
  pin4_n1pre => P2_36_nMitd5,
  pin5_1q => open,
  pin6_n1q => P2_29_SelectICMEMA,
  pin8_n2q => clkToggle,
  pin9_2q => Clk6144MHz,
  pin10_n2pre => '1',
  pin11_2clk => clkInput,
  pin12_2d =>clkToggle,
  pin13_n2clr => nReset
);


CP2 <= not ( ( IC59_9 and P1_69_ReadMEMO ) or IC59_6 or CP1 or CP0);
P2_30_CP2 <= CP2;

DFF_IC70: TTL7474 port map (
  pin1_n1clr => nReset,
  pin2_1d => CP2,
  pin3_1clk => clkInput,
  pin4_n1pre => '1',
  pin5_1q =>  CP0,
  pin6_n1q => nCP0,
  pin8_n2q => nCP1,
  pin9_2q => CP1,
  pin10_n2pre => '1',
  pin11_2clk => clkInput,
  pin12_2d =>CP0,
  pin13_n2clr => nReset
);


P2_11_CP0 <= CP0;
P2_21_nCP0 <= nCP0;

DFF_IC59: TTL7474 port map (
  pin1_n1clr => P2_7_nCOPHalt,
  pin2_1d => P2_9_StopCPCounter,
  pin3_1clk => clkInput,
  pin4_n1pre => nReset,
  pin5_1q =>  open,
  pin6_n1q => IC59_6,
  pin8_n2q => open,
  pin9_2q => IC59_9,
  pin10_n2pre => '1',
  pin11_2clk => clkInput,
  pin12_2d => memoryTimingCarry,
  pin13_n2clr => nReset
);

DFF_IC51: TTL7474 port map (
  pin1_n1clr => '1',
  pin2_1d => '1',
  pin3_1clk => nReset,
  pin4_n1pre => '1', -- NOT USED??
  pin5_1q => open,
  pin6_n1q => open,
  pin8_n2q => open,
  pin9_2q => memoryTimingLoad,
  pin10_n2pre => nReset,
  pin11_2clk => memoryTimingCarry nand Clk6144MHz,
  pin12_2d => '1',
  pin13_n2clr => IC57_6
);




MemoryTiming_IC46: TTL74193 port map (
  pin1_b => memoryTimingStartCount,
  pin2_qB => open,
  pin3_qA => open,
  pin4_down => '1',
  pin5_up => not Clk6144MHz, -- should have been a nand with memoryTimingCarry
                             -- but it gives a strange glitch 
  pin6_qC => open,
  pin7_qD => memoryTimingStartCount,
  pin9_d => '1',
  pin10_c => memoryTimingStartCount,
  pin11_nLoad => memoryTimingLoad,  
  pin12_nCO => memoryTimingCarry, 
  pin13_nBO => open,
  pin14_clr => not nReset,
  pin15_a => '0'
);

IC57_6 <= P1_38_MEMAChanged nand P1_38_MEMAChanged;


FreqDivider_IC11: TTL7490 port map(
  pin1_b => Clk6144MHz,
  pin2_r01 => not nReset,
  pin3_r02 => not nReset,
  pin6_r91=> '0',
  pin7_r92=> '0',
  pin8_qc => open,
  pin9_qb => open,
  pin11_qd => CK_10T,
  pin12_qa => CK_4T,  
  pin14_a => Clk6144MHz);

P1_8_3_07MHz <= not CK_4T; -- IC10

FreqDivider_IC12: TTL7493 port map(
  pin1_ncp1 => CK_10T,
  pin2_mr1 => not nReset,
  pin3_mr2 => not nReset,
  pin8_q2 => open,
  pin9_q1 => open,
  pin11_q3 => CK_80T,
  pin12_q0 => open,
  pin14_ncp0 => '1');

P1_9_153_6kHz <= not CK_80T;

FreqDivider_IC24: TTL7493 port map(
  pin1_ncp1 => CK_76kHz,
  pin2_mr1 => not nReset,
  pin3_mr2 => not nReset,
  pin8_q2 => open,
  pin9_q1 => open,
  pin11_q3 => CK_1280T,
  pin12_q0 => CK_76kHz,
  pin14_ncp0 => CK_80T);
    
FreqDivider_IC35: TTL7493 port map(
  pin1_ncp1 => IC35_12,
  pin2_mr1 => not nReset,
  pin3_mr2 => not nReset,
  pin8_q2 => CK_1200Hz,
  pin9_q1 => open,
  pin11_q3 => IC35_11,
  pin12_q0 => IC35_12 ,
  pin14_ncp0 => CK_1280T);
  
P1_10_9600Hz <= not CK_1280T;
P1_80_1200Hz <= not CK_1200Hz;

FreqDivider_IC36: TTL7493 port map(
  pin1_ncp1 => CK_300Hz,
  pin2_mr1 => not nReset,
  pin3_mr2 => not nReset,
  pin8_q2 =>open,
  pin9_q1 =>open,
  pin11_q3 =>CK37Hz,
  pin12_q0 =>CK_300Hz,
  pin14_ncp0 =>IC35_11);

P1_79_300Hz <= CK_300Hz;
P1_74_0_6Hz <= CK_0_6Hz;
P1_13_2_3Hz <= CK_2_3Hz;
P1_58_4_6Hz <= CK_4_8Hz;
P1_57_9_2Hz <= CK_9_2Hz;

FreqDivider_IC72: TTL7493 port map(
  pin1_ncp1 => IC72_12,
  pin2_mr1 => not nReset,
  pin3_mr2 => not nReset,
  pin8_q2 => CK_4_8Hz,
  pin9_q1 => CK_9_2Hz,
  pin11_q3 => CK_2_3Hz,
  pin12_q0 =>IC72_12,
  pin14_ncp0 => CK37Hz);
  
FreqDivider_IC84: TTL7493 port map(
  pin1_ncp1 => CK_1_2Hz,
  pin2_mr1 => not nReset,
  pin3_mr2 => not nReset,
  pin8_q2 => open,
  pin9_q1 => CK_0_6Hz,
  pin11_q3 => open,
  pin12_q0 => CK_1_2Hz,
  pin14_ncp0 => CK_2_3Hz);  



Decoder_IC37: TTL7442 port map(
  pin1_ny0 => InterruptClear(0),
  pin2_ny1 => InterruptClear(1),
  pin3_ny2 => InterruptClear(2),
  pin4_ny3 => InterruptClear(3),
  pin5_ny4 => InterruptClear(4),
  pin6_ny5 => InterruptClear(5),
  pin7_ny6 => InterruptClear(6),
  pin9_ny7 => InterruptClear(7),
  pin10_ny8 => open,
  pin11_ny9 => open,
  pin12_a3 => P2_33_nMie3,
  pin13_a2 => nInterruptAddress(3),
  pin14_a1 => nInterruptAddress(2),
  pin15_a0 => nInterruptAddress(1)
);



PriEncoder_IC14: TTL74148 port map (
  pin1_i4  => IC2_10,
  pin2_i5  => IC2_7,
  pin3_i6 => IC2_5,
  pin4_i7 => IC2_2,
  pin5_ei => P2_35_nDisableInterrupt,
  pin6_a2 => nInterruptAddress(3),
  pin7_a1 => nInterruptAddress(2),
  pin9_a0 => nInterruptAddress(1),
  pin10_i0  => IC48_5,
  pin11_i1 => IC2_15,
  pin12_i2 => IC2_12,
  pin13_i3 => IC26_9,
  pin14_gs => InterruptRequest,
  pin15_eo => open);
  
--IC81 D  
P2_6_InterruptAddress1 <= not nInterruptAddress(1);
--IC81 E
P2_8_InterruptAddress2 <= not nInterruptAddress(2);
--IC81 C
P2_34_InterruptAddress3 <= not nInterruptAddress(3);

InterruptReqReg_IC2: TTL74174 port map(
  pin1_nclr => nReset,
  pin2_1q => IC2_2,
  pin3_1d => nIntRegOut(0),
  pin4_2d => nIntRegOut(1),
  pin5_2q => IC2_5,
  pin6_3d => nIntRegOut(2),
  pin7_3q => IC2_7,
  pin9_clk => CPend,
  pin10_4q => IC2_10,
  pin11_4d => nIntRegOut(3),
  pin12_5q => IC2_12,
  pin13_5d => nIntRegOut(5),  
  pin14_6d => nIntRegOut(6),
  pin15_6q => IC2_15
);


DFF_IC48: TTL7474 port map (
  pin1_n1clr => nReset,
  pin2_1d => nIntRegOut(7),
  pin3_1clk => CPend, 
  pin4_n1pre => '1',
  pin5_1q => IC48_5,
  pin6_n1q => open,
  pin8_n2q => open,
  pin9_2q => IC48_9,
  pin10_n2pre => nReset,
  pin11_2clk => P1_7_ClockInterrupt,
  pin12_2d => '1',
  pin13_n2clr => P2_7_nCOPHalt and InterruptClear(4) and GRintern -- IC58 B
);



DFF_IC50: TTL7474 port map (
  pin1_n1clr => P2_37_Mie3 nand ( IC50_6 nor nInterruptAddress(3) ) , --IC38 A and IC61 A
  pin2_1d => GRintern,
  pin3_1clk => '0', --P2_31_nMieResPri, 
  pin4_n1pre => GRintern,
  pin5_1q => IC50_5,
  pin6_n1q => IC50_6 ,
  pin8_n2q => IC50_8,
  pin9_2q => IC50_9,
  pin10_n2pre => GRintern,
  pin11_2clk => '0', --P2_31_nMieResPri ,
  pin12_2d => IC50_8 nand IC50_6, -- IC38 B
  pin13_n2clr => nInterruptAddress(3) nand P2_37_Mie3 -- IC38 C
);

-- IC38 D and IC61 A and B, D and IC73 C


IC61_1 <= IC50_6 nor nInterruptAddress(3);
IC61_4 <= IC38_11 nor InterruptRequest; 
IC38_11 <= IC50_5 nand IC50_9;
nInterrupt <=  IC61_1 nor IC61_4 ; 
Interrupt <= not nInterrupt;
P2_32_Interrupt <= Interrupt;

DFF_IC79: TTL7474 port map (
  pin1_n1clr => P2_65_nMieResZero , 
  pin2_1d => IC77_12,
  pin3_1clk => IC77_4 nand CP0, -- IC76 C
  pin4_n1pre => GRintern,
  pin5_1q => open,
  pin6_n1q => nZero,
  pin8_n2q => nCarry ,
  pin9_2q => IC79_9,
  pin10_n2pre => GRintern,
  pin11_2clk => IC77_4 nand CP0 , -- IC76 C
  pin12_2d => P2_66_DCarryFF, 
  pin13_n2clr => P2_64_nMieResCarry
);

nARCParity <= (IC79_9 and P2_69_AREPar) nor (P2_68_AROPar and nCarry); -- IC78

P1_72_nCarry <= nCarry;
P1_73_nZero <= nZero;


DFF_IC26: TTL7474 port map (
  pin1_n1clr => nReset,
  pin2_1d => '1',
  pin3_1clk => '1', 
  pin4_n1pre => '1', -- not used?
  pin5_1q => open,
  pin6_n1q => open,
  pin8_n2q => open ,
  pin9_2q => IC26_9,
  pin10_n2pre => '1',
  pin11_2clk => CPend ,
  pin12_2d => IC48_8, 
  pin13_n2clr => nReset
);

    
    
SEL_IC77: TTL74157 port map(
    pin1_select => Mia,
    pin2_1a => Mi(3),
    pin3_1b => CONROM(4),
    pin4_1y => IC77_4,
    pin5_2a => Mi(6),
    pin6_2b => CONROM(3),
    pin7_2y => P2_73_ARMCI,
    pin9_3y => P2_72_ARMCO,
    pin10_3b => CONROM(2),
    pin11_3a => Mi(6),
    pin12_4y => IC77_12,
    pin13_4b => P2_71_ALUAeqB,
    pin14_4a => P2_70_DZeroFF,
    pin15_strobe => (Mi(7) and Mi(5)) nor mia -- IC78 A
);

InhibitTimeout_IC47: TTL74164 port map(
  pin1_a => IC48_9,
  pin2_b => '1',
  pin3_qa => open,
  pin4_qb => open,
  pin5_qc => open,
  pin6_qd => open,
  pin8_clk => CK_2_3Hz,
  pin9_nclr => P2_7_nCOPHalt and InterruptClear(4) and GRintern, -- IC58 B
  pin10_qe => open,
  pin11_qf => open,
  pin12_qg => open, 
  pin13_qh => IC47_13
);

QFF_IC71: TTL74175 port map(
  pin1_nclr => P1_11_ResetButton and P1_6_nMieReset, -- IC58 C
  pin2_1q => open,
  pin3_n1q => IC71_3,
  pin4_1d => IC71_14,
  pin5_2d => IC71_3,
  pin6_n2q => IC71_6,
  pin7_2q => open,
  pin9_clk => CK_10T, --CK_9_2Hz,
  pin10_3q => open,
  pin11_n3q => open,
  pin12_3d => '1',  
  pin13_4d => IC47_13,
  pin14_n4q => IC71_14,
  pin15_4q => open
);


GRintern <= IC71_6 nand IC71_3;

-- IC25 A
IC25_3 <= IC1_11 nand GRIntern;
IC1_11 <= IC25_3 nand InterruptClear(0);
--IntRegOut(0) <= not ( nIntRegOut(0) and GRIntern); 
-- IC1 D
--nIntRegOut(0) <= not ( IntRegOut(0) and InterruptClear(0));
IntRegOut(0) <= IC25_3;
P1_18_nGeneralReset <= not IntRegOut(0);
nIntRegOut(0) <= not IntRegOut(0); 
-- IC25 B
IntRegOut(1) <= not ( nIntRegOut(1) and P2_84_IRecReady); 
-- IC49 A
nIntRegOut(1) <= not ( IntRegOut(1) and GRIntern and InterruptClear(1));
-- IC25 B
IntRegOut(2) <= not ( nIntRegOut(2) and P2_85_ITransReady); 
-- IC49 C
nIntRegOut(2) <= not ( IntRegOut(2) and GRIntern and InterruptClear(2));
-- IC25 D
IntRegOut(3) <= not ( nIntRegOut(3) and P2_86_EBAinterrupt); 
-- IC13 C
nIntRegOut(3) <= not ( IntRegOut(3) and GRIntern and InterruptClear(3));
-- IC1 A
IntRegOut(5) <= not ( nIntRegOut(5) and P2_89_KBinterrupt); 
-- IC13 B
nIntRegOut(5) <= not ( IntRegOut(5) and GRIntern and InterruptClear(5));
-- IC1 B
IntRegOut(6) <= not ( nIntRegOut(6) and P2_88_GEAinterrupt); 
-- IC13 C
nIntRegOut(6) <= not ( IntRegOut(6) and GRIntern and InterruptClear(6));
-- IC1 C
IntRegOut(7) <= not ( nIntRegOut(7) and P2_67_PAinterrupt); 
-- IC49 B
nIntRegOut(7) <= not ( IntRegOut(7) and GRIntern and InterruptClear(7));
-- IC73 A
P2_27_nEBAINterruptReq  <= not IntRegOut(3); 

CONROM_IC18: IC18_32x8_PROM port map(
  pin1_d0 => CONROM(8),
  pin2_d1 => CONROM(9),
  pin3_d2 => CONROM(10),
  pin4_d3 => CONROM(11),
  pin5_d4 => CONROM(12),
  pin6_d5 => CONROM(13),
  pin7_d6 => CONROM(14),
  pin9_d7 => CONROM(15),
  pin10_a0 => CONROMAddress(0),
  pin11_a1 => CONROMAddress(1),
  pin12_a2 => CONROMAddress(2),
  pin13_a3 => CONROMAddress(3),
  pin14_a4 => Mij,
  pin15_g  => '0'
);

CONROM_IC19: IC19_32x8_PROM port map(
  pin1_d0 => CONROM(0),
  pin2_d1 => CONROM(1),
  pin3_d2 => CONROM(2),
  pin4_d3 => CONROM(3),
  pin5_d4 => CONROM(4),
  pin6_d5 => CONROM(5),
  pin7_d6 => CONROM(6),
  pin9_d7 => CONROM(7),
  pin10_a0 => CONROMAddress(0),
  pin11_a1 => CONROMAddress(1),
  pin12_a2 => CONROMAddress(2),
  pin13_a3 => CONROMAddress(3),
  pin14_a4 => Mij,
  pin15_g  => '0'
);

P1_35_Mia <= Mia;

IOADDRESS_DECODER_IC83: TTL74155 port map(
  pin1_1c => OP(3),
  pin2_n1g => OP(2),
  pin3_b => nArg(3),
  pin4_1y3 => P1_17_IOAddressMUXGroup,
  pin5_1y2 => P1_16_IOAddressEBAGroup,
  pin6_1y1 => P1_15_IOAddressMCAGroup,
  pin7_1y0 => P1_14_IOAddressGEAGroup,
  pin9_2y0 => P1_75_IOAddress0CGroup,
  pin10_2y1 => P1_76_IOAddress08Group,
  pin11_2y2 => P1_77_IOAddress04Group,
  pin12_2y3 => P1_78_IOAddress00Group,
  pin13_a => nArg(2),
  pin14_n2g => OP(3),
  pin15_n2c => OP(2)
);

IC82_3 <= nArg(1) nand nArg(1);
IC82_6 <= nArg(0) nand nArg(0);

P1_67_IOAddressA0Group <= IC82_3;
P1_68_IOAddressA1Group <= IC82_6;

-- IC29 7402 

IC29_13 <= CONROM(10) nor P1_27_Mark;
P1_28_nModCarry <= IC29_13;

IC76_6 <= Mi(7) nand CP0;

P2_15_nCPMit <= IC76_6;

P2_16_nMi0 <= not Mi(0);

end logic;
