-- Standard Bipolar 32 x 8 bit PROM 
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity IC18_32x8_PROM is
port(
  pin1_d0  : out std_logic;
  pin2_d1  : out std_logic;
  pin3_d2  : out std_logic;
  pin4_d3  : out std_logic;
  pin5_d4  : out std_logic;
  pin6_d5  : out std_logic;
  pin7_d6  : out std_logic;
  pin9_d7  : out std_logic;
  pin10_a0  : in std_logic;
  pin11_a1  : in std_logic;
  pin12_a2  : in std_logic;
  pin13_a3  : in std_logic;
  pin14_a4  : in std_logic;
  pin15_g  : in std_logic);
end IC18_32x8_PROM;

architecture logic of IC18_32x8_PROM is
signal address : std_logic_vector (4 downto 0);
signal data : std_logic_vector (7 downto 0);
type rom_type is array (0 to 31) of std_logic_vector(7 downto 0); 
signal rom : rom_type := ( 
x"AF", x"67", x"67", x"93", x"9F", x"BF", x"EF", x"AF", 
x"03", x"F7", x"FF", x"93", x"FB", x"FB", x"FF", x"FF",
x"18", x"13", x"13", x"13", x"13", x"13", x"13", x"13", 
x"DC", x"E3", x"1B", x"66", x"EF", x"0D", x"09", x"0B"
);
                              
               

begin 

address(4) <= pin14_a4;
address(3) <= pin13_a3;
address(2) <= pin12_a2;
address(1) <= pin11_a1;
address(0) <= pin10_a0;

pin1_d0 <= data(0);
pin2_d1 <= data(1);
pin3_d2 <= data(2);
pin4_d3 <= data(3);
pin5_d4 <= data(4);
pin6_d5 <= data(5);
pin7_d6 <= data(6);
pin9_d7 <= data(7);
data <= rom(to_integer(unsigned(address)))  when pin15_g = '0' else x"FF"; 

end logic;