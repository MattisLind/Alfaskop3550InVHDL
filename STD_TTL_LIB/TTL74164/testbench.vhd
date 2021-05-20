-- Testbench for 74164 8-bit parallel-out serial shift register
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL74164 is
port(
  pin1_a  : in std_logic;
  pin2_b  : in std_logic;
  pin3_qa  : out std_logic;
  pin4_qb  : out std_logic;
  pin5_qc  : out std_logic;
  pin6_qd  : out std_logic;
  pin8_clk  : in std_logic;
  pin9_nclr  : in std_logic;
  pin10_qe  : out std_logic;
  pin11_qf  : out std_logic;
  pin12_qg  : out std_logic;  
  pin13_qh  : out std_logic);
end component;

signal a,b,qa,qb,qc,qd,clk,nclr,qe,qf,qg,qh : std_logic;
begin

  -- Connect DUT
  DUT: TTL74164 port map(a,b,qa,qb,qc,qd,clk,nclr,qe,qf,qg,qh);
  process
  begin
    clk <= 'X';
    nclr <= '0';
    a <= 'X';
    b <= 'X';
    wait for 100 ns;
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not cleared" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;
    assert (qe = '0') report "Fail qe not cleared" severity error;
    assert (qf = '0') report "Fail qf not cleared" severity error;
    assert (qg = '0') report "Fail qg not cleared" severity error;
    assert (qh = '0') report "Fail qh not cleared" severity error;
    
    clk <= '0';
    nclr <= '1';
    a <= '1';
    b <= '1';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    assert (qa = '1') report "Fail qa not set" severity error;
    assert (qb = '0') report "Fail qb not cleared" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;
    assert (qe = '0') report "Fail qe not cleared" severity error;
    assert (qf = '0') report "Fail qf not cleared" severity error;
    assert (qg = '0') report "Fail qg not cleared" severity error;
    assert (qh = '0') report "Fail qh not cleared" severity error;   
    

    clk <= '0';
    nclr <= '1';
    a <= '0';
    b <= '1';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '1') report "Fail qb not set" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;
    assert (qe = '0') report "Fail qe not cleared" severity error;
    assert (qf = '0') report "Fail qf not cleared" severity error;
    assert (qg = '0') report "Fail qg not cleared" severity error;
    assert (qh = '0') report "Fail qh not cleared" severity error;   


    clk <= '0';
    nclr <= '1';
    a <= '1';
    b <= '0';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not cleared" severity error;
    assert (qc = '1') report "Fail qc not set" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;
    assert (qe = '0') report "Fail qe not cleared" severity error;
    assert (qf = '0') report "Fail qf not cleared" severity error;
    assert (qg = '0') report "Fail qg not cleared" severity error;
    assert (qh = '0') report "Fail qh not cleared" severity error;   


    clk <= '0';
    nclr <= '1';
    a <= '0';
    b <= '0';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not cleared" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '1') report "Fail qd not set" severity error;
    assert (qe = '0') report "Fail qe not cleared" severity error;
    assert (qf = '0') report "Fail qf not cleared" severity error;
    assert (qg = '0') report "Fail qg not cleared" severity error;
    assert (qh = '0') report "Fail qh not cleared" severity error; 

    clk <= '0';
    nclr <= '1';
    a <= '0';
    b <= '0';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not cleared" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;
    assert (qe = '1') report "Fail qe not set" severity error;
    assert (qf = '0') report "Fail qf not cleared" severity error;
    assert (qg = '0') report "Fail qg not cleared" severity error;
    assert (qh = '0') report "Fail qh not cleared" severity error; 



    clk <= '0';
    nclr <= '1';
    a <= '0';
    b <= '0';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not cleared" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;
    assert (qe = '0') report "Fail qe not cleared" severity error;
    assert (qf = '1') report "Fail qf not set" severity error;
    assert (qg = '0') report "Fail qg not cleared" severity error;
    assert (qh = '0') report "Fail qh not cleared" severity error; 


    clk <= '0';
    nclr <= '1';
    a <= '0';
    b <= '0';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    assert (qa = '0') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not cleared" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;
    assert (qe = '0') report "Fail qe not cleared" severity error;
    assert (qf = '0') report "Fail qf not cleared" severity error;
    assert (qg = '1') report "Fail qg not set" severity error;
    assert (qh = '0') report "Fail qh not cleared" severity error; 


    clk <= '0';
    nclr <= '1';
    a <= '1';
    b <= '1';
    wait for 100 ns;
    clk <= '1';
    wait for 100 ns;
    assert (qa = '1') report "Fail qa not cleared" severity error;
    assert (qb = '0') report "Fail qb not cleared" severity error;
    assert (qc = '0') report "Fail qc not cleared" severity error;
    assert (qd = '0') report "Fail qd not cleared" severity error;
    assert (qe = '0') report "Fail qe not cleared" severity error;
    assert (qf = '0') report "Fail qf not cleared" severity error;
    assert (qg = '0') report "Fail qg not cleared" severity error;
    assert (qh = '1') report "Fail qh not set" severity error; 



	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
