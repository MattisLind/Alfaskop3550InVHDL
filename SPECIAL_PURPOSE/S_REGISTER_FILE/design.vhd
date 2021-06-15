-- TTL 74189 16 x 4 bit SRAM
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity REGISTER_FILE is
  port(
    a : in std_logic_vector (4 downto 0);
    d : in std_logic_vector (7 downto 0);
    nq : out std_logic_vector (7 downto 0);
    ncs  : in std_logic;
    nwe  : in std_logic);
end REGISTER_FILE;

architecture rtl of REGISTER_FILE is
signal data_out : std_logic_vector (7 downto 0);

signal register0 : std_logic_vector (7 downto 0) := "00000000";
signal register1 : std_logic_vector (7 downto 0) := "00000000";
signal register2 : std_logic_vector (7 downto 0) := "00000000";
signal register3 : std_logic_vector (7 downto 0) := "00000000";
signal register4 : std_logic_vector (7 downto 0) := "00000000";
signal register5 : std_logic_vector (7 downto 0) := "00000000";
signal register6 : std_logic_vector (7 downto 0) := "00000000";
signal register7 : std_logic_vector (7 downto 0) := "00000000";
signal register8 : std_logic_vector (7 downto 0) := "00000000";
signal register9 : std_logic_vector (7 downto 0) := "00000000";
signal register10 : std_logic_vector (7 downto 0) := "00000000";
signal register11 : std_logic_vector (7 downto 0) := "00000000";
signal register12 : std_logic_vector (7 downto 0) := "00000000";
signal register13 : std_logic_vector (7 downto 0) := "00000000";
signal register14 : std_logic_vector (7 downto 0) := "00000000";
signal register15 : std_logic_vector (7 downto 0) := "00000000";
signal register16 : std_logic_vector (7 downto 0) := "00000000";
signal register17 : std_logic_vector (7 downto 0) := "00000000";
signal register18 : std_logic_vector (7 downto 0) := "00000000";
signal register19 : std_logic_vector (7 downto 0) := "00000000";
signal register20 : std_logic_vector (7 downto 0) := "00000000";
signal register21 : std_logic_vector (7 downto 0) := "00000000";
signal register22 : std_logic_vector (7 downto 0) := "00000000";
signal register23 : std_logic_vector (7 downto 0) := "00000000";
signal register24 : std_logic_vector (7 downto 0) := "00000000";
signal register25 : std_logic_vector (7 downto 0) := "00000000";
signal register26 : std_logic_vector (7 downto 0) := "00000000";
signal register27 : std_logic_vector (7 downto 0) := "00000000";
signal register28 : std_logic_vector (7 downto 0) := "00000000";
signal register29 : std_logic_vector (7 downto 0) := "00000000";
signal register30 : std_logic_vector (7 downto 0) := "00000000";
signal register31 : std_logic_vector (7 downto 0) := "00000000";

begin 

nq <= not data_out when ncs = '0' and nwe = '1'  else (others=>'Z'); 

data_out <= register0 when a = "00000" else
            register1 when a = "00001" else
            register2 when a = "00010" else
            register3 when a = "00011" else 
            register4 when a = "00100" else
            register5 when a = "00101" else
            register6 when a = "00110" else
            register7 when a = "00111" else 
            register8 when a = "01000" else
            register9 when a = "01001" else
            register10 when a = "01010" else
            register11 when a = "01011" else 
            register12 when a = "01100" else
            register13 when a = "01101" else
            register14 when a = "01110" else
            register15 when a = "01111" else 
            register16 when a = "10000" else
            register17 when a = "10001" else
            register18 when a = "10010" else
            register19 when a = "10011" else 
            register20 when a = "10100" else
            register21 when a = "10101" else
            register22 when a = "10110" else
            register23 when a = "10111" else 
            register24 when a = "11000" else
            register25 when a = "11001" else
            register26 when a = "11010" else
            register27 when a = "11011" else 
            register28 when a = "11100" else
            register29 when a = "11101" else
            register30 when a = "11110" else
            register31 when a = "11111"; 


MEM_WRITE: process (a, d, ncs, nwe)
begin
  if (ncs = '0' and nwe = '0') then
    case a is
      when "00000" => register0 <= d;
      when "00001" => register1 <= d;
      when "00010" => register2 <= d;
      when "00011" => register3 <= d;
      when "00100" => register4 <= d;
      when "00101" => register5 <= d;
      when "00110" => register6 <= d;
      when "00111" => register7 <= d;
      when "01000" => register8 <= d;
      when "01001" => register9 <= d;
      when "01010" => register10 <= d;
      when "01011" => register11 <= d;
      when "01100" => register12 <= d;
      when "01101" => register13 <= d;
      when "01110" => register14 <= d;
      when "01111" => register15 <= d;
      when "10000" => register16 <= d;
      when "10001" => register17 <= d;
      when "10010" => register18 <= d;
      when "10011" => register19 <= d;
      when "10100" => register20 <= d;
      when "10101" => register21 <= d;
      when "10110" => register22 <= d;
      when "10111" => register23 <= d;
      when "11000" => register24 <= d;
      when "11001" => register25 <= d;
      when "11010" => register26 <= d;
      when "11011" => register27 <= d;
      when "11100" => register28 <= d;
      when "11101" => register29 <= d;
      when "11110" => register30 <= d;
      when "11111" => register31 <= d;
      when others => null ;                
    end case;
  end if;
end process;  
  

end rtl;



