# Library of standard TTL parts

This is a library of standard TTL parts with testbenches that I created to simulate the CPU in the
Alfaskop 3550 terminal.

Mostly this has been a matter of reading the apropiate datasheet and from that creating the VHDL model and the corresponding testbench. Often these testvectors are taken from tha appropriate truth table. This would work fine for simple circuits. 

## Dumping the 74181

The 74181 is an example of a not so simple circuit. It has two four bits inputs and a four bin input for selecing the operation. In addition to that there are one carry input and one Mode input for a total of 14 inputs. This would create 16384 test vectors to verify the correctness of the VHDL model. That is far to much to type in.

So my idea was to read out on exising 74181 chip using an EPROM programmer. Since the 74181 has 8 bits of output and 14 bits of input a 27128 EPROM would match very well. The A=B output is open collector so a small pull-up resistor had to be added as well.

![Dumping the 74181](https://i.imgur.com/0UbSwHal.jpg)

This is how it connected.

|  74181 pin | 74181 function | 27128 pin | 27128 function |   Extra |
|------------|----------------|-----------|----------------|---------|
|    1       |     B0         |   6       |     A4         |         |
|    2       |     A0         |   10      |     A0         |         |
|    3       |     S3         |   23      |     A11        |         |
|    4       |     S2         |   21      |     A10        |
|    5       |     S1         |   24      |     A9         |
|    6       |     S0         |   25      |     A8         |
|    7       |     Cn         |   26      |     A13        |
|    8       |     M          |    2      |     A12        |
|    9       |     F0         |    11     |     D0         |
|   10       |     F1         |    12     |     D1         |  
|   11       |     F2         |    13     |     D2         |
|   12       |     GND        |    14     |     GND        |
|   13       |     F3         |    15     |     D3         |
|   14       |    A=B         |    16     |     D4         | Pull up to VCC |
|   15       |    P           |    17     |     D5         |
|   16       |    Cn+4        |    18     |     D6         |
|   17       |    G           |    19     |     D7         |
|   18       |    B3          |    3      |     A7         |
|   19       |    A3          |    7      |     A3         |
|   20       |    B2          |    4      |     A6         |
|   21       |    A2          |    8      |     A2         |
|   22       |    B1          |    5      |     A5         |
|   23       |    A1          |    9      |     A1         |
|   24       |    VCC         |   28      |     VCC        |


The resulting files, 74181.BIN, which is 16384 bytes in size is then converted into test vectors using a small c program.

