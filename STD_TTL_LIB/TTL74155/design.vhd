-- Standard 74155 TTL demultiplexer designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL74155 is
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
end TTL74155;

architecture logic of TTL74155 is
  
begin 
  pin7_1y0 <= not (pin1_1c and not pin2_n1g and not pin13_a and not pin3_b);
  pin6_1y1 <= not (pin1_1c and not pin2_n1g and     pin13_a and not pin3_b);
  pin5_1y2 <= not (pin1_1c and not pin2_n1g and not pin13_a and     pin3_b);
  pin4_1y3 <= not (pin1_1c and not pin2_n1g and     pin13_a and     pin3_b);
  pin9_2y0 <= not (not pin15_n2c and not pin14_n2g and not pin13_a and not pin3_b);
  pin10_2y1 <= not (not pin15_n2c and not pin14_n2g and     pin13_a and not pin3_b);
  pin11_2y2 <= not (not pin15_n2c and not pin14_n2g and not pin13_a and     pin3_b);
  pin12_2y3 <= not (not pin15_n2c and not pin14_n2g and     pin13_a and     pin3_b);
end logic;

