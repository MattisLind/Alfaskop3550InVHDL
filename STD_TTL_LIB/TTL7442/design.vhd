-- Standard TTL 7442 decimal decoder designed from the model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL7442 is
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
end TTL7442;

architecture logic of TTL7442 is
begin 
  pin1_ny0  <= not (not pin15_a0 and not pin14_a1 and not pin13_a2 and not pin12_a3); 
  pin2_ny1  <= not (    pin15_a0 and not pin14_a1 and not pin13_a2 and not pin12_a3); 
  pin3_ny2  <= not (not pin15_a0 and     pin14_a1 and not pin13_a2 and not pin12_a3); 
  pin4_ny3  <= not (    pin15_a0 and     pin14_a1 and not pin13_a2 and not pin12_a3); 
  pin5_ny4  <= not (not pin15_a0 and not pin14_a1 and     pin13_a2 and not pin12_a3); 
  pin6_ny5  <= not (    pin15_a0 and not pin14_a1 and     pin13_a2 and not pin12_a3); 
  pin7_ny6  <= not (not pin15_a0 and     pin14_a1 and     pin13_a2 and not pin12_a3); 
  pin9_ny7  <= not (    pin15_a0 and     pin14_a1 and     pin13_a2 and not pin12_a3); 
  pin10_ny8  <= not (not pin15_a0 and not pin14_a1 and not pin13_a2 and     pin12_a3); 
  pin11_ny9  <=not (    pin15_a0 and not pin14_a1 and not pin13_a2 and     pin12_a3); 
 
end logic;

