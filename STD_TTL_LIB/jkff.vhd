library IEEE;
use IEEE.std_logic_1164.all;


entity JKFF_WITH_CLR_PRE is
port(
  nclr  : in std_logic;
  j  : in std_logic;
  k  : in std_logic;
  clk  : in std_logic;
  npre  : in std_logic;
  q  : out std_logic;
  nq  : out std_logic);
end JKFF_WITH_CLR_PRE;

architecture logic of JKFF_WITH_CLR_PRE is

begin
  process (nclr, j,k, clk, npre) 
    begin
    	if  (nclr = '1' and npre = '0') then
          q <= '0';
          nq <= '1';
        elsif (nclr = '0' and npre = '1') then
          q <= '1';
          nq <= '0';        
        elsif ( nclr = '0' and npre = '0' and clk'EVENT and clk = '1') then
          if (j = '0' and k = '1') then  
            q <= '0';
            nq <= '1'; 
          elsif (j = '1' and k = '0') then
	        q <= '1';
    	    nq <= '0';           
          elsif (j = '1' and k = '1') then 
	        q <= not q;
    	    nq <= not nq;           
          end if;        
        end if;     
    end process;	
end logic;
