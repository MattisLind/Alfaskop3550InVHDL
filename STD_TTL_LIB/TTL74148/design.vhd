-- Standard TTL 74148 8-Line to to 3-line Priority Encoder.
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL74148 is
port(
  pin1_i4  : in std_logic;
  pin2_i5  : in std_logic;
  pin3_i6  : in std_logic;
  pin4_i7  : in std_logic;
  pin5_ei  : in std_logic;
  pin6_a2  : out std_logic;
  pin7_a1  : out std_logic;
  pin9_a0  : out std_logic;
  pin10_i0  : in std_logic;
  pin11_i1  : in std_logic;  
  pin12_i2  : in std_logic;
  pin13_i3  : in std_logic;
  pin14_gs  : out std_logic;
  pin15_eo  : out std_logic);
end TTL74148;

architecture logic of TTL74148 is
signal input : std_logic_vector (7 downto 0);
begin 
input(7) <= pin4_i7;
input(6) <= pin3_i6;
input(5) <= pin2_i5;
input(4) <= pin1_i4;
input(3) <= pin13_i3;
input(2) <= pin12_i2;
input(1) <= pin11_i1;
input(0) <= pin10_i0;

pin15_eo <= '1'   when pin5_ei = '1' else
            '0'   when pin5_ei = '0' and input="11111111" else
            '1'   when pin5_ei = '0' and input="XXXXXXX0" else 
            '1'   when pin5_ei = '0' and input="XXXXXX01" else 
            '1'   when pin5_ei = '0' and input="XXXXX011" else 
            '1'   when pin5_ei = '0' and input="XXXX0111" else
            '1'   when pin5_ei = '0' and input="XXX01111" else
            '1'   when pin5_ei = '0' and input="XX011111" else
            '1'   when pin5_ei = '0' and input="X0111111" else        
			'1'   when pin5_ei = '0' and input="01111111";

pin14_gs <= '1'   when pin5_ei = '1' else
            '1'   when pin5_ei = '0' and input="11111111" else
            '0'   when pin5_ei = '0' and input="XXXXXXX0" else 
            '0'   when pin5_ei = '0' and input="XXXXXX01" else 
            '0'   when pin5_ei = '0' and input="XXXXX011" else 
            '0'   when pin5_ei = '0' and input="XXXX0111" else
            '0'   when pin5_ei = '0' and input="XXX01111" else
            '0'   when pin5_ei = '0' and input="XX011111" else
            '0'   when pin5_ei = '0' and input="X0111111" else        
			'0'   when pin5_ei = '0' and input="01111111";

pin9_a0 <=  '1'   when pin5_ei = '1' else
            '1'   when pin5_ei = '0' and input="11111111" else
            '0'   when pin5_ei = '0' and input="XXXXXXX0" else 
            '1'   when pin5_ei = '0' and input="XXXXXX01" else 
            '0'   when pin5_ei = '0' and input="XXXXX011" else 
            '1'   when pin5_ei = '0' and input="XXXX0111" else
            '0'   when pin5_ei = '0' and input="XXX01111" else
            '1'   when pin5_ei = '0' and input="XX011111" else
            '0'   when pin5_ei = '0' and input="X0111111" else        
			'1'   when pin5_ei = '0' and input="01111111";

pin7_a1 <=  '1'   when pin5_ei = '1' else
            '1'   when pin5_ei = '0' and input="11111111" else
            '0'   when pin5_ei = '0' and input="XXXXXXX0" else 
            '0'   when pin5_ei = '0' and input="XXXXXX01" else 
            '1'   when pin5_ei = '0' and input="XXXXX011" else 
            '1'   when pin5_ei = '0' and input="XXXX0111" else
            '0'   when pin5_ei = '0' and input="XXX01111" else
            '0'   when pin5_ei = '0' and input="XX011111" else
            '1'   when pin5_ei = '0' and input="X0111111" else        
			'1'   when pin5_ei = '0' and input="01111111";

pin6_a2 <=  '1'   when pin5_ei = '1' else
            '1'   when pin5_ei = '0' and input="11111111" else
            '0'   when pin5_ei = '0' and input="XXXXXXX0" else 
            '0'   when pin5_ei = '0' and input="XXXXXX01" else 
            '0'   when pin5_ei = '0' and input="XXXXX011" else 
            '0'   when pin5_ei = '0' and input="XXXX0111" else
            '1'   when pin5_ei = '0' and input="XXX01111" else
            '1'   when pin5_ei = '0' and input="XX011111" else
            '1'   when pin5_ei = '0' and input="X0111111" else        
			'1'   when pin5_ei = '0' and input="01111111";


end logic;

