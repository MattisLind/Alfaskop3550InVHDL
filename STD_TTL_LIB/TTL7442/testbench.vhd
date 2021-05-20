-- Testbench for TTL 7442 decimal decoder
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL7442 is
port(
  pin1_ny0  : out std_logic;
  pin2_ny1  : out std_logic;
  pin3_ny2  : out std_logic;
  pin4_ny3  : out std_logic;
  pin5_ny4  : out std_logic;
  pin6_ny5  : out std_logic;
  pin7_ny6  : out std_logic;
  pin9_ny7  : out std_logic;
  pin10_ny8  : out std_logic;
  pin11_ny9  : out std_logic;
  pin12_a3  : in std_logic;  
  pin13_a2  : in std_logic;
  pin14_a1  : in std_logic;
  pin15_a0  : in std_logic);
end component;

signal ny0,ny1,ny2,ny3,ny4,ny5,ny6,ny7,ny8,ny9,a3,a2,a1,a0: std_logic;
begin

  -- Connect DUT
  DUT: TTL7442 port map(ny0,ny1,ny2,ny3,ny4,ny5,ny6,ny7,ny8,ny9,a3,a2,a1,a0);
  process
  begin
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    a0 <= '0';
    wait for 100 ns;
    assert (ny0 = '0') report "Fail ny0 not cleared" severity error;
    assert (ny1 = '1') report "Fail ny0 not set" severity error;
    assert (ny2 = '1') report "Fail ny0 not set" severity error;
    assert (ny3 = '1') report "Fail ny0 not set" severity error;
    assert (ny4 = '1') report "Fail ny0 not set" severity error;
    assert (ny5 = '1') report "Fail ny0 not set" severity error;
    assert (ny6 = '1') report "Fail ny0 not set" severity error;
    assert (ny7 = '1') report "Fail ny0 not set" severity error;
    assert (ny8 = '1') report "Fail ny0 not set" severity error;
    assert (ny9 = '1') report "Fail ny0 not set" severity error;
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    a0 <= '1';
    wait for 100 ns;
    assert (ny0 = '1') report "Fail ny0 not set" severity error;
    assert (ny1 = '0') report "Fail ny0 not cleared" severity error;
    assert (ny2 = '1') report "Fail ny0 not set" severity error;
    assert (ny3 = '1') report "Fail ny0 not set" severity error;
    assert (ny4 = '1') report "Fail ny0 not set" severity error;
    assert (ny5 = '1') report "Fail ny0 not set" severity error;
    assert (ny6 = '1') report "Fail ny0 not set" severity error;
    assert (ny7 = '1') report "Fail ny0 not set" severity error;
    assert (ny8 = '1') report "Fail ny0 not set" severity error;
    assert (ny9 = '1') report "Fail ny0 not set" severity error;
    a3 <= '0';
    a2 <= '0';
    a1 <= '1';
    a0 <= '0';
    wait for 100 ns;
    assert (ny0 = '1') report "Fail ny0 not set" severity error;
    assert (ny1 = '1') report "Fail ny0 not set" severity error;
    assert (ny2 = '0') report "Fail ny0 not cleared" severity error;
    assert (ny3 = '1') report "Fail ny0 not set" severity error;
    assert (ny4 = '1') report "Fail ny0 not set" severity error;
    assert (ny5 = '1') report "Fail ny0 not set" severity error;
    assert (ny6 = '1') report "Fail ny0 not set" severity error;
    assert (ny7 = '1') report "Fail ny0 not set" severity error;
    assert (ny8 = '1') report "Fail ny0 not set" severity error;
    assert (ny9 = '1') report "Fail ny0 not set" severity error;
    a3 <= '0';
    a2 <= '0';
    a1 <= '1';
    a0 <= '1';
    wait for 100 ns;
    assert (ny0 = '1') report "Fail ny0 not set" severity error;
    assert (ny1 = '1') report "Fail ny0 not set" severity error;
    assert (ny2 = '1') report "Fail ny0 not set" severity error;
    assert (ny3 = '0') report "Fail ny0 not cleared" severity error;
    assert (ny4 = '1') report "Fail ny0 not set" severity error;
    assert (ny5 = '1') report "Fail ny0 not set" severity error;
    assert (ny6 = '1') report "Fail ny0 not set" severity error;
    assert (ny7 = '1') report "Fail ny0 not set" severity error;
    assert (ny8 = '1') report "Fail ny0 not set" severity error;
    assert (ny9 = '1') report "Fail ny0 not set" severity error;
    a3 <= '0';
    a2 <= '1';
    a1 <= '0';
    a0 <= '0';
    wait for 100 ns;
    assert (ny0 = '1') report "Fail ny0 not set" severity error;
    assert (ny1 = '1') report "Fail ny0 not set" severity error;
    assert (ny2 = '1') report "Fail ny0 not set" severity error;
    assert (ny3 = '1') report "Fail ny0 not set" severity error;
    assert (ny4 = '0') report "Fail ny0 not cleared" severity error;
    assert (ny5 = '1') report "Fail ny0 not set" severity error;
    assert (ny6 = '1') report "Fail ny0 not set" severity error;
    assert (ny7 = '1') report "Fail ny0 not set" severity error;
    assert (ny8 = '1') report "Fail ny0 not set" severity error;
    assert (ny9 = '1') report "Fail ny0 not set" severity error;
    a3 <= '0';
    a2 <= '1';
    a1 <= '0';
    a0 <= '1';
    wait for 100 ns;
    assert (ny0 = '1') report "Fail ny0 not set" severity error;
    assert (ny1 = '1') report "Fail ny0 not set" severity error;
    assert (ny2 = '1') report "Fail ny0 not set" severity error;
    assert (ny3 = '1') report "Fail ny0 not set" severity error;
    assert (ny4 = '1') report "Fail ny0 not set" severity error;
    assert (ny5 = '0') report "Fail ny0 not cleared" severity error;
    assert (ny6 = '1') report "Fail ny0 not set" severity error;
    assert (ny7 = '1') report "Fail ny0 not set" severity error;
    assert (ny8 = '1') report "Fail ny0 not set" severity error;
    assert (ny9 = '1') report "Fail ny0 not set" severity error;
    a3 <= '0';
    a2 <= '1';
    a1 <= '1';
    a0 <= '0';
    wait for 100 ns;
    assert (ny0 = '1') report "Fail ny0 not set" severity error;
    assert (ny1 = '1') report "Fail ny0 not set" severity error;
    assert (ny2 = '1') report "Fail ny0 not set" severity error;
    assert (ny3 = '1') report "Fail ny0 not set" severity error;
    assert (ny4 = '1') report "Fail ny0 not set" severity error;
    assert (ny5 = '1') report "Fail ny0 not set" severity error;
    assert (ny6 = '0') report "Fail ny0 not cleared" severity error;
    assert (ny7 = '1') report "Fail ny0 not set" severity error;
    assert (ny8 = '1') report "Fail ny0 not set" severity error;
    assert (ny9 = '1') report "Fail ny0 not set" severity error;
    a3 <= '0';
    a2 <= '1';
    a1 <= '1';
    a0 <= '1';
    wait for 100 ns;
    assert (ny0 = '1') report "Fail ny0 not set" severity error;
    assert (ny1 = '1') report "Fail ny0 not set" severity error;
    assert (ny2 = '1') report "Fail ny0 not set" severity error;
    assert (ny3 = '1') report "Fail ny0 not set" severity error;
    assert (ny4 = '1') report "Fail ny0 not set" severity error;
    assert (ny5 = '1') report "Fail ny0 not set" severity error;
    assert (ny6 = '1') report "Fail ny0 not set" severity error;
    assert (ny7 = '0') report "Fail ny0 not cleared" severity error;
    assert (ny8 = '1') report "Fail ny0 not set" severity error;
    assert (ny9 = '1') report "Fail ny0 not set" severity error;
    a3 <= '1';
    a2 <= '0';
    a1 <= '0';
    a0 <= '0';
    wait for 100 ns;
    assert (ny0 = '1') report "Fail ny0 not set" severity error;
    assert (ny1 = '1') report "Fail ny0 not set" severity error;
    assert (ny2 = '1') report "Fail ny0 not set" severity error;
    assert (ny3 = '1') report "Fail ny0 not set" severity error;
    assert (ny4 = '1') report "Fail ny0 not set" severity error;
    assert (ny5 = '1') report "Fail ny0 not set" severity error;
    assert (ny6 = '1') report "Fail ny0 not set" severity error;
    assert (ny7 = '1') report "Fail ny0 not set" severity error;
    assert (ny8 = '0') report "Fail ny0 not cleared" severity error;
    assert (ny9 = '1') report "Fail ny0 not set" severity error;
    a3 <= '1';
    a2 <= '0';
    a1 <= '0';
    a0 <= '1';
    wait for 100 ns;
    assert (ny0 = '1') report "Fail ny0 not set" severity error;
    assert (ny1 = '1') report "Fail ny0 not set" severity error;
    assert (ny2 = '1') report "Fail ny0 not set" severity error;
    assert (ny3 = '1') report "Fail ny0 not set" severity error;
    assert (ny4 = '1') report "Fail ny0 not set" severity error;
    assert (ny5 = '1') report "Fail ny0 not set" severity error;
    assert (ny6 = '1') report "Fail ny0 not set" severity error;
    assert (ny7 = '1') report "Fail ny0 not set" severity error;
    assert (ny8 = '1') report "Fail ny0 not set" severity error;
    assert (ny9 = '0') report "Fail ny0 not cleared" severity error;
    
	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
