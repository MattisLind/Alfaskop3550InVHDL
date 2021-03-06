-- Standard DM8123 TTL multiplexor designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;

entity TTLDM8123 is
port(
  pin1_select : in std_logic;
  pin2_1a: in std_logic;
  pin3_1b  : in std_logic;
  pin4_1y   : out std_logic;
  pin5_2a: in std_logic;
  pin6_2b: in std_logic;
  pin7_2y   : out std_logic;
  pin9_3y   : out std_logic;
  pin10_3b  : in std_logic;
  pin11_3a : in std_logic;
  pin12_4y   : out std_logic; 
  pin13_4b  : in std_logic;
  pin14_4a : in std_logic;
  pin15_strobe  : in std_logic);
  
  
  
end TTLDM8123;

architecture Behavioral of TTLDM8123 is
begin  
  process(pin2_1a,pin3_1b,pin5_2a,pin6_2b,pin11_3a,pin10_3b,pin14_4a,pin13_4b,pin1_select,pin15_strobe) is
  begin
  	pin4_1y <=  ((pin2_1a AND NOT pin1_select) OR 
                 (pin3_1b AND pin1_select)) when pin15_strobe = '0' else 'Z' ;
	pin7_2y <=  ((pin5_2a AND NOT pin1_select) OR 
                 (pin6_2b AND pin1_select)) when pin15_strobe = '0' else 'Z' ;
	pin9_3y <=  ((pin11_3a AND NOT pin1_select) OR 
                 (pin10_3b AND pin1_select)) when pin15_strobe = '0' else 'Z' ;
	pin12_4y <= ((pin14_4a AND NOT pin1_select) OR 
                 (pin13_4b AND pin1_select)) when pin15_strobe = '0' else 'Z' ;
  end process;
end Behavioral;

