-- Testbench for 74155 TTL demultiplexer
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL74155 is
port(
  pin1_1c  : out std_logic;
  pin2_n1g  : out std_logic;
  pin3_b  : out std_logic;
  pin4_1y3  : out std_logic;
  pin5_1y2  : out std_logic;
  pin6_1y1  : out std_logic;
  pin7_1y0  : out std_logic;
  pin9_2y0  : out std_logic;
  pin10_2y1  : out std_logic;
  pin11_2y2  : out std_logic;  
  pin12_2y3  : out std_logic;
  pin13_a  : out std_logic;
  pin14_n2g  : out std_logic;
  pin15_n2c  : out std_logic);
end component;

signal s1c,n1g,b,s1y3,s1y2,s1y1,s1y0,s2y0,s2y1,s2y2,s2y3,a,n2g,n2c: std_logic;
begin

  -- Connect DUT
  DUT: TTL74155 port map(s1c,n1g,b,s1y3,s1y2,s1y1,s1y0,s2y0,s2y1,s2y2,s2y3,a,n2g,n2c);
  process
  begin
    s1c <= 'X';
    n1g <= '1';
    n2c <= 'X';
    n2g <= '1';
    b <= 'X';    
    a <= 'X';
    wait for 100 ns;
    assert (s1y0 = '1') report "Fail s1y0 not set" severity error;
    assert (s1y1 = '1') report "Fail s1y1 not set" severity error;
    assert (s1y2 = '1') report "Fail s1y2 not set" severity error;
    assert (s1y3 = '1') report "Fail s1y3 not set" severity error;
    assert (s2y0 = '1') report "Fail s2y0 not set" severity error;
    assert (s2y1 = '1') report "Fail s2y1 not set" severity error;
    assert (s2y2 = '1') report "Fail s2y2 not set" severity error;
    assert (s2y3 = '1') report "Fail s2y3 not set" severity error;

    s1c <= '1';
    n1g <= '0';
    n2c <= '0';
    n2g <= '0';
    b <= '0';    
    a <= '0';
    wait for 100 ns;
    assert (s1y0 = '0') report "Fail s1y0 not cleared" severity error;
    assert (s1y1 = '1') report "Fail s1y1 not set" severity error;
    assert (s1y2 = '1') report "Fail s1y2 not set" severity error;
    assert (s1y3 = '1') report "Fail s1y3 not set" severity error;
    assert (s2y0 = '0') report "Fail s2y0 not cleared" severity error;
    assert (s2y1 = '1') report "Fail s2y1 not set" severity error;
    assert (s2y2 = '1') report "Fail s2y2 not set" severity error;
    assert (s2y3 = '1') report "Fail s2y3 not set" severity error;  

    s1c <= '1';
    n1g <= '0';
    n2c <= '0';
    n2g <= '0';
    b <= '0';    
    a <= '1';
    wait for 100 ns;
    assert (s1y0 = '1') report "Fail s1y0 not set" severity error;
    assert (s1y1 = '0') report "Fail s1y1 not cleared" severity error;
    assert (s1y2 = '1') report "Fail s1y2 not set" severity error;
    assert (s1y3 = '1') report "Fail s1y3 not set" severity error;
    assert (s2y0 = '1') report "Fail s2y0 not set" severity error;
    assert (s2y1 = '0') report "Fail s2y1 not cleared" severity error;
    assert (s2y2 = '1') report "Fail s2y2 not set" severity error;
    assert (s2y3 = '1') report "Fail s2y3 not set" severity error;  


    s1c <= '1';
    n1g <= '0';
    n2c <= '0';
    n2g <= '0';
    b <= '1';    
    a <= '0';
    wait for 100 ns;
    assert (s1y0 = '1') report "Fail s1y0 not set" severity error;
    assert (s1y1 = '1') report "Fail s1y1 not set" severity error;
    assert (s1y2 = '0') report "Fail s1y2 not cleared" severity error;
    assert (s1y3 = '1') report "Fail s1y3 not set" severity error;
    assert (s2y0 = '1') report "Fail s2y0 not set" severity error;
    assert (s2y1 = '1') report "Fail s2y1 not set" severity error;
    assert (s2y2 = '0') report "Fail s2y2 not cleared" severity error;
    assert (s2y3 = '1') report "Fail s2y3 not set" severity error;  


    s1c <= '1';
    n1g <= '0';
    n2c <= '0';
    n2g <= '0';
    b <= '1';    
    a <= '1';
    wait for 100 ns;
    assert (s1y0 = '1') report "Fail s1y0 not set" severity error;
    assert (s1y1 = '1') report "Fail s1y1 not set" severity error;
    assert (s1y2 = '1') report "Fail s1y2 not set" severity error;
    assert (s1y3 = '0') report "Fail s1y3 not cleared" severity error;
    assert (s2y0 = '1') report "Fail s2y0 not set" severity error;
    assert (s2y1 = '1') report "Fail s2y1 not set" severity error;
    assert (s2y2 = '1') report "Fail s2y2 not set" severity error;
    assert (s2y3 = '0') report "Fail s2y3 not cleared" severity error;  


    s1c <= '0';
    n1g <= 'X';
    n2c <= '1';
    n2g <= 'X';
    b <= 'X';    
    a <= 'X';
    wait for 100 ns;
    assert (s1y0 = '1') report "Fail s1y0 not set" severity error;
    assert (s1y1 = '1') report "Fail s1y1 not set" severity error;
    assert (s1y2 = '1') report "Fail s1y2 not set" severity error;
    assert (s1y3 = '1') report "Fail s1y3 not set" severity error;
    assert (s2y0 = '1') report "Fail s2y0 not set" severity error;
    assert (s2y1 = '1') report "Fail s2y1 not set" severity error;
    assert (s2y2 = '1') report "Fail s2y2 not set" severity error;
    assert (s2y3 = '1') report "Fail s2y3 not set" severity error;  


	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
