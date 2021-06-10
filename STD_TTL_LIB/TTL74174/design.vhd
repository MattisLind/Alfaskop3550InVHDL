-- Standard 74174 Dual D flip flop with Reset and Clear designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;


entity TTL74174 is
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
end TTL74174;



architecture logic of TTL74174 is

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
 FF1: DFF_WITH_CLR_PRE port map(pin1_nclr,pin3_1d,pin9_clk,'1',pin2_1q,open);
 FF2: DFF_WITH_CLR_PRE port map(pin1_nclr,pin4_2d,pin9_clk,'1',pin5_2q,open);
 FF3: DFF_WITH_CLR_PRE port map(pin1_nclr,pin6_3d,pin9_clk,'1',pin7_3q,open);
 FF4: DFF_WITH_CLR_PRE port map(pin1_nclr,pin11_4d,pin9_clk,'1',pin10_4q,open);
 FF5: DFF_WITH_CLR_PRE port map(pin1_nclr,pin13_5d,pin9_clk,'1',pin12_5q,open);
 FF6: DFF_WITH_CLR_PRE port map(pin1_nclr,pin14_6d,pin9_clk,'1',pin15_6q,open);
end logic;

