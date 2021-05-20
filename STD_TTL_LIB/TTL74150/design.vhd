-- Standard 74150 TTL multiplexor designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL74150 is
port(
  pin1_e7  : in std_logic;
  pin2_e6  : in std_logic;
  pin3_e5  : in std_logic;
  pin4_e4  : in std_logic;
  pin5_e3  : in std_logic;
  pin6_e2  : in std_logic;
  pin7_e1  : in std_logic;
  pin8_e0  : in std_logic;
  pin9_ng  : in std_logic;
  pin10_w  : out std_logic;
  pin11_d  : in std_logic;  
  pin13_c  : in std_logic;
  pin14_b  : in std_logic;
  pin15_a  : in std_logic;
  pin16_e15: in std_logic;
  pin17_e14: in std_logic;  
  pin18_e13: in std_logic;
  pin19_e12: in std_logic;
  pin20_e11: in std_logic;
  pin21_e10: in std_logic;
  pin22_e9 : in std_logic;
  pin23_e8 : in std_logic);
end TTL74150;

architecture logic of TTL74150 is
begin 

pin10_w <= not pin8_e0   when pin15_a = '0' and pin14_b = '0' and pin13_c = '0' and pin11_d = '0' and pin9_ng = '0' else
	       not pin7_e1   when pin15_a = '1' and pin14_b = '0' and pin13_c = '0' and pin11_d = '0' and pin9_ng = '0' else
           not pin6_e2   when pin15_a = '0' and pin14_b = '1' and pin13_c = '0' and pin11_d = '0' and pin9_ng = '0' else
           not pin5_e3   when pin15_a = '1' and pin14_b = '1' and pin13_c = '0' and pin11_d = '0' and pin9_ng = '0' else
           not pin4_e4   when pin15_a = '0' and pin14_b = '0' and pin13_c = '1' and pin11_d = '0' and pin9_ng = '0' else
           not pin3_e5   when pin15_a = '1' and pin14_b = '0' and pin13_c = '1' and pin11_d = '0' and pin9_ng = '0' else
           not pin2_e6   when pin15_a = '0' and pin14_b = '1' and pin13_c = '1' and pin11_d = '0' and pin9_ng = '0' else
           not pin1_e7   when pin15_a = '1' and pin14_b = '1' and pin13_c = '1' and pin11_d = '0' and pin9_ng = '0' else
		   not pin23_e8  when pin15_a = '0' and pin14_b = '0' and pin13_c = '0' and pin11_d = '1' and pin9_ng = '0' else
	       not pin22_e9  when pin15_a = '1' and pin14_b = '0' and pin13_c = '0' and pin11_d = '1' and pin9_ng = '0' else
           not pin21_e10 when pin15_a = '0' and pin14_b = '1' and pin13_c = '0' and pin11_d = '1' and pin9_ng = '0' else
           not pin20_e11 when pin15_a = '1' and pin14_b = '1' and pin13_c = '0' and pin11_d = '1' and pin9_ng = '0' else
           not pin19_e12 when pin15_a = '0' and pin14_b = '0' and pin13_c = '1' and pin11_d = '1' and pin9_ng = '0' else
           not pin18_e13 when pin15_a = '1' and pin14_b = '0' and pin13_c = '1' and pin11_d = '1' and pin9_ng = '0' else
           not pin17_e14 when pin15_a = '0' and pin14_b = '1' and pin13_c = '1' and pin11_d = '1' and pin9_ng = '0' else
           not pin16_e15 when pin15_a = '1' and pin14_b = '1' and pin13_c = '1' and pin11_d = '1' and pin9_ng = '0' else          
           '1' when pin9_ng = '1';
end logic;

