-- Testbench for TTL 74189 16x4 bit SRAM
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component RAM2102 is
port(
  pin1_a6  : in std_logic;
  pin2_a5  : in std_logic;
  pin3_nw  : in std_logic;
  pin4_a1  : in std_logic;
  pin5_a2  : in std_logic;
  pin6_a3  : in std_logic;
  pin7_a4  : in std_logic;
  pin8_a0 : in std_logic;
  pin11_d  : in std_logic;
  pin12_x  : out std_logic;    
  pin13_nce  : in std_logic;
  pin14_a9  : in std_logic;
  pin15_a8  : in std_logic;
  pin16_a7  : in std_logic);
end component;


signal a6,a5,nw,a1,a2,a3,a4,a0,d,x,nce,a9,a8,a7: std_logic;
begin

  -- Connect DUT
  DUT: RAM2102 port map(a6,a5,nw,a1,a2,a3,a4,a0,d,x,nce,a9,a8,a7);
  process
  begin
    a0 <= 'X';
    a1 <= 'X';
    a2 <= 'X';
    a3 <= 'X';
    a4 <= 'X';
    a5 <= 'X';
    a6 <= 'X';
    a7 <= 'X';
    a8 <= 'X';
    a9 <= 'X';
    d <= 'X';
    nw <= 'X';
    nce <= '1';
    wait for 100 ns;
    
    assert (x = 'Z') report "Fail x not three-state" severity error;
    nw <= '1';
    nce <= '1';
    wait for 100 ns;    
    a0 <= '0';
    a1 <= '0';
    a2 <= '0';
    a3 <= '0';
    a4 <= '0';
    a5 <= '0';
    a6 <= '0';
    a7 <= '0';
    a8 <= '0';
    a9 <= '0';
    d <= '1';
    wait for 100 ns;
    nw <= '0';
    nce <= '0';
    wait for 100 ns;
    nw <= '1';
    wait for 100 ns;
    
    assert (x = '1') report "Fail x not three-state" severity error;
    
    a0 <= '0';
    a1 <= '0';
    a2 <= '0';
    a3 <= '0';
    a4 <= '0';
    a5 <= '1';
    a6 <= '0';
    a7 <= '0';
    a8 <= '0';
    a9 <= '0';
    d <= '1';
    wait for 100 ns;
    nw <= '0';
    nce <= '0';
    wait for 100 ns;
    nw <= '1';
    wait for 100 ns;
    
    assert (x = '1') report "Fail x not three-state" severity error;
    a0 <= '0';
    a1 <= '0';
    a2 <= '0';
    a3 <= '0';
    a4 <= '0';
    a5 <= '0';
    a6 <= '0';
    a7 <= '0';
    a8 <= '0';
    a9 <= '0';
    wait for 100 ns;
    assert (x = '1') report "Fail x not three-state" severity error;    
    a0 <= '1';
    a1 <= '0';
    a2 <= '0';
    a3 <= '0';
    a4 <= '0';
    a5 <= '0';
    a6 <= '0';
    a7 <= '0';
    a8 <= '0';
    a9 <= '0';
    wait for 100 ns;
    assert (x = '0') report "Fail x not three-state" severity error;    

    assert false report "Test done." severity note;
    wait;
  end process;
end tb;
