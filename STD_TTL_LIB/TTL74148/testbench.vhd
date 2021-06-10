-- Testbench for TTL 74148 8-Line to to 3-line Priority Encoder
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL74148 is
port(
  pin1_i4  : in std_logic;
  pin2_i5  : in std_logic;
  pin3_i6  : in std_logic;
  pin4_i7  : in std_logic;
  pin5_ei  : in std_logic;
  pin6_a2  : out std_logic;
  pin7_a1  : out std_logic;
  pin9_a0  : out std_logic;
  pin10_i0  : in std_logic;
  pin11_i1  : in std_logic;  
  pin12_i2  : in std_logic;
  pin13_i3  : in std_logic;
  pin14_gs  : out std_logic;
  pin15_eo  : out std_logic);
end component;

signal i4,i5,i6,i7,ei,a2,a1,a0,i0,i1,i2,i3,gs,eo: std_logic;
begin

  -- Connect DUT
  DUT: TTL74148 port map(i4,i5,i6,i7,ei,a2,a1,a0,i0,i1,i2,i3,gs,eo);
  process
  begin
    i0 <= 'X';
    i1 <= 'X';
    i2 <= 'X';
    i3 <= 'X';
    i4 <= 'X';
    i5 <= 'X';
    i6 <= 'X';
    i7 <= 'X';
    ei <= '1';    
    
    wait for 100 ns;
-- 100ns
    assert (a2 = '1') report "Fail a2 not set" severity error;
    assert (a1 = '1') report "Fail a1 not set" severity error;
    assert (a0 = '1') report "Fail a0 not set" severity error;
    assert (gs = '1') report "Fail gs not set" severity error;
    assert (eo = '1') report "Fail eo not set" severity error;

    i0 <= '1';
    i1 <= '1';
    i2 <= '1';
    i3 <= '1';
    i4 <= '1';
    i5 <= '1';
    i6 <= '1';
    i7 <= '1';
    ei <= '0';    
    
    wait for 100 ns;
-- 200ns    
    assert (a2 = '1') report "Fail a2 not set" severity error;
    assert (a1 = '1') report "Fail a1 not set" severity error;
    assert (a0 = '1') report "Fail a0 not set" severity error;
    assert (gs = '1') report "Fail gs not set" severity error;
    assert (eo = '0') report "Fail eo not clear" severity error;

    i0 <= 'X';
    i1 <= 'X';
    i2 <= 'X';
    i3 <= 'X';
    i4 <= 'X';
    i5 <= 'X';    
    i6 <= 'X';
    i7 <= '0';
    ei <= '0';    
    
    wait for 100 ns;
-- 300ns        
    assert (a2 = '0') report "Fail a2 not clear" severity error;
    assert (a1 = '0') report "Fail a1 not clear" severity error;
    assert (a0 = '0') report "Fail a0 not clear" severity error;
    assert (gs = '0') report "Fail gs not clear" severity error;
    assert (eo = '1') report "Fail eo not set" severity error;

    i0 <= 'X';
    i1 <= 'X';
    i2 <= 'X';
    i3 <= 'X';
    i4 <= 'X';
    i5 <= 'X';    
    i6 <= '0';
    i7 <= '1';
    ei <= '0';    
    
    wait for 100 ns;
-- 400ns        
    assert (a2 = '0') report "Fail a2 not clear" severity error;
    assert (a1 = '0') report "Fail a1 not clear" severity error;
    assert (a0 = '1') report "Fail a0 not set" severity error;
    assert (gs = '0') report "Fail gs not clear" severity error;
    assert (eo = '1') report "Fail eo not set" severity error;

    i0 <= 'X';
    i1 <= 'X';
    i2 <= 'X';
    i3 <= 'X';
    i4 <= 'X';
    i5 <= '0';    
    i6 <= '1';
    i7 <= '1';
    ei <= '0';    
    
    wait for 100 ns;
