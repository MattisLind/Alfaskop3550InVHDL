-- Testbench for 7483 TTL 4 bit full adder
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component

component TTL7483 is
port(  
  pin1_a4  : in std_logic;
  pin2_s3   : out std_logic;
  pin3_a3: in std_logic;  
  pin4_b3: in std_logic;
  pin6_s2   : out std_logic;
  pin7_b2 : in std_logic;
  pin8_a2  : in std_logic;
  pin9_s1   : out std_logic;
  pin10_a1  : in std_logic;
  pin11_b1 : in std_logic;  
  pin13_c0 : in std_logic;
  pin14_c4   : out std_logic;
  pin15_s4   : out std_logic;
  pin16_b4: in std_logic);
end component;

signal a4,s3,a3,b3,s2,b2,a2,s1,a1,b1,c0,c4,s4,b4: std_logic;
begin

  -- Connect DUT
  DUT: TTL7483 port map(a4,s3,a3,b3,s2,b2,a2,s1,a1,b1,c0,c4,s4,b4);
  process
  begin
    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '1';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '1';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '1';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '1';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '1';
    a1 <= '1';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '1';
    a1 <= '1';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '1';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '1';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '1';
    a2 <= '0';
    a1 <= '1';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '1';
    a2 <= '0';
    a1 <= '1';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '1';
    a2 <= '1';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '1';
    a2 <= '1';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '1';
    a2 <= '1';
    a1 <= '1';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '1';
    a2 <= '1';
    a1 <= '1';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '0';
    a2 <= '0';
    a1 <= '1';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '0';
    a2 <= '0';
    a1 <= '1';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '0';
    a2 <= '1';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '0';
    a2 <= '1';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '0';
    a2 <= '1';
    a1 <= '1';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '0';
    a2 <= '1';
    a1 <= '1';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '1';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '1';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '1';
    a2 <= '0';
    a1 <= '1';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '1';
    a2 <= '0';
    a1 <= '1';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '1';
    a2 <= '1';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '1';
    a2 <= '1';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '1';
    a2 <= '1';
    a1 <= '1';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '1';
    a3 <= '1';
    a2 <= '1';
    a1 <= '1';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '1') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '0';
    b3 <= '0';
    b2 <= '0';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '1';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '0';
    b2 <= '1';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '0';
    b2 <= '1';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '0';
    b3 <= '0';
    b2 <= '1';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '1';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '1';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '1';
    b2 <= '0';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '0';
    b3 <= '1';
    b2 <= '0';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '1';
    b2 <= '1';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '0';
    b3 <= '1';
    b2 <= '1';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '0';
    b3 <= '1';
    b2 <= '1';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '0';
    b3 <= '1';
    b2 <= '1';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;



    b4 <= '1';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '1';
    b3 <= '0';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '1';
    b3 <= '0';
    b2 <= '0';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '1';
    b3 <= '0';
    b2 <= '0';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '1';
    b3 <= '0';
    b2 <= '1';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '1';
    b3 <= '0';
    b2 <= '1';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '1';
    b3 <= '0';
    b2 <= '1';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '1';
    b3 <= '0';
    b2 <= '1';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '1';
    b3 <= '1';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '1';
    b3 <= '1';
    b2 <= '0';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '1';
    b3 <= '1';
    b2 <= '0';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '1';
    b3 <= '1';
    b2 <= '0';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '1';
    b3 <= '1';
    b2 <= '1';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;


    b4 <= '1';
    b3 <= '1';
    b2 <= '1';
    b1 <= '0';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;



    b4 <= '1';
    b3 <= '1';
    b2 <= '1';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '0';
    wait for 100 ns;
    assert (c4 = '0') report "Fail qB not cleared" severity error;
    assert (s4 = '1') report "Fail qB not cleared" severity error;
    assert (s3 = '1') report "Fail qB not cleared" severity error;
    assert (s2 = '1') report "Fail qB not cleared" severity error;
    assert (s1 = '1') report "Fail qB not cleared" severity error;




    b4 <= '1';
    b3 <= '1';
    b2 <= '1';
    b1 <= '1';
    a4 <= '0';
    a3 <= '0';
    a2 <= '0';
    a1 <= '0';
    c0 <= '1';
    wait for 100 ns;
    assert (c4 = '1') report "Fail qB not cleared" severity error;
    assert (s4 = '0') report "Fail qB not cleared" severity error;
    assert (s3 = '0') report "Fail qB not cleared" severity error;
    assert (s2 = '0') report "Fail qB not cleared" severity error;
    assert (s1 = '0') report "Fail qB not cleared" severity error;





	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
