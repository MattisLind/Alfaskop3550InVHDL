-- Testbench for 74157 TTL shift register
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL74157 is
port(
  pin1_select : in std_logic;
  pin2_1a: in std_logic;
  pin3_1b  : in std_logic;
  pin4_1y   : out std_logic;
  pin5_2a: in std_logic;
  pin6_2b: in std_logic;
  pin7_2y   : out std_logic;
  pin9_3y   : out std_logic;
  pin10_3b  : in std_logic;
  pin11_3a : in std_logic;
  pin12_4y   : out std_logic; 
  pin13_4b  : in std_logic;
  pin14_4a : in std_logic;
  pin15_strobe  : in std_logic);
end component;

signal sselect,s1a,s1b,s1y,s2a,s2b,s2y,s3y,s3b,s3a,s4y,s4b,s4a,strobe: std_logic;
begin

  -- Connect DUT
  DUT: TTL74157 port map(sselect,s1a,s1b,s1y,s2a,s2b,s2y,s3y,s3b,s3a,s4y,s4b,s4a,strobe);
  process
  begin
    s1a <= 'X';
    s1b <= 'X';
    s2a <= 'X';
    s2b <= 'X';
    s3a <= 'X';
    s3b <= 'X';
    s4a <= 'X';
    s4b <= 'X';
    sselect <= 'X';
    strobe <= '1';
    wait for 100 ns;
	assert (s1y = '0') report "Fail qA not cleared" severity error;
    assert (s2y = '0') report "Fail qB not cleared" severity error;
    assert (s3y = '0') report "Fail qC not cleared" severity error;
    assert (s4y = '0') report "Fail qD not cleared" severity error;
    s1a <= '0';
    s1b <= 'X';
    s2a <= '0';
    s2b <= 'X';
    s3a <= '0';
    s3b <= 'X';
    s4a <= '0';
    s4b <= 'X';
    sselect <= '0';
    strobe <= '0';
    wait for 100 ns;
	assert (s1y = '0') report "Fail qA not cleared" severity error;
    assert (s2y = '0') report "Fail qB not cleared" severity error;
    assert (s3y = '0') report "Fail qC not cleared" severity error;
    assert (s4y = '0') report "Fail qD not cleared" severity error;

	s1a <= '1';
    s1b <= 'X';
    s2a <= '1';
    s2b <= 'X';
    s3a <= '1';
    s3b <= 'X';
    s4a <= '1';
    s4b <= 'X';
    sselect <= '0';
    strobe <= '0';
    wait for 100 ns;
	assert (s1y = '1') report "Fail qA not cleared" severity error;
    assert (s2y = '1') report "Fail qB not cleared" severity error;
    assert (s3y = '1') report "Fail qC not cleared" severity error;
    assert (s4y = '1') report "Fail qD not cleared" severity error;

	s1a <= 'X';
    s1b <= '0';
    s2a <= 'X';
    s2b <= '0';
    s3a <= 'X';
    s3b <= '0';
    s4a <= 'X';
    s4b <= '0';
    sselect <= '1';
    strobe <= '0';
    wait for 100 ns;
	assert (s1y = '0') report "Fail qA not cleared" severity error;
    assert (s2y = '0') report "Fail qB not cleared" severity error;
    assert (s3y = '0') report "Fail qC not cleared" severity error;
    assert (s4y = '0') report "Fail qD not cleared" severity error;

	s1a <= 'X';
    s1b <= '1';
    s2a <= 'X';
    s2b <= '1';
    s3a <= 'X';
    s3b <= '1';
    s4a <= 'X';
    s4b <= '1';
    sselect <= '1';
    strobe <= '0';
    wait for 100 ns;
	assert (s1y = '1') report "Fail qA not cleared" severity error;
    assert (s2y = '1') report "Fail qB not cleared" severity error;
    assert (s3y = '1') report "Fail qC not cleared" severity error;
    assert (s4y = '1') report "Fail qD not cleared" severity error;

	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
