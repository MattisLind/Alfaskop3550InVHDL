-- Testbench for the Alfaskop 3550 system
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
 
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
    nMEMO : in  std_logic_vector (7 downto 0);
    cp_end : out std_logic
);
end component;

signal clkInput, nCP0, CP0, CP2, nCP1, nReset : std_logic;
signal nMEMO : std_logic_vector (7 downto 0);
signal cp_end : std_logic;
begin

  -- Connect DUT
  DUT: Alfaskop3550 port map(
-- Clk is to be generated externally    
    clk => clkInput,
    nReset => nReset,
-- Signals from the connector
    nMEMO => nMEMO,
    cp_end => cp_end
);
  process
  begin
    nReset <= '0';
    wait for 200 ns;
    nReset <= '1';
    wait for 200 ns;
    for i in 1 to 10000 loop
      clkInput <= '0'; 
      wait for 81.4 ns;
      clkInput <= '1';
      wait for 81.4 ns;  
    end loop;
    
	assert (CP0 = '0') report "Fail CP0 not cleared" severity error;
	assert false report "Test done." severity note;
    wait;
  end process;

  process (cp_end,clkInput) is
     variable inst : integer range 0 to 255 := 0;
  begin

    if (falling_edge(cp_end)) then
      if (nMEMO = "11111111") then 
        inst := 0;
      else
        inst := inst + 1;
      end if;  
    end if;
    nMEMO <= std_logic_vector(to_unsigned(inst, 8));
    report "nMEMO = " & to_hstring(nMEMO);
  end process;
  
end tb;
