-- Testbench for TTL DM8214 TTL Multiplexor with three state output
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTLDM8214 is
port(
  pin1_n1g: in std_logic;
  pin2_b  : in std_logic;
  pin3_1c3: in std_logic;
  pin4_1c2: in std_logic;
  pin5_1c1 : in std_logic;
  pin6_1c0  : in std_logic;
  pin7_1y : out std_logic;
  pin9_2y  : out std_logic;
  pin10_2c0 : in std_logic;
  pin11_2c1  : in std_logic;
  pin12_2c2   : in std_logic;
  pin13_2c3   : in std_logic;
  pin14_a   : in std_logic;
  pin15_n2g   : in std_logic);
end component;

signal n1g,b,s1c3, s1c2, s1c1, s1c0, s1y, s2y, s2c0, s2c1, s2c2, s2c3, a, n2g: std_logic;
begin

  -- Connect DUT
  DUT: TTLDM8214 port map(n1g,b,s1c3, s1c2, s1c1, s1c0, s1y, s2y, s2c0, s2c1, s2c2, s2c3, a, n2g);
  process
  begin
    n1g <= '1';
    b <= 'X';
    s1c3 <= 'X';
    s1c2 <= 'X';
    s1c1 <= 'X';
    s1c0 <= 'X';
    s2c0 <= 'X';
    s2c1 <= 'X';
    s2c2 <= 'X';
    s2c3 <= 'X';
    a <= 'X';
    n2g <= '1';
    wait for 100 ns;
	assert (s1y = 'Z') report "Fail s1y not three-state." severity error;
    assert (s2y = 'Z') report "Fail s2y not thres-state." severity error;

    n1g <= '0';
    b <= '0';
    s1c3 <= 'X';
    s1c2 <= 'X';
    s1c1 <= 'X';
    s1c0 <= '0';
    s2c0 <= '0';
    s2c1 <= 'X';
    s2c2 <= 'X';
    s2c3 <= 'X';
    a <= '0';
    n2g <= '0';
    wait for 100 ns;
	assert (s1y = '0') report "Fail s1y not low" severity error;
    assert (s2y = '0') report "Fail s1y not low" severity error;

    n1g <= '0';
    b <= '0';
    s1c3 <= 'X';
    s1c2 <= 'X';
    s1c1 <= 'X';
    s1c0 <= '1';
    s2c0 <= '1';
    s2c1 <= 'X';
    s2c2 <= 'X';
    s2c3 <= 'X';
    a <= '0';
    n2g <= '0';
    wait for 100 ns;
	assert (s1y = '1') report "Fail s1y not high" severity error;
    assert (s2y = '1') report "Fail s1y not high" severity error;

    n1g <= '0';
    b <= '0';
    s1c3 <= 'X';
    s1c2 <= 'X';
    s1c1 <= '0';
    s1c0 <= 'X';
    s2c0 <= 'X';
    s2c1 <= '0';
    s2c2 <= 'X';
    s2c3 <= 'X';
    a <= '1';
    n2g <= '0';
    wait for 100 ns;
	assert (s1y = '0') report "Fail s1y not low" severity error;
    assert (s2y = '0') report "Fail s1y not low" severity error;

    n1g <= '0';
    b <= '0';
    s1c3 <= 'X';
    s1c2 <= 'X';
    s1c1 <= '1';
    s1c0 <= 'X';
    s2c0 <= 'X';
    s2c1 <= '1';
    s2c2 <= 'X';
    s2c3 <= 'X';
    a <= '1';
    n2g <= '0';
    wait for 100 ns;
	assert (s1y = '1') report "Fail s1y not high" severity error;
    assert (s2y = '1') report "Fail s1y not high" severity error;

    n1g <= '0';
    b <= '1';
    s1c3 <= 'X';
    s1c2 <= '0';
    s1c1 <= 'X';
    s1c0 <= 'X';
    s2c0 <= 'X';
    s2c1 <= 'X';
    s2c2 <= '0';
    s2c3 <= 'X';
    a <= '0';
    n2g <= '0';
    wait for 100 ns;
	assert (s1y = '0') report "Fail s1y not low" severity error;
    assert (s2y = '0') report "Fail s1y not low" severity error;


    n1g <= '0';
    b <= '1';
    s1c3 <= 'X';
    s1c2 <= '1';
    s1c1 <= 'X';
    s1c0 <= 'X';
    s2c0 <= 'X';
    s2c1 <= 'X';
    s2c2 <= '1';
    s2c3 <= 'X';
    a <= '0';
    n2g <= '0';
    wait for 100 ns;
	assert (s1y = '1') report "Fail s1y not high" severity error;
    assert (s2y = '1') report "Fail s1y not high" severity error;
    
    n1g <= '0';
    b <= '1';
    s1c3 <= '0';
    s1c2 <= 'X';
    s1c1 <= 'X';
    s1c0 <= 'X';
    s2c0 <= 'X';
    s2c1 <= 'X';
    s2c2 <= 'X';
    s2c3 <= '0';
    a <= '1';
    n2g <= '0';
    wait for 100 ns;
	assert (s1y = '0') report "Fail s1y not low" severity error;
    assert (s2y = '0') report "Fail s1y not low" severity error;


    n1g <= '0';
    b <= '1';
    s1c3 <= '1';
    s1c2 <= 'X';
    s1c1 <= 'X';
    s1c0 <= 'X';
    s2c0 <= 'X';
    s2c1 <= 'X';
    s2c2 <= 'X';
    s2c3 <= '1';
    a <= '1';
    n2g <= '0';
    wait for 100 ns;
	assert (s1y = '1') report "Fail s1y not high" severity error;
    assert (s2y = '1') report "Fail s1y not high" severity error;

	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
