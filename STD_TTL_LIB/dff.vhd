library IEEE;
use IEEE.std_logic_1164.all;


entity DFF_WITH_CLR_PRE is
port(
  nclr  : in std_logic;
  d  : in std_logic;
  clk  : in std_logic;
  npre  : in std_logic;
  q  : out std_logic;
  nq  : out std_logic);
end DFF_WITH_CLR_PRE;

architecture logic of DFF_WITH_CLR_PRE is
begin 
	process (nclr, d, clk, npre) 
    begin
    	if  (nclr = '0' and npre = '1') then
          q <= '0';
          nq <= '1';
        elsif (nclr = '1' and npre = '0') then
          q <= '1';
          nq <= '0';        
        elsif ( nclr = '1' and npre = '1' and clk'EVENT and clk = '1') then
          q <= d;
          nq <= not d;        
        end if;     
    end process;
	
end logic;