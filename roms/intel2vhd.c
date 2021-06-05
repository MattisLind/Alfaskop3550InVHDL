#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <string.h>

#define IDLE 0
#define BYTECOUNT 1
#define ADDRESS 2
#define RECORDTYPE 3
#define DATA 4
#define CHECKSUM 5

#define TYPE_6300 1
#define TYPE_6330 2
#define TYPE_1702 3


int print6300Prolog(char * entity) {
  printf("-- Standard Bipolar 256 x 4 bit PROM \n");
  printf("library IEEE;\n");
  printf("use IEEE.std_logic_1164.all;\n");
  printf("use ieee.numeric_std.all;\n");
  printf("\n");
  printf("entity %s is\n",entity);
  printf("port(\n");
  printf("  pin1_a6  : in std_logic;\n");
  printf("  pin2_a5  : in std_logic;\n");
  printf("  pin3_a4  : in std_logic;\n");
  printf("  pin4_a3  : in std_logic;\n");
  printf("  pin5_a0  : in std_logic;\n");
  printf("  pin6_a1  : in std_logic;\n");
  printf("  pin7_a2  : in std_logic;\n");
  printf("  pin9_d3  : out std_logic;\n");
  printf("  pin10_d2  : out std_logic;\n");
  printf("  pin11_d1  : out std_logic;\n");
  printf("  pin12_d0  : out std_logic;\n");
  printf("  pin13_g1  : in std_logic;\n");
  printf("  pin14_g2  : in std_logic;\n");
  printf("  pin15_a7  : in std_logic);\n");
  printf("end IC28_PROM256x4;\n");
  printf("\n");
  printf("architecture logic of %s is\n",entity);
  printf("signal address : std_logic_vector (7 downto 0);\n");
  printf("signal data : std_logic_vector (3 downto 0);\n");
  printf("type rom_type is array (0 to 255) of std_logic_vector(3 downto 0); \n");
  printf("signal rom : rom_type := ( \n");
  printf("\n");
}

int print6300Epilog() {
  printf("\n");
  printf("begin\n"); 
  printf("address(7) <= pin15_a7;\n");
  printf("address(6) <= pin1_a6;\n");
  printf("address(5) <= pin2_a5;\n");
  printf("address(4) <= pin3_a4;\n");
  printf("address(3) <= pin4_a3;\n");
  printf("address(2) <= pin7_a2;\n");
  printf("address(1) <= pin6_a1;\n");
  printf("address(0) <= pin5_a0;\n");
  printf("\n");
  printf("pin12_d0 <= data(0);\n");
  printf("pin11_d1 <= data(1);\n");
  printf("pin10_d2 <= data(2);\n");
  printf("pin9_d3 <= data(3);\n");
  printf("\n");
  printf("data <= rom(to_integer(unsigned(address)))  when pin13_g1 = '0' and pin14_g2 = '0' else x\"F\"; \n");
  printf("\n");
  printf("end logic;\n");
}


int print6330Prolog(char * entity) {
  printf("-- Standard Bipolar 32 x 8 bit PROM \n");
  printf("library IEEE;\n");
  printf("use IEEE.std_logic_1164.all;\n");
  printf("use ieee.numeric_std.all;\n");
  printf("\n");
  printf("entity %s is\n", entity);
  printf("port(\n");
  printf("  pin1_d0  : out std_logic;\n");
  printf("  pin2_d1  : out std_logic;\n");
  printf("  pin3_d2  : out std_logic;\n");
  printf("  pin4_d3  : out std_logic;\n");
  printf("  pin5_d4  : out std_logic;\n");
  printf("  pin6_d5  : out std_logic;\n");
  printf("  pin7_d6  : out std_logic;\n");
  printf("  pin9_d7  : out std_logic;\n");
  printf("  pin10_a0  : in std_logic;\n");
  printf("  pin11_a1  : in std_logic;\n");
  printf("  pin12_a2  : in std_logic;\n");
  printf("  pin13_a3  : in std_logic;\n");
  printf("  pin14_a4  : in std_logic;\n");
  printf("  pin15_g  : in std_logic);\n");
  printf("end %s;\n", entity);
  printf("\n");
  printf("architecture logic of %s is\n",entity);
  printf("signal address : std_logic_vector (4 downto 0);\n");
  printf("signal data : std_logic_vector (7 downto 0);\n");
  printf("type rom_type is array (0 to 31) of std_logic_vector(7 downto 0); \n");
  printf("signal rom : rom_type := ( \n");
}

int print6330Epilog() {
  printf ("\n");
  printf ("begin\n"); 
  printf ("\n");
  printf ("address(4) <= pin14_a4;\n");
  printf ("address(3) <= pin13_a3;\n");
  printf ("address(2) <= pin12_a2;\n");
  printf ("address(1) <= pin11_a1;\n");
  printf ("address(0) <= pin10_a0;\n");
  printf ("\n");
  printf ("pin1_d0 <= data(0);\n");
  printf ("pin2_d1 <= data(1);\n");
  printf ("pin3_d2 <= data(2);\n");
  printf ("pin4_d3 <= data(3);\n");
  printf ("pin5_d4 <= data(4);\n");
  printf ("pin6_d5 <= data(5);\n");
  printf ("pin7_d6 <= data(6);\n");
  printf ("pin9_d7 <= data(7);\n");
  printf ("data <= rom(to_integer(unsigned(address)))  when pin15_g = '0' else x\"FF\"; \n");
  printf ("\n");
  printf ("end logic;\n");
}


