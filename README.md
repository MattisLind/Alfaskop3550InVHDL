# Alfaskop3550InVHDL

This project aims at simulate the CPU of the Alfaskop 3550 terminal with some memory to gain a better understanding of how it works to aid when repairing the terminal.

The Alfaskop 3550 is constructed out of simple TTL components. The main CPU consists of two boards MPU I and MPU II. MPU I contains the micorcode and MPU II contains mostly the datapaths with ALU and register files.

The microcode is comprised of two 256 by four bits of bipolar ROMs for a total of 256 bytes. In addition to that there is two instruction lookup PROMs, each 32 by 8 bits.

The Microcode starts at positon 0 and then an couple of 7483 adders calculate the next address. Or a completely new address is used from the instruction lookup ROMs. The sequence end when there is a certain bit pattern in the 8 bit microinstruction which resets the micro instruction counter to 0 again.

