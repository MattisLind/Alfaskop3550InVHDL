-- Standard 74278 Cascadeable Priority Registers designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL74278 is
port(
  pin1_strb  : in std_logic;
  pin2_d3  : in std_logic;
  pin3_d4  : in std_logic;
  pin4_p0  : in std_logic;
  pin5_p1  : out std_logic;
  pin6_y4  : out std_logic;
  pin8_y3  : out std_logic;
  pin9_y2  : out std_logic;
  pin10_y1  : out std_logic;
  pin12_d1  : in std_logic;  
  pin13_d2  : in std_logic);
end TTL74278;

architecture logic of TTL74278 is
signal nq1, nq2, nq3, nq4, q1, q2, q3, q4 : std_logic;
begin 

    nq1 <= q1 nor ( pin12_d1 and pin1_strb );
    q1 <= nq1 nor ( not pin12_d1 and pin1_strb );
    pin10_y1 <= nq1 nor pin4_p0;

    nq2 <= q2 nor ( pin13_d2 and pin1_strb );
    q2 <= nq2 nor ( not pin13_d2 and pin1_strb );
    pin9_y2 <= not (nq2 or pin4_p0 or q1);

    nq3 <= q3 nor ( pin2_d3 and pin1_strb );
    q3 <= nq3 nor ( not pin2_d3 and pin1_strb );
    pin8_y3 <= not (nq3 or pin4_p0 or q2 or q1);
  
    nq4 <= q4 nor ( pin3_d4 and pin1_strb );
    q4 <= nq4 nor ( not pin3_d4 and pin1_strb );
    pin6_y4 <= not (nq4 or pin4_p0 or q3 or q2 or q1);

    pin5_p1 <= pin4_p0 or q4 or q3 or q2 or q1;
end logic;

