-- Testbench for the Alfaskop 3550 system
library IEEE;
use IEEE.std_logic_1164.all;
 
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
    nMEMO :  std_logic_vector (7 downto 0)

);
end component;

signal clkInput, nCP0, CP0, CP2, nCP1, nReset : std_logic;
signal nMEMO : std_logic_vector (7 downto 0);

begin

  -- Connect DUT
  DUT: Alfaskop3550 port map(
-- Clk is to be generated externally    
    clk => clkInput,
    nReset => nReset,
-- Signals from the connector
    nMEMO => nMEMO
);
  process
  begin
    nMEMO <= x"FF";
    nReset <= '0';
	wait for 200 ns;
    nReset <= '1';
    wait for 200 ns;
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    clkInput <= '0'; 
    wait for 81.4 ns;
    clkInput <= '1';
    wait for 81.4 ns;  
    
	assert (CP0 = '0') report "Fail CP0 not cleared" severity error;


	assert false report "Test done." severity note;
    wait;
  end process;
end tb;