-- 500ns        
    assert (a2 = '0') report "Fail a2 not clear" severity error;
    assert (a1 = '1') report "Fail a1 not set" severity error;
    assert (a0 = '0') report "Fail a0 not clear" severity error;
    assert (gs = '0') report "Fail gs not clear" severity error;
    assert (eo = '1') report "Fail eo not set" severity error;

    i0 <= 'X';
    i1 <= 'X';
    i2 <= 'X';
    i3 <= 'X';
    i4 <= '0';
    i5 <= '1';    
    i6 <= '1';
    i7 <= '1';
    ei <= '0';    
    
    wait for 100 ns;
-- 600ns        
    assert (a2 = '0') report "Fail a2 not clear" severity error;
    assert (a1 = '1') report "Fail a1 not set" severity error;
    assert (a0 = '1') report "Fail a0 not set" severity error;
    assert (gs = '0') report "Fail gs not clear" severity error;
    assert (eo = '1') report "Fail eo not set" severity error;

    i0 <= 'X';
    i1 <= 'X';
    i2 <= 'X';
    i3 <= '0';
    i4 <= '1';
    i5 <= '1';    
    i6 <= '1';
    i7 <= '1';
    ei <= '0';    
    
    wait for 100 ns;
-- 700ns        
    assert (a2 = '1') report "Fail a2 not set" severity error;
    assert (a1 = '0') report "Fail a1 not clear" severity error;
    assert (a0 = '0') report "Fail a0 not clear" severity error;
    assert (gs = '0') report "Fail gs not clear" severity error;
    assert (eo = '1') report "Fail eo not set" severity error;

    i0 <= 'X';
    i1 <= 'X';
    i2 <= '0';
    i3 <= '1';
    i4 <= '1';
    i5 <= '1';    
    i6 <= '1';
    i7 <= '1';
    ei <= '0';    
    
    wait for 100 ns;
-- 800ns        
    assert (a2 = '1') report "Fail a2 not set" severity error;
    assert (a1 = '0') report "Fail a1 not clear" severity error;
    assert (a0 = '1') report "Fail a0 not set" severity error;
    assert (gs = '0') report "Fail gs not clear" severity error;
    assert (eo = '1') report "Fail eo not set" severity error;
    i0 <= 'X';
    i1 <= '0';
    i2 <= '1';
    i3 <= '1';
    i4 <= '1';
    i5 <= '1';    
    i6 <= '1';
    i7 <= '1';
    ei <= '0';    
    
    wait for 100 ns;
-- 900ns        
    assert (a2 = '1') report "Fail a2 not set" severity error;
    assert (a1 = '1') report "Fail a1 not set" severity error;
    assert (a0 = '0') report "Fail a0 not clear" severity error;
    assert (gs = '0') report "Fail gs not clear" severity error;
    assert (eo = '1') report "Fail eo not set" severity error;

    i0 <= '0';
    i1 <= '1';
    i2 <= '1';
    i3 <= '1';
    i4 <= '1';
    i5 <= '1';    
    i6 <= '1';
    i7 <= '1';
    ei <= '0';    
    
    wait for 100 ns;
-- 1000ns        
    assert (a2 = '1') report "Fail a2 not set" severity error;
    assert (a1 = '1') report "Fail a1 not set" severity error;
    assert (a0 = '1') report "Fail a0 not set" severity error;
    assert (gs = '0') report "Fail gs not clear" severity error;
    assert (eo = '1') report "Fail eo not set" severity error;

    i0 <= '0';
    i1 <= '0';
    i2 <= '0';
    i3 <= '0';
    i4 <= '0';
    i5 <= '0';    
    i6 <= '0';
    i7 <= '0';
    ei <= '0';    
    
    wait for 100 ns;
-- 1100ns        
    assert (a2 = '0') report "Fail a2 not clear" severity error;
    assert (a1 = '0') report "Fail a1 not clear" severity error;
    assert (a0 = '0') report "Fail a0 not clear" severity error;
    assert (gs = '0') report "Fail gs not clear" severity error;
    assert (eo = '1') report "Fail eo not set" severity error;



	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
