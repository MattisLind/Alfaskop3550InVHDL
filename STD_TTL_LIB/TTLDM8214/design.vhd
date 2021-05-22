-- Standard TTL DM8214 TTL Multiplexor with three state output designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;

entity TTLDM8214 is
port(
  pin1_n1g: in std_logic;
  pin2_b  : in std_logic;
  pin3_1c3: in std_logic;
  pin4_1c2: in std_logic;
  pin5_1c1 : in std_logic;
  pin6_1c0  : in std_logic;
  pin7_1y : out std_logic;
  pin9_2y  : out std_logic;
  pin10_2c0 : in std_logic;
  pin11_2c1  : in std_logic;
  pin12_2c2   : in std_logic;
  pin13_2c3   : in std_logic;
  pin14_a   : in std_logic;
  pin15_n2g   : in std_logic);
end TTLDM8214;

architecture logic of TTLDM8214 is
begin 
  pin7_1y <= ((pin6_1c0 and not pin2_b and not pin14_a) or 
              (pin5_1c1 and not pin2_b and pin14_a) or 
              (pin4_1c2 and pin2_b and not pin14_a) or 
              (pin3_1c3 and pin2_b and pin14_a)) when (pin1_n1g = '0') else 'Z' ;
  pin9_2y <= ((pin10_2c0 and not pin2_b and not pin14_a) or 
              (pin11_2c1 and not pin2_b and pin14_a) or 
              (pin12_2c2 and pin2_b and not pin14_a) or 
              (pin13_2c3 and pin2_b and pin14_a)) when (pin15_n2g = '0') else 'Z';
     
end logic;

