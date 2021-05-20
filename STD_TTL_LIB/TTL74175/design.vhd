-- Standard 74175 Quad D flip flop with Reset and Clear designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;


entity TTL74175 is
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
end TTL74175;



architecture logic of TTL74175 is

component DFF_WITH_CLR_PRE is
port(
  nclr  : in std_logic;
  d  : in std_logic;
  clk  : in std_logic;
  npre  : in std_logic;
  q  : out std_logic;
  nq  : out std_logic);
end component;


begin 
 FF1: DFF_WITH_CLR_PRE port map(pin1_nclr,pin4_1d,pin9_clk,'1',pin2_1q,pin3_n1q);
 FF2: DFF_WITH_CLR_PRE port map(pin1_nclr,pin5_2d,pin9_clk,'1',pin7_2q,pin6_n2q);
 FF3: DFF_WITH_CLR_PRE port map(pin1_nclr,pin12_3d,pin9_clk,'1',pin10_3q,pin11_n3q);
 FF4: DFF_WITH_CLR_PRE port map(pin1_nclr,pin13_4d,pin9_clk,'1',pin15_4q,pin14_n4q);
end logic;

