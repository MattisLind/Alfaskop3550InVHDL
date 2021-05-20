-- Testbench for 7474 Dual D flip flop with Reset and Clear
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL7474 is
port(
  pin1_n1clr  : in std_logic;
  pin2_1d  : in std_logic;
  pin3_1clk  : in std_logic;
  pin4_n1pre  : in std_logic;
  pin5_1q  : out std_logic;
  pin6_n1q  : out std_logic;
  pin8_n2q  : out std_logic;
  pin9_2q  : out std_logic;
  pin10_n2pre  : in std_logic;
  pin11_2clk  : in std_logic;
  pin12_2d  : in std_logic;  
  pin13_n2clr  : in std_logic);
end component;

signal n1clr,s1d,s1clk,n1pre,s1q,n1q,n2q,s2q,n2pre,s2clk,s2d,n2clr : std_logic;
begin

  -- Connect DUT
  DUT: TTL7474 port map(n1clr,s1d,s1clk,n1pre,s1q,n1q,n2q,s2q,n2pre,s2clk,s2d,n2clr);
  process
  begin
    s1clk <= 'X';
    n1clr <= '1';
    n1pre <= '0';
    s1d <= 'X';
    s2clk <= 'X';
    n2clr <= '1';
    n2pre <= '0';
    s2d <= 'X';    
    wait for 100 ns;
    assert (s1q = '1') report "Fail y1 not set" severity error;
    assert (n1q = '0') report "Fail y2 not cleared" severity error;
    assert (s2q = '1') report "Fail y1 not set" severity error;
    assert (n2q = '0') report "Fail y2 not cleared" severity error;
    s1clk <= 'X';
    n1clr <= '0';
    n1pre <= '1';
    s1d <= 'X';
    s2clk <= 'X';
    n2clr <= '0';
    n2pre <= '1';
    s2d <= 'X';    
    wait for 100 ns;
    assert (s1q = '0') report "Fail y1 not cleared" severity error;
    assert (n1q = '1') report "Fail y2 not set" severity error;
    assert (s2q = '0') report "Fail y1 not cleared" severity error;
    assert (n2q = '1') report "Fail y2 not set" severity error;

    s1clk <= '0';
    n1clr <= '1';
    n1pre <= '1';
    s1d <= '0';
    s2clk <= '0';
    n2clr <= '1';
    n2pre <= '1';
    s2d <= '0';
	wait for 100 ns;
    s1clk <= '1';
    s2clk <= '1';    
    wait for 100 ns;
    assert (s1q = '0') report "Fail y1 not cleared" severity error;
    assert (n1q = '1') report "Fail y2 not set" severity error;
    assert (s2q = '0') report "Fail y1 not cleared" severity error;
    assert (n2q = '1') report "Fail y2 not set" severity error;

    s1clk <= '0';
    n1clr <= '1';
    n1pre <= '1';
    s1d <= '1';
    s2clk <= '0';
    n2clr <= '1';
    n2pre <= '1';
    s2d <= '1';    
    wait for 100 ns;
    s1clk <= '1';    
    s2clk <= '1';
    wait for 100 ns;
    assert (s1q = '1') report "Fail y1 not set" severity error;
    assert (n1q = '0') report "Fail y2 not cleared" severity error;
    assert (s2q = '1') report "Fail y1 not set" severity error;
    assert (n2q = '0') report "Fail y2 not cleared" severity error;
	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
