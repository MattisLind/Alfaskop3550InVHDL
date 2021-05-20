-- Standard 7474 Dual D flip flop with Reset and Clear designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;


entity TTL7474 is
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
end TTL7474;



architecture logic of TTL7474 is

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
 FF1: DFF_WITH_CLR_PRE port map(pin1_n1clr,pin2_1d,pin3_1clk,pin4_n1pre,pin5_1q,pin6_n1q);  
 FF2: DFF_WITH_CLR_PRE port map(pin13_n2clr,pin12_2d,pin11_2clk,pin10_n2pre,pin9_2q,pin8_n2q);	
end logic;

