-- Testbench for 74151 TTL multiplexor
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL74151 is
port(
  pin1_d3: in std_logic;
  pin2_d2  : in std_logic;
  pin3_d1: in std_logic;
  pin4_d0: in std_logic;
  pin5_y : out std_logic;
  pin6_w  : out std_logic;
  pin7_ng : in std_logic;
  pin9_c  : in std_logic;
  pin10_b : in std_logic;
  pin11_a  : in std_logic;
  pin12_d7   : in std_logic;
  pin13_d6   : in std_logic;
  pin14_d5   : in std_logic;
  pin15_d4   : in std_logic);
end component;

signal d3,d2,d1,d0,y,w,ng, c,b,a,d7,d6,d5,d4: std_logic;
begin

  -- Connect DUT
  DUT: TTL74151 port map(d3,d2,d1,d0,y,w,ng,c,b,a,d7,d6,d5,d4);
  process
  begin
    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';
    d0 <= 'X';
    c <= 'X';
    b <= 'X';
    a <= 'X';
    ng <= '1';
    d7 <= 'X';
    d6 <= 'X';
    d5 <= 'X';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '0') report "Fail qA not cleared" severity error;
    assert (w = '1') report "Fail qB not cleared" severity error;



    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';
    d0 <= '0';
    c <= '0';
    b <= '0';
    a <= '0';
    ng <= '0';
    d7 <= 'X';
    d6 <= 'X';
    d5 <= 'X';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '0') report "Fail Y not cleared" severity error;
    assert (w = '1') report "Fail W not set" severity error;
 
 
    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';
    d0 <= '1';
    c <= '0';
    b <= '0';
    a <= '0';
    ng <= '0';
    d7 <= 'X';
    d6 <= 'X';
    d5 <= 'X';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '1') report "Fail Y not cleared" severity error;
    assert (w = '0') report "Fail W not set" severity error; 
 
 
 

    d3 <= 'X';
    d2 <= 'X';
    d1 <= '0';
    d0 <= 'X';
    c <= '0';
    b <= '0';
    a <= '1';
    ng <= '0';
    d7 <= 'X';
    d6 <= 'X';
    d5 <= 'X';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '0') report "Fail Y not cleared" severity error;
    assert (w = '1') report "Fail W not set" severity error;
 
 
    d3 <= 'X';
    d2 <= 'X';
    d1 <= '1';
    d0 <= 'X';
    c <= '0';
    b <= '0';
    a <= '1';
    ng <= '0';
    d7 <= 'X';
    d6 <= 'X';
    d5 <= 'X';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '1') report "Fail Y not cleared" severity error;
    assert (w = '0') report "Fail W not set" severity error; 
    
 
 

    d3 <= 'X';
    d2 <= '0';
    d1 <= 'X';
    d0 <= 'X';
    c <= '0';
    b <= '1';
    a <= '0';
    ng <= '0';
    d7 <= 'X';
    d6 <= 'X';
    d5 <= 'X';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '0') report "Fail Y not cleared" severity error;
    assert (w = '1') report "Fail W not set" severity error;
 
 
    d3 <= 'X';
    d2 <= '1';
    d1 <= 'X';
    d0 <= 'X';
    c <= '0';
    b <= '1';
    a <= '0';
    ng <= '0';
    d7 <= 'X';
    d6 <= 'X';
    d5 <= 'X';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '1') report "Fail Y not cleared" severity error;
    assert (w = '0') report "Fail W not set" severity error; 
    
    
    

    d3 <= '0';
    d2 <= 'X';
    d1 <= 'X';
    d0 <= 'X';
    c <= '0';
    b <= '1';
    a <= '1';
    ng <= '0';
    d7 <= 'X';
    d6 <= 'X';
    d5 <= 'X';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '0') report "Fail Y not cleared" severity error;
    assert (w = '1') report "Fail W not set" severity error;
 
 
    d3 <= '1';
    d2 <= 'X';
    d1 <= 'X';
    d0 <= 'X';
    c <= '0';
    b <= '1';
    a <= '1';
    ng <= '0';
    d7 <= 'X';
    d6 <= 'X';
    d5 <= 'X';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '1') report "Fail Y not cleared" severity error;
    assert (w = '0') report "Fail W not set" severity error; 
    
    
    

    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';
    d0 <= 'X';
    c <= '1';
    b <= '0';
    a <= '0';
    ng <= '0';
    d7 <= 'X';
    d6 <= 'X';
    d5 <= 'X';
    d4 <= '0';
    wait for 100 ns;
	assert (y = '0') report "Fail Y not cleared" severity error;
    assert (w = '1') report "Fail W not set" severity error;
 
 
    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';
    d0 <= 'X';
    c <= '1';
    b <= '0';
    a <= '0';
    ng <= '0';
    d7 <= 'X';
    d6 <= 'X';
    d5 <= 'X';
    d4 <= '1';
    wait for 100 ns;
	assert (y = '1') report "Fail Y not cleared" severity error;
    assert (w = '0') report "Fail W not set" severity error; 
    
    
    

    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';
    d0 <= 'X';
    c <= '1';
    b <= '0';
    a <= '1';
    ng <= '0';
    d7 <= 'X';
    d6 <= 'X';
    d5 <= '0';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '0') report "Fail Y not cleared" severity error;
    assert (w = '1') report "Fail W not set" severity error;
 
 
    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';
    d0 <= 'X';
    c <= '1';
    b <= '0';
    a <= '1';
    ng <= '0';
    d7 <= 'X';
    d6 <= 'X';
    d5 <= '1';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '1') report "Fail Y not cleared" severity error;
    assert (w = '0') report "Fail W not set" severity error; 
 
 
  d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';
    d0 <= 'X';
    c <= '1';
    b <= '1';
    a <= '0';
    ng <= '0';
    d7 <= 'X';
    d6 <= '0';
    d5 <= 'X';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '0') report "Fail Y not cleared" severity error;
    assert (w = '1') report "Fail W not set" severity error;
 
 
    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';
    d0 <= 'X';
    c <= '1';
    b <= '1';
    a <= '0';
    ng <= '0';
    d7 <= 'X';
    d6 <= '1';
    d5 <= 'X';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '1') report "Fail Y not cleared" severity error;
    assert (w = '0') report "Fail W not set" severity error; 
 
 
  d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';
    d0 <= 'X';
    c <= '1';
    b <= '1';
    a <= '1';
    ng <= '0';
    d7 <= '0';
    d6 <= 'X';
    d5 <= 'X';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '0') report "Fail Y not cleared" severity error;
    assert (w = '1') report "Fail W not set" severity error;
 
 
    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';
    d0 <= 'X';
    c <= '1';
    b <= '1';
    a <= '1';
    ng <= '0';
    d7 <= '1';
    d6 <= 'X';
    d5 <= 'X';
    d4 <= 'X';
    wait for 100 ns;
	assert (y = '1') report "Fail Y not cleared" severity error;
    assert (w = '0') report "Fail W not set" severity error; 
 
 
	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
