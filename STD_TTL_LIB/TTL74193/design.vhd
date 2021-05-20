-- Standard 74193 TTL counter designed from the behavioral model in the data sheet. 
library IEEE;
use IEEE.std_logic_1164.all;

entity TTL74193 is
port(
  pin1_b  : in std_logic;
  pin2_qB   : out std_logic;
  pin3_qA   : out std_logic;
  pin4_down: in std_logic;
  pin5_up  : in std_logic;
  pin6_qC   : out std_logic;
  pin7_qD   : out std_logic;
  pin9_d  : in std_logic;
  pin10_c : in std_logic;
  pin11_nLoad: in std_logic;  
  pin12_nCO : out std_logic;
  pin13_nBO : out std_logic;
  pin14_clr: in std_logic;
  pin15_a : in std_logic
  );
end TTL74193;

architecture Behavioral of TTL74193 is
begin
  process(pin14_clr, pin5_up, pin4_down, pin11_nLoad, pin15_a, pin1_b, pin10_c, pin9_d) is
  variable vQA, vQB, vQC, vQD : std_logic;
  begin
    if (pin14_clr = '1') then
      vQA := '0';
      vQB := '0';
      vQC := '0';
      vQD := '0';
    elsif (pin11_nLoad = '0') then 
      vQA := pin15_a;
      vQB := pin1_b ;
      vQC := pin10_c;
      vQD := pin9_d;
    elsif (rising_edge(pin5_up)) then 
      if (vQA = '0') then 
        vQA := '1';
      else 
        vQA := '0';
        if (vQB = '0') then
          vQB := '1';
        else 
          vQB := '0';
          if (vQC = '0') then
            vQC := '1';
          else
            vQC := '0';
            if (vQD = '0') then
              vQD := '1';
            else 
              vQD := '0';
            end if;
          end if;
        end if;        
      end if;  
    elsif (rising_edge(pin4_down)) then 
      if (vQA = '1') then 
        vQA := '0';
      else 
        vQA := '1';
        if (vQB = '1') then
          vQB := '0';
        else 
          vQB := '1';
          if (vQC = '1') then
            vQC := '0';
          else
            vQC := '1';
            if (vQD = '1') then
              vQD := '0';
            else 
              vQD := '1';
            end if;
          end if;
        end if;        
      end if;  
    end if;  
    pin12_nCO <= not (vQA AND vQB AND vQC and VQD and not pin5_up );
    pin13_nBO <= not (not vQA AND not vQB AND not vQC and not VQD and not pin4_down);
    pin3_qA <= vQA;
    pin2_qB <= vQB;
    pin6_qC <= vQC;
    pin7_qD <= vQD;
  end process;
end Behavioral;

