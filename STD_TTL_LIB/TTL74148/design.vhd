-- Standard TTL 74148 8-Line to to 3-line Priority Encoder.
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL74148 is
port(
  pin1_i4  : in std_logic;
  pin2_i5  : in std_logic;
  pin3_i6  : in std_logic;
  pin4_i7  : in std_logic;
  pin5_ei  : in std_logic;
  pin6_a2  : out std_logic;
  pin7_a1  : out std_logic;
  pin9_a0  : out std_logic;
  pin10_i0  : in std_logic;
  pin11_i1  : in std_logic;  
  pin12_i2  : in std_logic;
  pin13_i3  : in std_logic;
  pin14_gs  : out std_logic;
  pin15_eo  : out std_logic);
end TTL74148;

architecture logic of TTL74148 is
signal eo,and1,and2,and3,and4,quad_nor : std_logic;
begin 
  pin6_a2 <= not ( (not pin5_ei and not pin4_i7)  or (not pin5_ei and not pin3_i6) or (not pin5_ei and not pin2_i5) or (not pin5_ei and not pin1_i4) );

  and1 <= not pin5_ei and not pin4_i7;
  and2 <= not pin5_ei and not pin3_i6;
  and3 <= not pin5_ei and pin2_i5 and pin1_i4 and not pin13_i3;
  and4 <= not pin5_ei and pin2_i5 and pin1_i4 and not pin12_i2;
  quad_nor <= not ( and1 or and2 or and3 or and4);
  
  pin7_a1 <= quad_nor;

  pin9_a0 <= not ( (not pin5_ei and not pin4_i7)  or (not pin5_ei and pin3_i6 and not pin2_i5 ) or (not pin5_ei and pin3_i6 and pin1_i4 and not pin13_i3) or (not pin5_ei and pin3_i6 and pin1_i4 and pin12_i2 and not pin11_i1 ) );

  eo <= not (not pin5_ei and pin10_i0 and pin11_i1 and pin12_i2 and pin13_i3 and pin1_i4 and pin2_i5 and pin3_i6 and pin4_i7);
  pin14_gs <= eo nand not pin5_ei;
  pin15_eo <= eo;
end logic;

