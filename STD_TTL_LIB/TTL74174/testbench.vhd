-- Testbench for 74174 Hex D flip flop with Reset and Clear
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL74174 is
port(
  pin1_nclr  : in std_logic;
  pin2_1q  : out std_logic;
  pin3_1d  : in std_logic;
  pin4_2d  : in std_logic;
  pin5_2q  : out std_logic;
  pin6_3d  : in std_logic;
  pin7_3q  : out std_logic;
  pin9_clk  : in std_logic;
  pin10_4q  : out std_logic;
  pin11_4d  : in std_logic;
  pin12_5d  : in std_logic;  
  pin13_5q  : out std_logic;
  pin14_6d  : in std_logic;
  pin15_6q  : out std_logic);
end component;

signal nclr,s1q,s1d,s2d,s2q,s3d,s3q,clk,s4q,s4d,s5d,s5q,s6d,s6q : std_logic;
begin

  -- Connect DUT
  DUT: TTL74174 port map(nclr,s1q,s1d,s2d,s2q,s3d,s3q,clk,s4q,s4d,s5d,s5q,s6d,s6q);
  process
  begin
    clk <= 'X';
    nclr <= '0';
    s1d <= 'X';
    wait for 100 ns;
    assert (s1q = '0') report "Fail s1q not cleared" severity error;
    assert (s2q = '0') report "Fail s2q not cleared" severity error;
    assert (s3q = '0') report "Fail s3q not cleared" severity error;
    assert (s4q = '0') report "Fail s4q not cleared" severity error;
    assert (s5q = '0') report "Fail s5q not cleared" severity error;
    assert (s6q = '0') report "Fail s6q not cleared" severity error;


    clk <= '0';
    nclr <= '1';
    s1d <= '1';
    s2d <= '1';
    s3d <= '1';
    s4d <= '1';
    s5d <= '1';
    s6d <= '1';    
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    assert (s1q = '1') report "Fail s1q not set" severity error;
    assert (s2q = '1') report "Fail s2q not set" severity error;
    assert (s3q = '1') report "Fail s3q not set" severity error;
    assert (s4q = '1') report "Fail s4q not set" severity error;
    assert (s5q = '1') report "Fail s5q not set" severity error;
    assert (s6q = '1') report "Fail s6q not set" severity error;


    clk <= '0';
    nclr <= '1';
    s1d <= '0';
    s2d <= '0';
    s3d <= '0';
    s4d <= '0';
    s5d <= '0';
    s6d <= '0';    
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    assert (s1q = '0') report "Fail s1q not cleared" severity error;
    assert (s2q = '0') report "Fail s2q not cleared" severity error;
    assert (s3q = '0') report "Fail s3q not cleared" severity error;
    assert (s4q = '0') report "Fail s4q not cleared" severity error;
    assert (s5q = '0') report "Fail s5q not cleared" severity error;
    assert (s6q = '0') report "Fail s6q not cleared" severity error;    

assert false report "Test done." severity note;
    wait;
  end process;
end tb;
