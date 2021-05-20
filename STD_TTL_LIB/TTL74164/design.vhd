-- Standard 74164 8-bit parallel-out serial shift register. 
library IEEE;
use IEEE.std_logic_1164.all;


entity TTL74164 is
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
end TTL74164;



architecture logic of TTL74164 is

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
 FF1: DFF_WITH_CLR_PRE port map(pin9_nclr,pin1_a and pin2_b,pin8_clk,'1',pin3_qa,open);
 FF2: DFF_WITH_CLR_PRE port map(pin9_nclr,pin3_qa,pin8_clk,'1',pin4_qb,open);
 FF3: DFF_WITH_CLR_PRE port map(pin9_nclr,pin4_qb,pin8_clk,'1',pin5_qc,open);
 FF4: DFF_WITH_CLR_PRE port map(pin9_nclr,pin5_qc,pin8_clk,'1',pin6_qd,open);
 FF5: DFF_WITH_CLR_PRE port map(pin9_nclr,pin6_qd,pin8_clk,'1',pin10_qe,open);
 FF6: DFF_WITH_CLR_PRE port map(pin9_nclr,pin10_qe,pin8_clk,'1',pin11_qf,open);
 FF7: DFF_WITH_CLR_PRE port map(pin9_nclr,pin11_qf,pin8_clk,'1',pin12_qg,open);
 FF8: DFF_WITH_CLR_PRE port map(pin9_nclr,pin12_qg,pin8_clk,'1',pin13_qh,open); 
end logic;

