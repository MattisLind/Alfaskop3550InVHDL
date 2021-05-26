-- Testbench for TTL 74189 16x4 bit SRAM
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL74189 is
port(
  pin1_a0  : in std_logic;
  pin2_ncs  : in std_logic;
  pin3_nwe  : in std_logic;
  pin4_d0  : in std_logic;
  pin5_nq0  : out std_logic;
  pin6_d1  : in std_logic;
  pin7_nq1  : out std_logic;
  pin9_nq2  : out std_logic;
  pin10_d2  : in std_logic;
  pin11_nq3  : out std_logic;  
  pin12_d3  : in std_logic;
  pin13_a3  : in std_logic;
  pin14_a2  : in std_logic;
  pin15_a1  : in std_logic);
end component;

signal a0,ncs,nwe,d0,nq0,d1,nq1,nq2,d2,nq3,d3,a3,a2,a1: std_logic;
begin

  -- Connect DUT
  DUT: TTL74189 port map(a0,ncs,nwe,d0,nq0,d1,nq1,nq2,d2,nq3,d3,a3,a2,a1);
  process
  begin
    a0 <= 'X';
    a1 <= 'X';
    a2 <= 'X';
    a3 <= 'X';
    d0 <= 'X';
    d1 <= 'X';
    d2 <= 'X';
    d3 <= 'X';
    nwe <= 'X';
    ncs <= '1';
    wait for 100 ns;
	assert (nq0 = 'Z') report "Fail nq0 not three-state" severity error;
    assert (nq1 = 'Z') report "Fail nq1 not three-state" severity error;
    assert (nq2 = 'Z') report "Fail nq2 not three-state" severity error;
    assert (nq3 = 'Z') report "Fail nq3 not three-state" severity error;

    a0 <= '0';
    a1 <= '0';
    a2 <= '0';
    a3 <= '0';
    d0 <= '0';
    d1 <= '0';
    d2 <= '0';
    d3 <= '0';
    wait for 100 ns;
    ncs <= '0';
    wait for 100 ns;
    nwe <= '0';
    wait for 100 ns;
    nwe <= '1';
    wait for 100 ns;
	assert (nq0 = '1') report "Fail nq0 not high" severity error;
    assert (nq1 = '1') report "Fail nq1 not high" severity error;
    assert (nq2 = '1') report "Fail nq2 not high" severity error;
    assert (nq3 = '1') report "Fail nq3 not high" severity error;
    
    a0 <= '0';
    a1 <= '0';
    a2 <= '0';
    a3 <= '0';
    d0 <= '1';
    d1 <= '1';
    d2 <= '1';
    d3 <= '1';
    wait for 100 ns;
    nwe <= '0';
    wait for 100 ns;
    nwe <= '1';
    wait for 100 ns;
	assert (nq0 = '0') report "Fail nq0 not low" severity error;
    assert (nq1 = '0') report "Fail nq1 not low" severity error;
    assert (nq2 = '0') report "Fail nq2 not low" severity error;
    assert (nq3 = '0') report "Fail nq3 not low" severity error;    


    a0 <= '0';
    a1 <= '0';
    a2 <= '0';
    a3 <= '0';
    d0 <= '0';
    d1 <= '0';
    d2 <= '0';
    d3 <= '0';
    wait for 100 ns;
    nwe <= '0';
    wait for 100 ns;
    ncs <= '0';
    wait for 100 ns;
    nwe <= '1';
    wait for 100 ns;
	assert (nq0 = '1') report "Fail nq0 not high" severity error;
    assert (nq1 = '1') report "Fail nq1 not high" severity error;
    assert (nq2 = '1') report "Fail nq2 not high" severity error;
    assert (nq3 = '1') report "Fail nq3 not high" severity error;
    
    a0 <= '0';
    a1 <= '0';
    a2 <= '0';
    a3 <= '0';
    d0 <= '1';
    d1 <= '1';
    d2 <= '1';
    d3 <= '1';
    wait for 100 ns;
    nwe <= '0';
    wait for 100 ns;
    ncs <= '0';
    wait for 100 ns;
    nwe <= '1';
    wait for 100 ns;
	assert (nq0 = '0') report "Fail nq0 not low" severity error;
    assert (nq1 = '0') report "Fail nq1 not low" severity error;
    assert (nq2 = '0') report "Fail nq2 not low" severity error;
    assert (nq3 = '0') report "Fail nq3 not low" severity error; 


    a0 <= '1';
    a1 <= '0';
    a2 <= '0';
    a3 <= '0';
    d0 <= '0';
    d1 <= '0';
    d2 <= '0';
    d3 <= '1';
    wait for 100 ns;
    nwe <= '0';
    wait for 100 ns;
    ncs <= '0';
    wait for 100 ns;
    nwe <= '1';
    wait for 100 ns;
	assert (nq0 = '1') report "Fail nq0 not high" severity error;
    assert (nq1 = '1') report "Fail nq1 not high" severity error;
    assert (nq2 = '1') report "Fail nq2 not high" severity error;
    assert (nq3 = '0') report "Fail nq3 not low" severity error;
    
    a0 <= '1';
    a1 <= '0';
    a2 <= '0';
    a3 <= '0';
    d0 <= '1';
    d1 <= '1';
    d2 <= '1';
    d3 <= '0';
    wait for 100 ns;
    nwe <= '0';
    wait for 100 ns;
    ncs <= '0';
    wait for 100 ns;
    nwe <= '1';
    wait for 100 ns;
	assert (nq0 = '0') report "Fail nq0 not low" severity error;
    assert (nq1 = '0') report "Fail nq1 not low" severity error;
    assert (nq2 = '0') report "Fail nq2 not low" severity error;
    assert (nq3 = '1') report "Fail nq3 not high" severity error;    
    


	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
