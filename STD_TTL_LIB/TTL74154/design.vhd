-- Standard 74154 TTL demultiplexer designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL74154 is
port(
  pin1_ny0  : out std_logic;
  pin2_ny1  : out std_logic;
  pin3_ny2  : out std_logic;
  pin4_ny3  : out std_logic;
  pin5_ny4  : out std_logic;
  pin6_ny5  : out std_logic;
  pin7_ny6  : out std_logic;
  pin8_ny7  : out std_logic;
  pin9_ny8  : out std_logic;
  pin10_ny9  : out std_logic;
  pin11_ny10  : out std_logic;  
  pin13_ny11  : out std_logic;
  pin14_ny12  : out std_logic;
  pin15_ny13  : out std_logic;
  pin16_ny14: out std_logic;
  pin17_ny15: out std_logic;  
  pin18_ne1: in std_logic;
  pin19_ne2: in std_logic;
  pin20_a3: in std_logic;
  pin21_a2: in std_logic;
  pin22_a1 : in std_logic;
  pin23_a0 : in std_logic);
end TTL74154;

architecture logic of TTL74154 is
begin 
  pin1_ny0  <= not (not pin23_a0 and not pin22_a1 and not pin21_a2 and not pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin2_ny1  <= not (    pin23_a0 and not pin22_a1 and not pin21_a2 and not pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin3_ny2  <= not (not pin23_a0 and     pin22_a1 and not pin21_a2 and not pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin4_ny3  <= not (    pin23_a0 and     pin22_a1 and not pin21_a2 and not pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin5_ny4  <= not (not pin23_a0 and not pin22_a1 and     pin21_a2 and not pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin6_ny5  <= not (    pin23_a0 and not pin22_a1 and     pin21_a2 and not pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin7_ny6  <= not (not pin23_a0 and     pin22_a1 and     pin21_a2 and not pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin8_ny7  <= not (    pin23_a0 and     pin22_a1 and     pin21_a2 and not pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin9_ny8  <= not (not pin23_a0 and not pin22_a1 and not pin21_a2 and     pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin10_ny9  <=not (     pin23_a0 and not pin22_a1 and not pin21_a2 and     pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin11_ny10 <=not ( not pin23_a0 and     pin22_a1 and not pin21_a2 and     pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin13_ny11 <=not (     pin23_a0 and     pin22_a1 and not pin21_a2 and     pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin14_ny12 <=not ( not pin23_a0 and not pin22_a1 and     pin21_a2 and     pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin15_ny13 <=not (     pin23_a0 and not pin22_a1 and     pin21_a2 and     pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin16_ny14 <=not ( not pin23_a0 and     pin22_a1 and     pin21_a2 and     pin20_a3 and not pin19_ne2 and not pin18_ne1); 
  pin17_ny15 <=not (     pin23_a0 and     pin22_a1 and     pin21_a2 and     pin20_a3 and not pin19_ne2 and not pin18_ne1); 
end logic;

