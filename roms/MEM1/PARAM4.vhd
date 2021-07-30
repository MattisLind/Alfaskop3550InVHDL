-- Parameter jumper block in a DIL 16 holder.
-- Used on MEM1 board location IC63.
library IEEE;
use IEEE.std_logic_1164.all;


entity PARAM4 is
port(
  pin1_o1 : out std_logic;
  pin2_o2 : out std_logic;
  pin3_o3 : out std_logic;
  pin4_i1: in std_logic;
  pin5_i2 : in std_logic;
  pin6_o4 : out std_logic;
  pin7_o5 : out std_logic;
  pin10_o6 : out std_logic;
  pin11_o7 : out std_logic;
  pin12_i3 : in std_logic;
  pin13_i4 : in std_logic;
  pin14_o8 : out std_logic;
  pin15_o9 : out std_logic;
  pin16_o10 : out std_logic);
end PARAM4;



architecture logic of PARAM4 is

begin 
  pin1_o1 <= pin4_i1;
  pin2_o2 <= pin4_i1;
  pin3_o3 <= pin4_i1;
  pin6_o4 <= pin4_i1;
  pin7_o5 <= pin4_i1; 
  pin16_o10 <= pin4_i1;
  
  pin10_o6 <= pin5_i2;
  pin11_o7 <= pin5_i2;
  pin14_o8 <= pin5_i2;
  
  pin15_o9 <= pin13_i4;

end logic;

