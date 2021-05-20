-- Testbench for TTL 7493 Binary Counters
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL7493 is
port(
  pin1_ncp1 : in std_logic;
  pin2_mr1  : in std_logic;
  pin3_mr2  : in std_logic;
  pin8_q2  : out std_logic;
  pin9_q1  : out std_logic;
  pin11_q3  : out std_logic;
  pin12_q0  : out std_logic;
  pin14_ncp0 : in std_logic);
end component;

signal mr1,mr2,q2,q1,q3,q0,ncp0 : std_logic;
begin

  -- Connect DUT
  DUT: TTL7493 port map(q0,mr1,mr2,q2,q1,q3,q0,ncp0);
  process
  begin
    ncp0 <= '1';
    mr1 <= '1';
    mr2 <= '1';
    wait for 100 ns;
    assert (q0 = '0') report "Fail q0 not cleared" severity error;
    assert (q1 = '0') report "Fail q1 not cleared" severity error;
    assert (q2 = '0') report "Fail q2 not cleared" severity error;
    assert (q3 = '0') report "Fail q3 not cleared" severity error;
    mr1 <= '0';
    mr2 <= 'X';
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '1') report "Fail q0 not set" severity error;
    assert (q1 = '0') report "Fail q1 not cleared" severity error;
    assert (q2 = '0') report "Fail q2 not cleared" severity error;
    assert (q3 = '0') report "Fail q3 not cleared" severity error;

	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '0') report "Fail q0 not cleared" severity error;
    assert (q1 = '1') report "Fail q1 not set" severity error;
    assert (q2 = '0') report "Fail q2 not cleared" severity error;
    assert (q3 = '0') report "Fail q3 not cleared" severity error; 


	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '1') report "Fail q0 not set" severity error;
    assert (q1 = '1') report "Fail q1 not set" severity error;
    assert (q2 = '0') report "Fail q2 not cleared" severity error;
    assert (q3 = '0') report "Fail q3 not cleared" severity error; 
    
	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '0') report "Fail q0 not cleared" severity error;
    assert (q1 = '0') report "Fail q1 not cleared" severity error;
    assert (q2 = '1') report "Fail q2 not set" severity error;
    assert (q3 = '0') report "Fail q3 not cleared" severity error; 
    
	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '1') report "Fail q0 not set" severity error;
    assert (q1 = '0') report "Fail q1 not cleared" severity error;
    assert (q2 = '1') report "Fail q2 not set" severity error;
    assert (q3 = '0') report "Fail q3 not cleared" severity error; 
    
	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '0') report "Fail q0 not cleared" severity error;
    assert (q1 = '1') report "Fail q1 not set" severity error;
    assert (q2 = '1') report "Fail q2 not set" severity error;
    assert (q3 = '0') report "Fail q3 not cleared" severity error; 
    
	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '1') report "Fail q0 not set" severity error;
    assert (q1 = '1') report "Fail q1 not set" severity error;
    assert (q2 = '1') report "Fail q2 not set" severity error;
    assert (q3 = '0') report "Fail q3 not cleared" severity error; 
    
	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '0') report "Fail q0 not cleared" severity error;
    assert (q1 = '0') report "Fail q1 not cleared" severity error;
    assert (q2 = '0') report "Fail q2 not cleared" severity error;
    assert (q3 = '1') report "Fail q3 not set" severity error; 
    
	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '1') report "Fail q0 not set" severity error;
    assert (q1 = '0') report "Fail q1 not cleared" severity error;
    assert (q2 = '0') report "Fail q2 not cleared" severity error;
    assert (q3 = '1') report "Fail q3 not set" severity error; 
    
	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '0') report "Fail q0 not cleared" severity error;
    assert (q1 = '1') report "Fail q1 not set" severity error;
    assert (q2 = '0') report "Fail q2 not cleared" severity error;
    assert (q3 = '1') report "Fail q3 not set" severity error;     

	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '1') report "Fail q0 not cleared" severity error;
    assert (q1 = '1') report "Fail q1 not set" severity error;
    assert (q2 = '0') report "Fail q2 not cleared" severity error;
    assert (q3 = '1') report "Fail q3 not set" severity error; 

	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '0') report "Fail q0 not cleared" severity error;
    assert (q1 = '0') report "Fail q1 not set" severity error;
    assert (q2 = '1') report "Fail q2 not cleared" severity error;
    assert (q3 = '1') report "Fail q3 not set" severity error; 
    
	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '1') report "Fail q0 not cleared" severity error;
    assert (q1 = '0') report "Fail q1 not set" severity error;
    assert (q2 = '1') report "Fail q2 not cleared" severity error;
    assert (q3 = '1') report "Fail q3 not set" severity error; 
    
	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '0') report "Fail q0 not cleared" severity error;
    assert (q1 = '1') report "Fail q1 not set" severity error;
    assert (q2 = '1') report "Fail q2 not cleared" severity error;
    assert (q3 = '1') report "Fail q3 not set" severity error; 
    
	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '1') report "Fail q0 not cleared" severity error;
    assert (q1 = '1') report "Fail q1 not set" severity error;
    assert (q2 = '1') report "Fail q2 not cleared" severity error;
    assert (q3 = '1') report "Fail q3 not set" severity error;     

	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '0') report "Fail q0 not cleared" severity error;
    assert (q1 = '0') report "Fail q1 not set" severity error;
    assert (q2 = '0') report "Fail q2 not cleared" severity error;
    assert (q3 = '0') report "Fail q3 not set" severity error;     


	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '1') report "Fail q0 not cleared" severity error;
    assert (q1 = '0') report "Fail q1 not set" severity error;
    assert (q2 = '0') report "Fail q2 not cleared" severity error;
    assert (q3 = '0') report "Fail q3 not set" severity error;     

	mr1 <= '1';
    mr2 <= '1';
	ncp0 <= '1';    
    wait for 100 ns;
    ncp0 <= '0';
    wait for 100 ns;
    assert (q0 = '0') report "Fail q0 not cleared" severity error;
    assert (q1 = '0') report "Fail q1 not set" severity error;
    assert (q2 = '0') report "Fail q2 not cleared" severity error;
    assert (q3 = '0') report "Fail q3 not set" severity error;     


	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
