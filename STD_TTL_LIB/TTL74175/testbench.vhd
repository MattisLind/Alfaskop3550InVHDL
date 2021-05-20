-- Testbench for 74175 Quad D flip flop with Reset and Clear
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL74175 is
port(
  pin1_nclr  : in std_logic;
  pin2_1q  : out std_logic;
  pin3_n1q  : out std_logic;
  pin4_1d  : in std_logic;
  pin5_2d  : in std_logic;
  pin6_n2q  : out std_logic;
  pin7_2q  : out std_logic;
  pin9_clk  : in std_logic;
  pin10_3q  : out std_logic;
  pin11_n3q  : out std_logic;
  pin12_3d  : in std_logic;  
  pin13_4d  : in std_logic;
  pin14_n4q  : out std_logic;
  pin15_4q  : out std_logic);
end component;

signal nclr,s1q,n1q,s1d,s2d,n2q,s2q,clk,s3q,n3q,s3d,s4d,n4q,s4q : std_logic;
begin

  -- Connect DUT
  DUT: TTL74175 port map(nclr,s1q,n1q,s1d,s2d,n2q,s2q,clk,s3q,n3q,s3d,s4d,n4q,s4q);
  process
  begin
    clk <= 'X';
    nclr <= '0';
    s1d <= 'X';
    s2d <= 'X';
    s3d <= 'X';
    s4d <= 'X';    
    wait for 100 ns;
    assert (s1q = '0') report "Fail s1q not cleared" severity error;
    assert (s2q = '0') report "Fail s2q not cleared" severity error;
    assert (s3q = '0') report "Fail s3q not cleared" severity error;
    assert (s4q = '0') report "Fail s4q not cleared" severity error;
    assert (n1q = '1') report "Fail n1q not set" severity error;
    assert (n2q = '1') report "Fail n2q not set" severity error;
    assert (n3q = '1') report "Fail n3q not set" severity error;
    assert (n4q = '1') report "Fail n4q not set" severity error;
    clk <= '0';
    nclr <= '1';
    s1d <= '1';
    s2d <= '1';
    s3d <= '1';
    s4d <= '1';
   
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    assert (s1q = '1') report "Fail s1q not set" severity error;
    assert (s2q = '1') report "Fail s2q not set" severity error;
    assert (s3q = '1') report "Fail s3q not set" severity error;
    assert (s4q = '1') report "Fail s4q not set" severity error;
    assert (n1q = '0') report "Fail n1q not cleared" severity error;
    assert (n2q = '0') report "Fail n2q not cleared" severity error;
    assert (n3q = '0') report "Fail n3q not cleared" severity error;
    assert (n4q = '0') report "Fail n4q not cleared" severity error;



    clk <= '0';
    nclr <= '1';
    s1d <= '0';
    s2d <= '0';
    s3d <= '0';
    s4d <= '0';
    
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    assert (s1q = '0') report "Fail s1q not cleared" severity error;
    assert (s2q = '0') report "Fail s2q not cleared" severity error;
    assert (s3q = '0') report "Fail s3q not cleared" severity error;
    assert (s4q = '0') report "Fail s4q not cleared" severity error;
    assert (n1q = '1') report "Fail n1q not set" severity error;
    assert (n2q = '1') report "Fail n2q not set" severity error;
    assert (n3q = '1') report "Fail n3q not set" severity error;
    assert (n4q = '1') report "Fail n4q not set" severity error;    

assert false report "Test done." severity note;
    wait;
  end process;
end tb;
