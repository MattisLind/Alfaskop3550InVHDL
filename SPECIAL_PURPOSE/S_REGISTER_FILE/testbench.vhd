-- Testbench for Special Purpose Register File.
library IEEE;
use IEEE.std_logic_1164.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component


  
component REGISTER_FILE is
  port(
    a : in std_logic_vector (4 downto 0);
    d : in std_logic_vector (7 downto 0);
    nq : out std_logic_vector (7 downto 0);
    ncs  : in std_logic;
    nwe  : in std_logic);
end component;

signal ncs, nwe: std_logic;
signal address : std_logic_vector (4 downto 0);
signal d, nq : std_logic_vector (7 downto 0);
begin

  -- Connect DUT
  DUT: REGISTER_FILE port map(address, d, nq, ncs, nwe);
  process
  begin
    address <= "00000";
    ncs <= '0';
    nwe <= '1';
    wait for 100 ns;
-- 100ns
    assert (nq = "11111111") report "Fail d not 11111111" severity error;

    d <= "11111111";
    nwe <= '0';
    wait for 100 ns;
    nwe <= '1';
    wait for 100 ns;
    assert (nq = "00000000") report "Fail d not 00000000" severity error;

    address <= "01000";
    wait for 100 ns;
    assert (nq = "11111111") report "Fail d not 11111111" severity error;

    d <= "10101010";
    nwe <= '0';
    wait for 100 ns;
    nwe <= '1';
    wait for 100 ns;
    assert (nq = "01010101") report "Fail d not 01010101" severity error;
    
    
    assert false report "Test done." severity note;
    wait;
  end process;
end tb;
