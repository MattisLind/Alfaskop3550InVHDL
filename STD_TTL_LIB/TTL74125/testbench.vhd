-- Testbench TTL 74125 quad three state gates.
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL74125 is
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
end component;

signal s1c,s1a,s1y,s2c,s2a,s2y,s3y,s3a,s3c,s4y,s4a,s4c: std_logic;
begin

  -- Connect DUT
  DUT: TTL74125 port map(s1c,s1a,s1y,s2c,s2a,s2y,s3y,s3a,s3c,s4y,s4a,s4c);
  process
  begin
    s1c <= '1';
    s1a <= 'X';
    s2c <= '1';
    s2a <= 'X';
    s3c <= '1';
    s3a <= 'X';
    s4c <= '1';
    s4a <= 'X';
    wait for 100 ns;
	assert (s1y = 'Z') report "Fail s1y not three-state" severity error;
    assert (s2y = 'Z') report "Fail s2y not three-state" severity error;
    assert (s3y = 'Z') report "Fail s3y not three-state" severity error;
    assert (s4y = 'Z') report "Fail s4y not three-state" severity error;


    s1c <= '0';
    s1a <= '1';
    s2c <= '0';
    s2a <= '1';
    s3c <= '0';
    s3a <= '1';
    s4c <= '0';
    s4a <= '1';
    wait for 100 ns;
	assert (s1y = '1') report "Fail s1y not high" severity error;
    assert (s2y = '1') report "Fail s2y not high" severity error;
    assert (s3y = '1') report "Fail s3y not high" severity error;
    assert (s4y = '1') report "Fail s4y not high" severity error;
    
    s1c <= '0';
    s1a <= '0';
    s2c <= '0';
    s2a <= '0';
    s3c <= '0';
    s3a <= '0';
    s4c <= '0';
    s4a <= '0';
    wait for 100 ns;
	assert (s1y = '0') report "Fail s1y not low" severity error;
    assert (s2y = '0') report "Fail s2y not low" severity error;
    assert (s3y = '0') report "Fail s3y not low" severity error;
    assert (s4y = '0') report "Fail s4y not low" severity error;    

	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
