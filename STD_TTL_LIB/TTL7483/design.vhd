-- Standard 7483 TTL Adder designed from the model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL7483 is
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
end TTL7483;

architecture Behavioral of TTL7483 is
begin 
process (pin16_b4, pin1_a4, pin4_b3, pin3_a3, pin7_b2, pin8_a2, pin11_b1, pin10_a1, pin13_c0) is 
variable  b1_nand_a1, b1_nor_a1, b2_nand_a2, b2_nor_a2, b3_nand_a3, b3_nor_a3, b4_nand_a4, b4_nor_a4: std_logic;
  begin
    b1_nand_a1 := pin11_b1 nand pin10_a1;
    b1_nor_a1 := pin11_b1 nor pin10_a1;
    b2_nand_a2 := pin7_b2 nand pin8_a2;
    b2_nor_a2 := pin7_b2 nor pin8_a2;
    b3_nand_a3 := pin4_b3 nand pin3_a3;
    b3_nor_a3 := pin4_b3 nor pin3_a3;
    b4_nand_a4 := pin16_b4 nand pin1_a4;
    b4_nor_a4 := pin16_b4 nor pin1_a4;    
    pin9_s1 <= pin13_c0  xor ( (not b1_nor_a1) and b1_nand_a1);
    pin6_s2 <= (b1_nor_a1 nor ( b1_nand_a1 and not pin13_c0))  xor ( (not b2_nor_a2) and (b2_nand_a2));
    pin2_s3 <=  (not (b2_nor_a2 or (b1_nor_a1 and b2_nand_a2) or ( b2_nand_a2 and b1_nand_a1 and (not pin13_c0))))  xor ( (not b3_nor_a3) and b3_nand_a3);
    pin15_s4 <= (not ( b3_nor_a3  or (b2_nor_a2 and b3_nand_a3) or (b1_nor_a1 and b3_nand_a3 and b2_nand_a2) or (b3_nand_a3 and b2_nand_a2 and b1_nand_a1 and (not pin13_c0))) ) xor ( not b4_nor_a4 and b4_nand_a4);
    
    
    
	pin14_c4 <= not ( (b4_nor_a4 ) or ((b3_nor_a3) and (b4_nand_a4)) or ((b2_nor_a2) and (b4_nand_a4) and (b3_nand_a3) ) or ((b1_nor_a1) and (b4_nand_a4) and (b3_nand_a3) and (b2_nand_a2) ) or ((b4_nand_a4) and (b3_nand_a3) and (b2_nand_a2) and (b1_nand_a1) and (not pin13_c0)));    
    
    
    
    
  end process;
end Behavioral;


