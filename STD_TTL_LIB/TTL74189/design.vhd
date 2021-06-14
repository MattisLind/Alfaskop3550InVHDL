-- TTL 74189 16 x 4 bit SRAM
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity TTL74189 is
port(
  pin1_a0  : in std_logic;
  pin2_ncs  : in std_logic;
  pin3_nwe  : in std_logic;
  pin4_d0  : in std_logic;
  pin5_nq0  : out std_logic;
  pin6_d1  : in std_logic;
  pin7_nq1  : out std_logic;
  pin9_nq2  : out std_logic;
  pin10_d2  : in std_logic;
  pin11_nq3  : out std_logic;  
  pin12_d3  : in std_logic;
  pin13_a3  : in std_logic;
  pin14_a2  : in std_logic;
  pin15_a1  : in std_logic);
end TTL74189;

architecture rtl of TTL74189 is
signal address : std_logic_vector (7 downto 0);
signal data, data_out : std_logic_vector (3 downto 0);
signal q : std_logic_vector (3 downto 0);
type RAM is array (0 to 15) of std_logic_vector (3 downto 0);
signal mem : RAM := (others => (others=>'0') );
begin 

  address(3) <= pin13_a3;
  address(2) <= pin14_a2;
  address(1) <= pin15_a1;
  address(0) <= pin1_a0;

  pin5_nq0  <=  q(0);
  pin7_nq1  <=  q(1);
  pin9_nq2  <=  q(2);
  pin11_nq3 <=  q(3);

  data(0) <= pin4_d0;
  data(1) <= pin6_d1;
  data(2) <= pin10_d2;
  data(3) <= pin12_d3;

q <= not data_out when pin2_ncs = '0' else (others=>'Z'); 


MEM_WRITE: process (address, data, pin2_ncs, pin3_nwe) begin
  if (pin2_ncs = '0' and pin3_nwe = '0') then
    mem(to_integer(unsigned(address))) <= data;
  end if;
end process;


MEM_READ: process (address, pin2_ncs, pin3_nwe, mem) begin
  if (pin2_ncs = '0' and pin3_nwe = '1')  then
    data_out <= mem(to_integer(unsigned(address)));
  end if;
end process;  
  

end rtl;
