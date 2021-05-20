-- Standard TTL 7490 Decade and Binary Counters designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;


entity TTL7490 is
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
end TTL7490;



architecture logic of TTL7490 is

component JKFF_WITH_CLR_PRE is
port(
  nclr  : in std_logic;
  j  : in std_logic;
  k  : in std_logic;
  clk  : in std_logic;
  npre  : in std_logic;
  q  : out std_logic;
  nq  : out std_logic);
end component;


begin 
 FF1: JKFF_WITH_CLR_PRE port map(pin2_r01 and pin3_r02 ,'1','1',not pin14_a,pin6_r91 and pin7_r92,pin12_qa,open);
 FF2: JKFF_WITH_CLR_PRE port map((pin2_r01 nand pin3_r02) nand (pin6_r91 nand pin7_r92),not pin11_qd,'1',not pin1_b,'0',pin9_qb,open);
 FF3: JKFF_WITH_CLR_PRE port map((pin2_r01 nand pin3_r02) nand (pin6_r91 nand pin7_r92),'1','1',not pin9_qb,'0',pin8_qc,open);
 FF4: JKFF_WITH_CLR_PRE port map(pin2_r01 and pin3_r02,pin9_qb and pin8_qc,pin11_qd,not pin1_b,pin6_r91 and pin7_r92,pin11_qd,open);	
end logic;

