-- Testbench for the Alfaskop 3550 system
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
 
entity testbench is
-- empty
end testbench; 

architecture tb of testbench is
-- DUT component

component Alfaskop3550 is
port(

-- Clk is to be generated externally    
    clk : in std_logic;
    nReset : in std_logic;
    cp_end : out std_logic;
    nCP1 : out std_logic;
    cp2 : out std_logic;
    ReadMEMO : out std_logic;
    nMEMO : out std_logic_vector (7 downto 0);
    nMEMA : out std_logic_vector (15 downto 0);
    stopCPCounter : in std_logic
);
end component;

signal clkInput, nCP0, CP0, CP2, nCP1, nReset, readmemo : std_logic;
signal cp_end : std_logic;
signal nMEMA, MEMA : std_logic_vector (15 downto 0);
signal nMEMO, MEMO : std_logic_vector (7 downto 0);
signal stopCPCounter, stop : std_logic;
begin

  -- Connect DUT
  DUT: Alfaskop3550 port map(
-- Clk is to be generated externally    
    clk => clkInput,
    nReset => nReset,
-- Signals from the connector
    cp_end => cp_end,
    cp2 => CP2,
    nCP1 => nCP1,
    ReadMEMO => readmemo,
    nMEMO => nMEMO,
    nMEMA => nMEMA,
    stopCPCounter => stopCPCounter
    );
  
  MEMA <= not nMEMA;
  MEMO <= not nMEMO;
--  singlestep: process
--  begin
--     stop <= '0';
--     wait for 10 ns;
--     stop <= '1';
--     wait for 300 ns;
--  end process;  
  stopCPCounter <= '1';
-- Simulated single stepping. Basically a 7474 with D input connected to GND.
-- nCP1 connected via an inverter to the CLK input.
-- stop connected to PRE input.
--  step: process (nCP1, stopCPCounter, stop)
--  begin
--    if (nCP1'EVENT and nCP1 = '0' and stopCPCounter = '1') then
--      stopCPCounter <= '0';  
--    elsif (stop = '0') then
--      stopCPCounter <= '1';
--    end if;
--  end process;
      
  CLK: process
  begin
    nReset <= '0';
    wait for 200 ns;
    nReset <= '1';
    wait for 200 ns;
    for i in 1 to 2000 loop
      clkInput <= '0'; 
      wait for 81.4 ns;
      clkInput <= '1';
      wait for 81.4 ns;  
    end loop;
    
	assert (CP0 = '0') report "Fail CP0 not cleared" severity error;
	assert false report "Test done." severity note;
    wait;
  end process;

  MEMORY_TRACE: process (CP2, readmemo)
  begin
    if (CP2'EVENT and CP2 = '1' and readmemo = '1') then
      report "Address: "& to_hstring(MEMA) & " : " & to_hstring(MEMO);  
    end if;
  end process;
  
end tb;
