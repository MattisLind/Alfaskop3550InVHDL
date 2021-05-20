-- Standard Bipolar 256 x 4 bit PROM 
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity IC28_PROM256x4 is
port(
  pin1_a6  : in std_logic;
  pin2_a5  : in std_logic;
  pin3_a4  : in std_logic;
  pin4_a3  : in std_logic;
  pin5_a0  : in std_logic;
  pin6_a1  : in std_logic;
  pin7_a2  : in std_logic;
  pin9_d3  : out std_logic;
  pin10_d2  : out std_logic;
  pin11_d1  : out std_logic;  
  pin12_d0  : out std_logic;
  pin13_g1  : in std_logic;
  pin14_g2  : in std_logic;
  pin15_a7  : in std_logic);
end IC28_PROM256x4;

architecture logic of IC28_PROM256x4 is
signal address : std_logic_vector (7 downto 0);
signal data : std_logic_vector (3 downto 0);
type rom_type is array (0 to 255) of std_logic_vector(3 downto 0); 
signal rom : rom_type := ( 
x"1", x"F", x"4", x"5", x"F", x"3", x"D", x"5", x"5", x"4", x"5", x"9", x"6", x"A", x"2", x"4",

x"0", x"5", x"3", x"0", x"3", x"4", x"2", x"5", x"0", x"3", x"7", x"1", x"1", x"1", x"1", x"1",
x"1", x"1", x"1", x"1", x"1", x"1", x"1", x"1", x"1", x"1", x"1", x"C", x"6", x"C", x"E", x"2",
x"4", x"E", x"2", x"0", x"F", x"6", x"E", x"2", x"F", x"C", x"6", x"C", x"6", x"E", x"2", x"4",
x"2", x"0", x"0", x"2", x"6", x"E", x"2", x"0", x"F", x"2", x"F", x"2", x"0", x"F", x"6", x"2",
x"F", x"6", x"C", x"6", x"C", x"4", x"2", x"4", x"6", x"4", x"1", x"6", x"C", x"6", x"C", x"4",     
x"2", x"4", x"6", x"4", x"6", x"1", x"1", x"0", x"0", x"7", x"7", x"5", x"3", x"5", x"1", x"0",      
x"3", x"0", x"0", x"1", x"0", x"5", x"5", x"F", x"4", x"A", x"4", x"8", x"5", x"4", x"E", x"4", 
x"A", x"4", x"8", x"6", x"7", x"F", x"2", x"3", x"4", x"F", x"F", x"2", x"3", x"2", x"4", x"4", 
x"1", x"F", x"F", x"F", x"F", x"1", x"F", x"1", x"1", x"F", x"1", x"0", x"0", x"F", x"0", x"0", 
x"4", x"E", x"2", x"F", x"4", x"E", x"2", x"F", x"4", x"6", x"1", x"4", x"0", x"4", x"6", x"1",                        	 
x"4", x"E", x"4", x"2", x"6", x"E", x"4", x"2", x"F", x"2", x"4", x"4", x"2", x"4", x"2", x"F",                        	 
x"2", x"4", x"4", x"4", x"6", x"E", x"4", x"2", x"4", x"6", x"E", x"4", x"0", x"1", x"2", x"F",                        	 
x"0", x"0", x"2", x"6", x"F", x"F", x"2", x"0", x"F", x"6", x"6", x"F", x"6", x"0", x"0", x"4",                        	 
x"6", x"E", x"7", x"6", x"6", x"0", x"0", x"4", x"6", x"6", x"6", x"7", x"4", x"6", x"1", x"0",                        	 
x"1", x"8", x"8", x"3", x"F", x"F", x"F", x"F", x"F", x"F", x"F", x"F", x"F", x"F", x"F", x"F"
);

begin 
address(7) <= pin15_a7;
address(6) <= pin1_a6;
address(5) <= pin2_a5;
address(4) <= pin3_a4;
address(3) <= pin4_a3;
address(2) <= pin7_a2;
address(1) <= pin6_a1;
address(0) <= pin5_a0;

pin12_d0 <= data(0);
pin11_d1 <= data(1);
pin10_d2 <= data(2);
pin9_d3 <= data(3);

data <= rom(to_integer(unsigned(address)))  when pin13_g1 = '0' and pin14_g2 = '0' else x"F"; 

end logic;