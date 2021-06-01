-- Standard TTL 74125 quad three state gates
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL74125 is
port(
  pin1_1c : in std_logic;
  pin2_1a : in std_logic;
  pin3_1y : out std_logic;
  pin4_2c : in std_logic;
  pin5_2a : in std_logic;
  pin6_2y : out std_logic;
  pin8_3y : out std_logic;
  pin9_3a : in std_logic;
  pin10_3c : in std_logic;
  pin11_4y : out std_logic;
  pin12_4a : in std_logic; 
  pin13_4c : in std_logic);
  
  
  
end TTL74125;

architecture logic of TTL74125 is
begin   
  pin3_1y  <= pin2_1a  when pin1_1c = '0' else 'Z';  
  pin6_2y  <= pin5_2a  when pin4_2c = '0' else 'Z';  
  pin8_3y  <= pin9_3a  when pin10_3c = '0' else 'Z';  
  pin11_4y <= pin12_4a when pin13_4c = '0' else 'Z';  
end logic;

