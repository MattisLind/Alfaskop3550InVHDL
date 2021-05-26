-- Testbench for 74180 9-bit Odd/even Parity Generators/Checkers
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL74180 is
port(
  pin1_g : in std_logic;
  pin2_h: in std_logic;
  pin3_even  : in std_logic;
  pin4_odd   : in std_logic;
  pin5_sumeven: out std_logic;
  pin6_sumodd: out std_logic;
  pin8_a : in std_logic;	
  pin9_b   : in std_logic;
  pin10_c  : in std_logic;
  pin11_d : in std_logic;
  pin12_e   : in std_logic; 
  pin13_f  : in std_logic);
end component;

signal g,h,even,odd,sumeven,sumodd,a,b,c,d,e,f: std_logic;
begin

  -- Connect DUT
  DUT: TTL74180 port map(g,h,even,odd,sumeven,sumodd,a,b,c,d,e,f);
  process
  begin
    a <= '1';
    b <= '0';
    c <= '0';
    d <= '0';
    e <= '0';
    f <= '0';
    g <= '0';
    h <= '1';
    odd <= '0';
    even <= '1';
    wait for 100 ns;
	assert (sumeven = '1') report "Fail sumeven not high" severity error;
    assert (sumodd = '0') report "Fail sumodd not low" severity error;

    a <= '1';
    b <= '0';
    c <= '0';
    d <= '0';
    e <= '1';
    f <= '0';
    g <= '0';
    h <= '1';
    odd <= '0';
    even <= '1';
    wait for 100 ns;
	assert (sumeven = '0') report "Fail sumeven not low" severity error;
    assert (sumodd = '1') report "Fail sumodd not high" severity error;

    a <= '1';
    b <= '0';
    c <= '0';
    d <= '0';
    e <= '0';
    f <= '0';
    g <= '0';
    h <= '1';
    odd <= '1';
    even <= '0';
    wait for 100 ns;
	assert (sumeven = '0') report "Fail sumeven not low" severity error;
    assert (sumodd = '1') report "Fail sumodd not high" severity error;

    a <= '1';
    b <= '0';
    c <= '0';
    d <= '0';
    e <= '1';
    f <= '0';
    g <= '0';
    h <= '1';
    odd <= '1';
    even <= '0';
    wait for 100 ns;
	assert (sumeven = '1') report "Fail sumeven not high" severity error;
    assert (sumodd = '0') report "Fail sumodd not low" severity error;


    a <= '1';
    b <= '0';
    c <= '1';
    d <= '0';
    e <= '1';
    f <= '0';
    g <= '1';
    h <= '0';
    odd <= '1';
    even <= '1';
    wait for 100 ns;
	assert (sumeven = '0') report "Fail sumeven not low" severity error;
    assert (sumodd = '0') report "Fail sumodd not low" severity error;

    a <= '1';
    b <= '0';
    c <= '1';
    d <= '0';
    e <= '1';
    f <= '0';
    g <= '1';
    h <= '0';
    odd <= '0';
    even <= '0';
    wait for 100 ns;
	assert (sumeven = '1') report "Fail sumeven not high" severity error;
    assert (sumodd = '1') report "Fail sumodd not high" severity error;

    a <= '1';
    b <= '0';
    c <= '1';
    d <= '0';
    e <= '1';
    f <= '0';
    g <= '1';
    h <= '1';
    odd <= '1';
    even <= '1';
    wait for 100 ns;
	assert (sumeven = '0') report "Fail sumeven not low" severity error;
    assert (sumodd = '0') report "Fail sumodd not low" severity error;

    a <= '1';
    b <= '0';
    c <= '1';
    d <= '0';
    e <= '1';
    f <= '0';
    g <= '1';
    h <= '1';
    odd <= '0';
    even <= '0';
    wait for 100 ns;
	assert (sumeven = '1') report "Fail sumeven not high" severity error;
    assert (sumodd = '1') report "Fail sumodd not high" severity error;

	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
