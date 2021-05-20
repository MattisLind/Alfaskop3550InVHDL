-- Standard 74198 TTL shift register designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL74198 is
port(
  pin1_s0: in std_logic;
  pin2_srsi  : in std_logic;
  pin3_a : in std_logic;
  pin4_qA   : out std_logic;
  pin5_b  : in std_logic;
  pin6_qB   : out std_logic;
  pin7_c : in std_logic;
  pin8_qC   : out std_logic;
  pin9_d  : in std_logic;
  pin10_qD   : out std_logic;
  pin11_clk: in std_logic;
  pin13_clear : in std_logic;
  pin14_qE   : out std_logic;
  pin15_e : in std_logic;
  pin16_qF   : out std_logic;
  pin17_f  : in std_logic;
  pin18_qG   : out std_logic;
  pin19_g : in std_logic;
  pin20_qH   : out std_logic;
  pin21_h  : in std_logic;
  pin22_slsi : in std_logic;
  pin23_s1: in std_logic);
end TTL74198;

architecture Behavioral of TTL74198 is
signal sQA, sQB, sQC, sQD, sQE, sQF, sQG, sQH : std_logic;
begin  
  process(pin11_clk, pin2_srsi, pin23_s1, pin1_s0, pin3_a, pin5_b, pin7_c, pin9_d, pin15_e, pin17_f, pin19_g, pin21_h, pin22_slsi, pin13_clear, pin4_qA, pin6_qB, pin8_qC,  pin10_qD, pin14_qE, pin16_qF,pin18_qG, pin20_qH) is
  begin
    if (pin13_clear = '0') then
      sQA <= '0';
      sQB <= '0';
      sQC <= '0';
      sQD <= '0';
      sQE <= '0';
      sQF <= '0';
      sQG <= '0';
      sQH <= '0';
    elsif (pin23_s1 = '1' and pin1_s0 = '1' and rising_edge(pin11_clk)) then 
      sQA <= pin3_a;
      sQB <= pin5_b;
      sQC <= pin7_c;
      sQD <= pin9_d;
      sQE <= pin15_e;
      sQF <= pin17_f;
      sQG <= pin19_g;
      sQH <= pin21_h;      
    elsif (pin23_s1 = '0' and pin1_s0 = '1' and rising_edge(pin11_clk)) then 
      sQA <= pin2_srsi;
      sQB <= sQA;
      sQC <= sQB;
      sQD <= sQC;
      sQE <= sQD;
      sQF <= sQE;
      sQG <= sQF;
      sQH <= sQG;
    elsif (pin23_s1 = '1' and pin1_s0 = '0' and rising_edge(pin11_clk)) then 
      sQH <= pin22_slsi;
      sQG <= sQH;
      sQF <= sQG;
      sQE <= sQF;
      sQD <= sQE;
      sQC <= sQD;
      sQB <= sQC;
      sQA <= sQB;
    end if; 
  end process;
    pin4_qA <= sQA;
    pin6_qB <= sQB;
    pin8_qC <= sQC;
    pin10_qD <= sQD;
    pin14_qE <= sQE;
    pin16_qF <= sQF;
    pin18_qG <= sQG;
    pin20_qH <= sQH;
end Behavioral;

