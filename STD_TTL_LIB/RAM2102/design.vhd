-- RAM 2102 1024 by 1 bit
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM2102 is
port(
  pin1_a6  : in std_logic;
  pin2_a5  : in std_logic;
  pin3_nw  : in std_logic;
  pin4_a1  : in std_logic;
  pin5_a2  : in std_logic;
  pin6_a3  : in std_logic;
  pin7_a4  : in std_logic;
  pin8_a0 : in std_logic;
  pin11_d  : in std_logic;
  pin12_x  : out std_logic;    
  pin13_nce  : in std_logic;
  pin14_a9  : in std_logic;
  pin15_a8  : in std_logic;
  pin16_a7  : in std_logic);
end RAM2102;

architecture rtl of RAM2102 is
signal address : std_logic_vector (9 downto 0);
signal data, data_out : std_logic;
signal q : std_logic;
type RAM is array (0 to 1024) of std_logic;
signal mem : RAM := (others => '0');
begin 

  address(0) <= pin8_a0;
  address(1) <= pin4_a1;
  address(2) <= pin5_a2;
  address(3) <= pin6_a3;
  address(4) <= pin7_a4;
  address(5) <= pin2_a5;
  address(6) <= pin1_a6;
  address(7) <= pin16_a7;
  address(8) <= pin15_a8;
  address(9) <= pin14_a9;

  pin12_x  <=  q;

  data <= pin11_d;

q <= data_out when pin13_nce = '0' else 'Z'; 


MEM_WRITE: process (address, data, pin13_nce, pin3_nw) begin
  if (pin13_nce = '0' and pin3_nw = '0') then
    mem(to_integer(unsigned(address))) <= data;
  end if;
end process;


MEM_READ: process (address, pin13_nce, pin3_nw, mem) begin
  if (pin13_nce = '0' and pin3_nw = '1')  then
    data_out <= mem(to_integer(unsigned(address)));
  end if;
end process;  
  

end rtl;
