-- Standard 74180 9-bit Odd/even Parity Generators/Checkers
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL74180 is
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
end TTL74180;

architecture logic of TTL74180 is
signal sum : std_logic;
begin
  sum <= not ((( not (pin8_a xor pin9_b)) xor 
               ( not (pin10_c xor pin11_d))) xor 
              (( not ( pin12_e xor pin13_f)) xor 
               ( not (pin1_g xor pin2_h))));
  pin5_sumeven <= (sum and pin4_odd) nor (not sum and pin3_even);
  pin6_sumodd <=  (sum and pin3_even) nor (not sum and pin4_odd); 
end logic;

