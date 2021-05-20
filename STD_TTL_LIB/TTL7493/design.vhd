-- Standard TTL 7493 Binary Counters designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;


entity TTL7493 is
port(
  pin1_ncp1 : in std_logic;
  pin2_mr1  : in std_logic;
  pin3_mr2  : in std_logic;
  pin8_q2  : out std_logic;
  pin9_q1  : out std_logic;
  pin11_q3  : out std_logic;
  pin12_q0  : out std_logic;
  pin14_ncp0 : in std_logic);  
end TTL7493;



architecture logic of TTL7493 is

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
 FF1: JKFF_WITH_CLR_PRE port map(pin2_mr1 and pin3_mr2 ,'1','1',not pin14_ncp0,'0',pin12_q0,open);
 FF2: JKFF_WITH_CLR_PRE port map(pin2_mr1 and pin3_mr2 ,'1','1',not pin1_ncp1,'0',pin9_q1,open);
 FF3: JKFF_WITH_CLR_PRE port map(pin2_mr1 and pin3_mr2 ,'1','1',not pin9_q1,'0',pin8_q2,open);
 FF4: JKFF_WITH_CLR_PRE port map(pin2_mr1 and pin3_mr2 ,'1','1',not pin8_q2,'0',pin11_q3,open);
end logic;

