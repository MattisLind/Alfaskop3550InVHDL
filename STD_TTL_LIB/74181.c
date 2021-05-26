#include <stdio.h>

int main () {
  int ch, i=0;
  int s0, s1, s2, s3, cn, m, a0,a1,a2,a3,b0,b1,b2,b3,f0,f1,f2,f3,cn4,aeqb,p,g; 
  printf("-- Testbench for 74181 TTL ALU\n");
  printf("library IEEE;\n");
  printf("use IEEE.std_logic_1164.all;\n");
  printf("entity testbench is\n");
  printf("-- empty\n");
  printf("end testbench; \n");
  printf("\n");
  printf("architecture tb of testbench is\n");
  printf("\n");
  printf("-- DUT component\n");
  printf("\n");
  printf("component TTL74181 is\n");
  printf("port(\n");
  printf("  pin1_b0  : in std_logic;\n");
  printf("  pin2_a0  : in std_logic;\n");
  printf("  pin3_s3  : in std_logic;\n");
  printf("  pin4_s2  : in std_logic;\n");
  printf("  pin5_s1  : in std_logic;\n");
  printf("  pin6_s0  : in std_logic;\n");
  printf("  pin7_cn  : in std_logic;\n");
  printf("  pin8_m  : in std_logic;\n");
  printf("  pin9_f0  : out std_logic;\n");
  printf("  pin10_f1  : out std_logic;\n");
  printf("  pin11_f2  : out std_logic;  \n");
  printf("  pin13_f3  : out std_logic;\n");
  printf("  pin14_aeqb  : out std_logic;\n");
  printf("  pin15_p  : out std_logic;\n");
  printf("  pin16_cn4: out std_logic;\n");
  printf("  pin17_g: out std_logic;  \n");
  printf("  pin18_b3: in std_logic;\n");
  printf("  pin19_a3: in std_logic;\n");
  printf("  pin20_b2: in std_logic;\n");
  printf("  pin21_a2: in std_logic;\n");
  printf("  pin22_b1 : in std_logic;\n");
  printf("  pin23_a1 : in std_logic);\n");
  printf("end component;\n");
  printf("\n");
  printf("signal b0,a0,s3,s2,s1,s0,cn,m,f0,f1,f2,f3,aeqb,p,cn4,g,b3,a3,b2,a2,b1,a1: std_logic;\n");
  printf("begin\n");
  printf("\n");
  printf("-- Connect DUT\n");
  printf("  DUT: TTL74181 port map(b0,a0,s3,s2,s1,s0,cn,m,f0,f1,f2,f3,aeqb,p,cn4,g,b3,a3,b2,a2,b1,a1);\n");
  printf("  process\n");
  printf("  begin\n");

  while ((ch = fgetc(stdin))!= -1) {
    //printf ("%04X : %02X\n",i, ch);
    printf ("\n--\n-- Testcase %d --- IN -> A:%1Xh B:%01Xh S:%01Xh Cin:%01X M:%01X   ---  OUT -> F:%01Xh A=B:%01X P:%01X Cout:%01X G:%01X\n--\n",i,i & 0xf, (i &0xf0) >> 4, (i&0xf00) >> 8, (i & 0x1000) >> 12, (i & 0x2000) >> 13, ch &0xf, (ch & 0x10) >> 4, (ch & 0x20) >> 5, (ch & 0x40) >> 6, (ch & 0x80) >> 7);

    a0 = i & 0x1;
    a1 = (i & 0x2) >> 1; 
    a2 = (i & 0x4) >> 2; 
    a3 = (i & 0x8) >> 3; 
    b0 = (i & 0x10) >> 4;
    b1 = (i & 0x20) >> 5; 
    b2 = (i & 0x40) >> 6; 
    b3 = (i & 0x80) >> 7; 
    s0 = (i & 0x100) >> 8;
    s1 = (i & 0x200) >> 9; 
    s2 = (i & 0x400) >> 10; 
    s3 = (i & 0x800) >> 11;
    cn = (i & 0x1000) >> 13; 
    m  = (i & 0x2000) >> 12;
    
    f0 = ch & 0x1;
    f1 = (ch & 0x2) >> 1; 
    f2 = (ch & 0x4) >> 2; 
    f3 = (ch & 0x8) >> 3; 
    aeqb = (ch & 0x10) >> 4;
    p = (ch & 0x20) >> 5; 
    cn4 = (ch & 0x40) >> 6; 
    g = (ch & 0x80) >> 7; 

    printf("    s0 <= \'%d\';\n", s0); 
    printf("    s1 <= \'%d\';\n", s1); 
    printf("    s2 <= \'%d\';\n", s2); 
    printf("    s3 <= \'%d\';\n", s3); 
    printf("    cn <= \'%d\';\n", cn); 
    printf("    m <= \'%d\';\n", m);  
    printf("    a0 <= \'%d\';\n", a0); 
    printf("    a1 <= \'%d\';\n", a1); 
    printf("    a2 <= \'%d\';\n", a2); 
    printf("    a3 <= \'%d\';\n", a3); 
    printf("    b0 <= \'%d\';\n", b0); 
    printf("    b1 <= \'%d\';\n", b1); 
    printf("    b2 <= \'%d\';\n", b2); 
    printf("    b3 <= \'%d\';\n", b3); 
    printf("    wait for 100 ns;\n");
    printf("    assert (f0 = \'%d\') report \"Fail f0 not %s\" severity error;\n",f0,f0==1?"high":"low");
    printf("    assert (f1 = \'%d\') report \"Fail f1 not %s\" severity error;\n",f1,f1==1?"high":"low");
    printf("    assert (f2 = \'%d\') report \"Fail f2 not %s\" severity error;\n",f2,f2==1?"high":"low");
    printf("    assert (f3 = \'%d\') report \"Fail f3 not %s\" severity error;\n",f3,f3==1?"high":"low");
    printf("    assert (cn4 = \'%d\') report \"Fail cn4 not %s\" severity error;\n",cn4,cn4==1?"high":"low");
    printf("    assert (aeqb = \'%d\') report \"Fail aeqb not %s\" severity error;\n",aeqb,aeqb==1?"high":"low");
    printf("    assert (p = \'%d\') report \"Fail p2 not %s\" severity error;\n",p,p==1?"high":"low");
    printf("    assert (g = \'%d\') report \"Fail g not %s\" severity error;\n",g,g==1?"high":"low");
    /*
    s0 <= '0';
    s1 <= '0';
    s2 <= '0';
    s3 <= '0';
    cn <= '0';
    m  <= '0';
    a0 <= '0';
    a1 <= '0';
    a2 <= '0';
    a3 <= '0';
    b0 <= '0';
    b1 <= '0';
    b2 <= '0';
    b3 <= '0';
    wait for 100 ns;
    assert (f0 = '1') report "Fail f0 not high" severity error;
    assert (f1 = '0') report "Fail f1 not low" severity error;
    assert (f2 = '0') report "Fail f2 not low" severity error;
    assert (f3 = '0') report "Fail f3 not low" severity error;
    assert (cn4 = '1') report "Fail cn4 not high" severity error;
    assert (p = '0') report "Fail p not low" severity error;
    assert (g = '0') report "Fail g not low" severity error;

    s0 <= '0';

    */
    i++;
  }
  printf("    assert false report \"Test done.\" severity note;\n");
  printf("    wait;\n");
  printf("  end process;\n");
  printf("end tb;\n");
  return 0;
}