void handle_type (int * type) {
  if (strncasecmp("6330",optarg,32)==0) { // 32x8
    *type = TYPE_6330;;
  } else if (strncasecmp("6300",optarg,32)==0) {  //256x4
    *type = TYPE_6300;
  } else if (strncasecmp("1702",optarg,32)==0) {  //256x8
    *type = TYPE_1702;
  }

}

int main (int argc, char **argv) {
  int c;
  char tmp [5];
  int bytecount;
  int address, checksum, recordtype, databyte;
  int index;
  int firstLine = 1;
  int state=IDLE;
  int digit_optind = 0;
  char entity [32];
  int type=0;
  
  while (1) {
    int this_option_optind = optind ? optind : 1;
    int option_index = 0;
    static struct option long_options[] = {
					   {"entity",     required_argument, 0,  0 },
					   {"type",      required_argument, 0,  0 },
					   {0,         0,                 0,  0 }
    };
    
    c = getopt_long(argc, argv, "e:t:",
		    long_options, &option_index);
    if (c == -1)
      break;
    
    switch (c) {
    case 0:
      switch (option_index) {
      case 0: // entity
	strncpy(entity, optarg,32);
	break;
      case 1: // type
	handle_type(&type);
	break;
      }
      break;
      
    case 'e':
      strncpy(entity, optarg,32);
      break;
      
    case 't':
      handle_type(&type);
      break;
      
    default:
      fprintf(stderr, "?? getopt returned character code 0%o ??\n", c);
    }
  }
  
  if (optind < argc) {
    fprintf(stderr, "non-option ARGV-elements: ");
    while (optind < argc)
      fprintf(stderr, "%s ", argv[optind++]);
    fprintf(stderr, "\n");
  }
  
  if (type == 0) {
    fprintf(stderr, "Not a valid type given. Valid types are 6300, 6330 or 1702.\n");
    exit(1);
  }
  if (type == TYPE_6330) {
    print6330Prolog(entity);
  } else if (type = TYPE_6300) {
    print6300Prolog(entity);
  }
  do {
    c = getchar();
    switch (state) {
    case IDLE:
      if (c==':') {
	state = BYTECOUNT;
	index = 0;
      }
      break;
    case BYTECOUNT:
      if (index == 1) {
	tmp[index]=c;
	tmp[index+1] = 0;
	bytecount = strtol(tmp,NULL,16);
	//printf ("Bytecount=%d  ",bytecount);
	state = ADDRESS;
	index = 0;
      } else {
	tmp[index]=c;
	index++;
      }
      break;
    case ADDRESS:
      if (index == 3) {
	tmp[index]=c;
	tmp[index+1] = 0;
	address = strtol(tmp,NULL,16);
	//printf ("Address=%d  ",address);
	state = RECORDTYPE;
	index = 0;
      } else {
	tmp[index]=c;
	index++;
      }
      break;
    case RECORDTYPE:
      if (index == 1) {
	tmp[index]=c;
	tmp[index+1] = 0;
	recordtype = strtol(tmp,NULL,16);
	//printf ("RecordType=%d  ",recordtype);
	if (recordtype==0 && !firstLine) {
	  printf(",");
	}
	if (recordtype == 1) {
	  state = CHECKSUM;
	} else {
	  state = DATA;
	}
	index = 0;
      } else {
	tmp[index]=c;
	index++;
      }

      break;
    case DATA:
      //printf ("index=%d, bytecount-1=%d", index, bytecount-1);
      if (index == (bytecount*2-1)) {
	//printf ("AA");
	tmp[index % 2] = c;
	state = CHECKSUM;
	tmp[2] = 0;
	databyte = strtol(tmp,NULL,16);
	printf ("x\"%02X\"",databyte);	  
	index = 0;
      } else {
	//printf ("BB index %% 2=%d", index%2);
	tmp[index % 2] = c;
	if ((index % 2) == 1) {
	  tmp[2] = 0;
	  databyte = strtol(tmp,NULL,16);
	  printf ("x\"%02X\",",databyte);	  
	}
	if ((index%16) == 0) {
	  printf("\n");
	}
	index++;
      }
      break;
    case CHECKSUM:
      if (index == 1) {
	tmp[index]=c;
	tmp[index+1] = 0;
	checksum = strtol(tmp,NULL,16);
	//printf ("Checksum=%d  ",checksum);	
	state = IDLE;
	firstLine = 0;
	index = 0;
      } else {
	tmp[index]=c;
	index++;
      }
      break;
    } 
  } while (c!=-1);

  if (type == TYPE_6330) {
    print6330Epilog();
  } else if (type = TYPE_6300) {
    print6300Epilog();
  }

}
