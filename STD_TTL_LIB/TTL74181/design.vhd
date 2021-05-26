-- Standard 74181 TTL ALU designed from the model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL74181 is
port(
  pin1_b0  : in std_logic;
  pin2_a0  : in std_logic;
  pin3_s3  : in std_logic;
  pin4_s2  : in std_logic;
  pin5_s1  : in std_logic;
  pin6_s0  : in std_logic;
  pin7_cn  : in std_logic;
  pin8_m  : in std_logic;
  pin9_f0  : out std_logic;
  pin10_f1  : out std_logic;
  pin11_f2  : out std_logic;  
  pin13_f3  : out std_logic;
  pin14_aeqb  : out std_logic;
  pin15_p  : out std_logic;
  pin16_cn4: out std_logic;
  pin17_g: out std_logic;  
  pin18_b3: in std_logic;
  pin19_a3: in std_logic;
  pin20_b2: in std_logic;
  pin21_a2: in std_logic;
  pin22_b1 : in std_logic;
  pin23_a1 : in std_logic);
end TTL74181;

architecture logic of TTL74181 is
signal bit3im1,bit3im2,bit2im1,bit2im2,bit1im1,bit1im2,bit0im1,bit0im2,f0,f1,f2,f3,g : std_logic; 
begin 
bit3im1 <= ( pin18_b3 and pin3_s3 and pin19_a3) nor (pin19_a3 and pin4_s2 and not pin18_b3);
bit3im2 <= not ( ( not pin18_b3 and pin5_s1 ) or ( pin6_s0 and pin18_b3) or pin19_a3 );
bit2im1 <= ( pin20_b2 and pin3_s3 and pin21_a2) nor (pin21_a2 and pin4_s2 and not pin20_b2);
bit2im2 <= not ( ( not pin20_b2 and pin5_s1 ) or ( pin6_s0 and pin20_b2) or pin21_a2 );
bit1im1 <= ( pin22_b1 and pin3_s3 and pin23_a1) nor (pin23_a1 and pin4_s2 and not pin22_b1);
bit1im2 <= not ( ( not pin22_b1 and pin5_s1 ) or ( pin6_s0 and pin22_b1) or pin23_a1 );
bit0im1 <= ( pin1_b0 and pin3_s3 and pin2_a0) nor (pin2_a0 and pin4_s2 and not pin1_b0);
bit0im2 <= not ( ( not pin1_b0 and pin5_s1 ) or ( pin6_s0 and pin1_b0) or pin2_a0 );

f0 <= (not pin8_m nand pin7_cn) xor (bit0im2 xor bit0im1 );

f1 <= ((not pin8_m and bit0im2) nor ( not pin8_m and bit0im1 and pin7_cn)) xor 
        ( bit1im2 xor bit1im1 );

f2 <= ( not ( (not pin8_m and bit1im2) or 
              (not pin8_m and bit0im2 and  bit1im1)  or 
              (not pin8_m and bit1im1 and bit0im1 and pin7_cn) ) ) xor (bit2im2 xor bit2im1);

f3 <=  not ( (not pin8_m and bit2im2) or 
              (not pin8_m and bit1im2  and bit2im1) or 
              (not pin8_m and bit0im2  and bit2im1  and bit1im1 ) or 
              (not pin8_m and bit2im1  and bit1im1  and bit0im1  and pin7_cn ) )  
             xor (bit3im2 xor bit3im1);


pin15_p <= not ( bit0im1 and bit1im1 and bit2im1 and bit3im1 );

pin16_cn4 <= (pin7_cn and bit0im1 and bit1im1 and bit2im1 and bit3im1 )  or not g; 

g <= not ((bit0im2 and bit1im1 and bit2im1 and bit3im1) or 
          (bit1im2 and bit2im1 and bit3im1)  or 
          (bit2im2 and bit3im1)   or 
           bit3im2); 

pin17_g <= g;
pin9_f0 <= f0;
pin10_f1 <= f1;
pin11_f2 <= f2;
pin13_f3 <= f3;

pin14_aeqb <= f0 and f1 and f2 and f3;

 

end logic;

