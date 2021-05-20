-- Testbench for TTL 7490 Decade and Binary Counters
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL7490 is
port(
  pin1_b  : in std_logic;
  pin2_r01  : in std_logic;
  pin3_r02  : in std_logic;
  pin6_r91  : in std_logic;
  pin7_r92  : in std_logic;
  pin8_qc  : out std_logic;
  pin9_qb  : out std_logic;
  pin11_qd  : out std_logic;
  pin12_qa  : out std_logic;  
  pin14_a  : in std_logic);
end component;

signal b,r01,r02,r91,r92,qc,qb,qd,qa,a : std_logic;
begin

  -- Connect DUT
  DUT: TTL7490 port map(qa,r01,r02,r91,r92,qc,qb,qd,qa,a);
  process
  begin
    a <= '0';
    r01 <= '1';
    r02 <= '1';
    r91 <= '0';
    r92 <= 'X';
    wait for 100 ns;
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not cleared" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;
    
    a <= '0';
    r01 <= 'X';
    r02 <= '0';
    r91 <= '1';
    r92 <= '1';
    wait for 100 ns;
    assert (qa = '1') report "Fail qa not set" severity error;
    assert (qb = '0') report "Fail qb not cleared" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '1') report "Fail qd not set" severity error;
    
    
    a <= '0';
    r01 <= '1';
    r02 <= '1';
    r91 <= 'X';
    r92 <= '0';
    wait for 100 ns;
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not cleared" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;    

    a <= '1';
    r01 <= 'X';
    r02 <= '0';
    r91 <= 'X';
    r92 <= '0';
    wait for 100 ns;
    a <= '0';
    wait for 100 ns;
    assert (qa = '1') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not cleared" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;     

    a <= '1';
    r01 <= 'X';
    r02 <= '0';
    r91 <= 'X';
    r92 <= '0';
    wait for 100 ns;
    a <= '0';
    wait for 100 ns;
    
-- 700 ns
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '1') report "Fail qb not cleared" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;  

    a <= '1';
    r01 <= 'X';
    r02 <= '0';
    r91 <= 'X';
    r92 <= '0';
    wait for 100 ns;
    a <= '0';
    wait for 100 ns;
-- 900 ns
    assert (qa = '1') report "Fail qa not set" severity error;
    assert (qb = '1') report "Fail qb not cleared" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;  

    a <= '1';
    r01 <= 'X';
    r02 <= '0';
    r91 <= 'X';
    r92 <= '0';
    wait for 100 ns;
    a <= '0';
    wait for 100 ns;
-- 1100 ns
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not set" severity error;
    assert (qc = '1') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;  

    a <= '1';
    r01 <= 'X';
    r02 <= '0';
    r91 <= 'X';
    r92 <= '0';
    wait for 100 ns;
    a <= '0';
    wait for 100 ns;
-- 1300 ns    
    assert (qa = '1') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not set" severity error;
    assert (qc = '1') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;  

    a <= '1';
    r01 <= 'X';
    r02 <= '0';
    r91 <= 'X';
    r92 <= '0';
    wait for 100 ns;
    a <= '0';
    wait for 100 ns;
-- 1500 ns
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '1') report "Fail qb not set" severity error;
    assert (qc = '1') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;  


    a <= '1';

    r01 <= 'X';
    r02 <= '0';
    r91 <= 'X';
    r92 <= '0';
    wait for 100 ns;
    a <= '0';
    wait for 100 ns;
-- 1700 ns
    assert (qa = '1') report "Fail qa not cleared" severity error;
    assert (qb = '1') report "Fail qb not set" severity error;
    assert (qc = '1') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;  

    a <= '1';
    wait for 100 ns;
    a <= '0';
    wait for 100 ns;
-- 1900 ns
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not set" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '1') report "Fail qd not cleared" severity error;  


    a <= '1';
    wait for 100 ns;
    a <= '0';
    wait for 100 ns;
-- 2100 ns
    assert (qa = '1') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not set" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '1') report "Fail qd not cleared" severity error; 

    a <= '1';
    wait for 100 ns;
    a <= '0';
    wait for 100 ns;
-- 2300 ns
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not set" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error; 


	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
