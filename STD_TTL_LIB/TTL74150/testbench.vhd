-- Testbench for 74150 TTL multiplexor
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL74150 is
port(
  pin1_e7  : in std_logic;
  pin2_e6  : in std_logic;
  pin3_e5  : in std_logic;
  pin4_e4  : in std_logic;
  pin5_e3  : in std_logic;
  pin6_e2  : in std_logic;
  pin7_e1  : in std_logic;
  pin8_e0  : in std_logic;
  pin9_ng  : in std_logic;
  pin10_w  : out std_logic;
  pin11_d  : in std_logic;  
  pin13_c  : in std_logic;
  pin14_b  : in std_logic;
  pin15_a  : in std_logic;
  pin16_e15: in std_logic;
  pin17_e14: in std_logic;  
  pin18_e13: in std_logic;
  pin19_e12: in std_logic;
  pin20_e11: in std_logic;
  pin21_e10: in std_logic;
  pin22_e9 : in std_logic;
  pin23_e8 : in std_logic);
end component;

signal e7,e6,e5,e4,e3,e2,e1,e0,ng,w,d,c,b,a,e15,e14,e13,e12,e11,e10,e9,e8: std_logic;
begin

  -- Connect DUT
  DUT: TTL74150 port map(e7,e6,e5,e4,e3,e2,e1,e0,ng,w,d,c,b,a,e15,e14,e13,e12,e11,e10,e9,e8);
  process
  begin
    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '1';    
    d <= 'X';
    c <= 'X';
    b <= 'X';
    a <= 'X';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;


    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= '0';
    ng <= '0';    
    d <= '0';
    c <= '0';
    b <= '0';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= '1';
    ng <= '0';    
    d <= '0';
    c <= '0';
    b <= '0';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= '0';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '0';
    b <= '0';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= '1';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '0';
    b <= '0';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;




    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= '0';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '0';
    b <= '1';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= '1';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '0';
    b <= '1';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;




    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= '0';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '0';
    b <= '1';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= '1';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '0';
    b <= '1';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;






    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= '0';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '1';
    b <= '0';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= '1';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '1';
    b <= '0';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;






    e7 <= 'X';
    e6 <= 'X';
    e5 <= '0';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '1';
    b <= '0';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= '1';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '1';
    b <= '0';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;





    e7 <= 'X';
    e6 <= '0';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '1';
    b <= '1';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= '1';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '1';
    b <= '1';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not set" severity error;





    e7 <= '0';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '1';
    b <= '1';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= '1';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '0';
    c <= '1';
    b <= '1';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '0';
    b <= '0';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= '0';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '0';
    b <= '0';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= '1';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '0';
    b <= '0';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= '0';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '0';
    b <= '0';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= '1';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;




    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '0';
    b <= '1';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= '0';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '0';
    b <= '1';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= '1';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;




    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '0';
    b <= '1';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= '0';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '0';
    b <= '1';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= '1';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;






    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '1';
    b <= '0';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= '0';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '1';
    b <= '0';
    a <= '0';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= '1';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;






    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '1';
    b <= '0';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= '0';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '1';
    b <= '0';
    a <= '1';
    e15 <= 'X';
    e14 <= 'X';
    e13 <= '1';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;





    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '1';
    b <= '1';
    a <= '0';
    e15 <= 'X';
    e14 <= '0';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '1';
    b <= '1';
    a <= '0';
    e15 <= 'X';
    e14 <= '1';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;





    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '1';
    b <= '1';
    a <= '1';
    e15 <= '0';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '1') report "Fail w not high" severity error;



    e7 <= 'X';
    e6 <= 'X';
    e5 <= 'X';
    e4 <= 'X';
    e3 <= 'X';
    e2 <= 'X';
    e1 <= 'X';
    e0 <= 'X';
    ng <= '0';    
    d <= '1';
    c <= '1';
    b <= '1';
    a <= '1';
    e15 <= '1';
    e14 <= 'X';
    e13 <= 'X';
    e12 <= 'X';
    e11 <= 'X';
    e10 <= 'X';
    e9 <= 'X';
    e8 <= 'X';
    
    wait for 100 ns;
    assert (w = '0') report "Fail w not low" severity error;



	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
