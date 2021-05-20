-- Testbench for 74278 Cascadeable Priority Registers
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL74278 is
port(
  pin1_strb  : in std_logic;
  pin2_d3  : in std_logic;
  pin3_d4  : in std_logic;
  pin4_p0  : out std_logic;
  pin5_p1  : out std_logic;
  pin6_y4  : out std_logic;
  pin8_y3  : out std_logic;
  pin9_y2  : out std_logic;
  pin10_y1  : out std_logic;
  pin12_d1  : out std_logic;  
  pin13_d2  : out std_logic);
end component;

signal strb,d3,d4,p0,p1,y4,y3,y2,y1,d1,d2: std_logic;
begin

  -- Connect DUT
  DUT: TTL74278 port map(strb,d3,d4,p0,p1,y4,y3,y2,y1,d1,d2);
  process
  begin
    strb <= '1';
    d4 <= 'X';
    d3 <= 'X';
    d2 <= 'X';
    d1 <= '1';    
    p0 <= '0';
    wait for 100 ns;
    assert (y1 = '1') report "Fail y1 not set" severity error;
    assert (y2 = '0') report "Fail y2 not cleared" severity error;
    assert (y3 = '0') report "Fail y3 not cleared" severity error;
    assert (y4 = '0') report "Fail y4 not cleared" severity error;
    assert (p1 = '1') report "Fail p1 not set" severity error;

    strb <= '0';
    d4 <= 'X';
    d3 <= 'X';    
    d2 <= 'X';
    d1 <= 'X';    
    p0 <= '0';
    wait for 100 ns;
    assert (y1 = '1') report "Fail y1 not set" severity error;
    assert (y2 = '0') report "Fail y2 not cleared" severity error;
    assert (y3 = '0') report "Fail y3 not cleared" severity error;
    assert (y4 = '0') report "Fail y4 not cleared" severity error;
    assert (p1 = '1') report "Fail p1 not set" severity error;

    strb <= '0';
    d4 <= 'X';    
    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';    
    p0 <= '1';
    wait for 100 ns;
    assert (y1 = '0') report "Fail y1 not cleared" severity error;
    assert (y2 = '0') report "Fail y2 not cleared" severity error;
    assert (y3 = '0') report "Fail y3 not cleared" severity error;
    assert (y4 = '0') report "Fail y4 not cleared" severity error;
    assert (p1 = '1') report "Fail p1 not set" severity error;


    strb <= '1';
    d4 <= 'X';
    d3 <= 'X';
    d2 <= '1';
    d1 <= '0';    
    p0 <= '0';
    wait for 100 ns;
    assert (y1 = '0') report "Fail y1 not cleared" severity error;
    assert (y2 = '1') report "Fail y2 not set" severity error;
    assert (y3 = '0') report "Fail y3 not cleared" severity error;
    assert (y4 = '0') report "Fail y4 not cleared" severity error;
    assert (p1 = '1') report "Fail p1 not set" severity error;

    strb <= '0';
    d4 <= 'X';
    d3 <= 'X';    
    d2 <= 'X';
    d1 <= 'X';    
    p0 <= '0';
    wait for 100 ns;
    assert (y1 = '0') report "Fail y1 not cleared" severity error;
    assert (y2 = '1') report "Fail y2 not set" severity error;
    assert (y3 = '0') report "Fail y3 not cleared" severity error;
    assert (y4 = '0') report "Fail y4 not cleared" severity error;
    assert (p1 = '1') report "Fail p1 not set" severity error;

    strb <= '0';
    d4 <= 'X';    
    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';    
    p0 <= '1';
    wait for 100 ns;
    assert (y1 = '0') report "Fail y1 not cleared" severity error;
    assert (y2 = '0') report "Fail y2 not cleared" severity error;
    assert (y3 = '0') report "Fail y3 not cleared" severity error;
    assert (y4 = '0') report "Fail y4 not cleared" severity error;
    assert (p1 = '1') report "Fail p1 not set" severity error;



   strb <= '1';
    d4 <= 'X';
    d3 <= '1';
    d2 <= '0';
    d1 <= '0';    
    p0 <= '0';
    wait for 100 ns;
    assert (y1 = '0') report "Fail y1 not cleared" severity error;
    assert (y2 = '0') report "Fail y2 not cleared" severity error;
    assert (y3 = '1') report "Fail y3 not set" severity error;
    assert (y4 = '0') report "Fail y4 not cleared" severity error;
    assert (p1 = '1') report "Fail p1 not set" severity error;

    strb <= '0';
    d4 <= 'X';
    d3 <= 'X';    
    d2 <= 'X';
    d1 <= 'X';    
    p0 <= '0';
    wait for 100 ns;
    assert (y1 = '0') report "Fail y1 not cleared" severity error;
    assert (y2 = '0') report "Fail y2 not cleared" severity error;
    assert (y3 = '1') report "Fail y3 not set" severity error;
    assert (y4 = '0') report "Fail y4 not cleared" severity error;
    assert (p1 = '1') report "Fail p1 not set" severity error;

    strb <= '0';
    d4 <= 'X';    
    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';    
    p0 <= '1';
    wait for 100 ns;
    assert (y1 = '0') report "Fail y1 not cleared" severity error;
    assert (y2 = '0') report "Fail y2 not cleared" severity error;
    assert (y3 = '0') report "Fail y3 not cleared" severity error;
    assert (y4 = '0') report "Fail y4 not cleared" severity error;
    assert (p1 = '1') report "Fail p1 not set" severity error;






   strb <= '1';
    d4 <= '1';
    d3 <= '0';
    d2 <= '0';
    d1 <= '0';    
    p0 <= '0';
    wait for 100 ns;
    assert (y1 = '0') report "Fail y1 not cleared" severity error;
    assert (y2 = '0') report "Fail y2 not cleared" severity error;
    assert (y3 = '0') report "Fail y3 not cleared" severity error;
    assert (y4 = '1') report "Fail y4 not set" severity error;
    assert (p1 = '1') report "Fail p1 not set" severity error;

    strb <= '0';
    d4 <= 'X';
    d3 <= 'X';    
    d2 <= 'X';
    d1 <= 'X';    
    p0 <= '0';
    wait for 100 ns;
    assert (y1 = '0') report "Fail y1 not cleared" severity error;
    assert (y2 = '0') report "Fail y2 not cleared" severity error;
    assert (y3 = '0') report "Fail y3 not cleared" severity error;
    assert (y4 = '1') report "Fail y4 not set" severity error;
    assert (p1 = '1') report "Fail p1 not set" severity error;

    strb <= '0';
    d4 <= 'X';    
    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';    
    p0 <= '1';
    wait for 100 ns;
    assert (y1 = '0') report "Fail y1 not cleared" severity error;
    assert (y2 = '0') report "Fail y2 not cleared" severity error;
    assert (y3 = '0') report "Fail y3 not cleared" severity error;
    assert (y4 = '0') report "Fail y4 not cleared" severity error;
    assert (p1 = '1') report "Fail p1 not set" severity error;




    strb <= '1';
    d4 <= 'X';    
    d3 <= 'X';
    d2 <= 'X';
    d1 <= 'X';    
    p0 <= '1';
    wait for 100 ns;
    assert (y1 = '0') report "Fail y1 not cleared" severity error;
    assert (y2 = '0') report "Fail y2 not cleared" severity error;
    assert (y3 = '0') report "Fail y3 not cleared" severity error;
    assert (y4 = '0') report "Fail y4 not cleared" severity error;
    assert (p1 = '1') report "Fail p1 not set" severity error;



	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
