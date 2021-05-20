-- Standard 74151 TTL multiplexor designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL74151 is
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
end TTL74151;

architecture logic of TTL74151 is
begin 

pin6_w <= not pin4_d0 when (pin11_a = '0' and pin10_b = '0' and pin9_c = '0' and pin7_ng = '0') else
	      not pin3_d1 when pin11_a = '1' and pin10_b = '0' and pin9_c = '0' and pin7_ng = '0' else
          not pin2_d2 when pin11_a = '0' and pin10_b = '1' and pin9_c = '0' and pin7_ng = '0' else
          not pin1_d3 when pin11_a = '1' and pin10_b = '1' and pin9_c = '0' and pin7_ng = '0' else
          not pin15_d4 when pin11_a = '0' and pin10_b = '0' and pin9_c = '1' and pin7_ng = '0' else
          not pin14_d5 when pin11_a = '1' and pin10_b = '0' and pin9_c = '1' and pin7_ng = '0' else
          not pin13_d6 when pin11_a = '0' and pin10_b = '1' and pin9_c = '1' and pin7_ng = '0' else
          not pin12_d7 when pin11_a = '1' and pin10_b = '1' and pin9_c = '1' and pin7_ng = '0' else
          '1' when pin7_ng = '1';
pin5_y <= pin4_d0 when pin11_a = '0' and pin10_b = '0' and pin9_c = '0' and pin7_ng = '0' else
	      pin3_d1 when pin11_a = '1' and pin10_b = '0' and pin9_c = '0' and pin7_ng = '0' else
          pin2_d2 when pin11_a = '0' and pin10_b = '1' and pin9_c = '0' and pin7_ng = '0' else
          pin1_d3 when pin11_a = '1' and pin10_b = '1' and pin9_c = '0' and pin7_ng = '0' else
          pin15_d4 when pin11_a = '0' and pin10_b = '0' and pin9_c = '1' and pin7_ng = '0' else
          pin14_d5 when pin11_a = '1' and pin10_b = '0' and pin9_c = '1' and pin7_ng = '0' else
          pin13_d6 when pin11_a = '0' and pin10_b = '1' and pin9_c = '1' and pin7_ng = '0' else
          pin12_d7 when pin11_a = '1' and pin10_b = '1' and pin9_c = '1' and pin7_ng = '0' else
          '0' when pin7_ng = '1';
end logic;

