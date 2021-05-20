# Alfaskop3550InVHDL

This project aims at simulate the CPU of the Alfaskop 3550 terminal with some memory to gain a better understanding of how it works to aid when repairing the terminal.

## Background

The Alfaskop 3500 series was developed by Swedish company Stansaab (a joint venture betwwen SAAB, the government and ITT / SRT) in early seventies as a follow up to the Alfaskop 3100. The 3100 was IBM 2260 compatible and when IBM instroduced the IBM 3270 series Stansaab had to create a new model to stay relevant. The new model emulated the IBM 3270.

![Alfaskop 3550](https://i.imgur.com/uJOYs2Tl.jpg)

Photo by Tekniska Museet, Stockholm, Sweden.

The Alfaskop 3500 series was made in two variants. One where the intelligence was located in a central concentrator that connected two the IBM communication controller in the IBM host. The conection could be either over synchronous serial lines either leased or dial-up. The concentrator could also be connected over a IBM channel directly to the IBM host computer. In this case the terminal was called 3510 and was completely stupid. It contained just a keyboard decoder. The picture was generated in Concentrator and transmitted to the terminal over a coaxial connectiom.

The 3550 on the other hand contained all the intelligence from the concentrator and could connect directly over synchronous serial line to the IBM host computer. Actually exactly the same CPU cards was used in the concentrator and the 3550 terminal.

## 3550 Architecture

There are not much documents describing the Alfaskop 3500 system available online. [Hower there is this set of schematics available](http://storage.datormuseum.se/u/96935524/Datormusuem/Alfaskop/Alfaskop_3500_Data_Terminal_System_Drawings_and_Diagrams.pdf). Other documents are availble offline in Riksarkivet in Härnösand in Sweden.  

The Alfaskop 3550 is constructed out of simple TTL components. The main CPU consists of two boards MPU I and MPU II. MPU I contains the micorcode and MPU II contains mostly the datapaths with ALU and register files.

The CPU architecture can be summarized in this picture which describe the MPU I and MPU II boards together.

![Architecture](https://i.imgur.com/j9Pzn02.png)

The microcode is comprised of two 256 by four bits of bipolar ROMs for a total of 256 bytes. In addition to that there is two instruction lookup PROMs, each 32 by 8 bits.

The microcode starts at positon 0 and then an couple of 7483 adders calculate the next address. Or a completely new address is used from the instruction lookup ROMs. The sequence end when there is a certain bit pattern in the 8 bit microinstruction which resets the micro instruction counter to 0 again.

## Hardware

![MPU I](https://i.imgur.com/mFMpttgl.jpg)

MPU I board with the microsequencer, microcode and decoding logic.

![MPU II](https://i.imgur.com/maqZleZl.jpg)

MPU II board consists of the datapaths with the ALU and register files.

![ROM board 1](https://i.imgur.com/aVBPvmll.jpg)

Memory board with 4 k EPROM (1702) and 4k SRAM. The jumper blocks are a paramter memory.

![ROM board 2](https://i.imgur.com/Usnrrnvl.jpg)

Memory board with 4 k EPROM (1702) and 4k SRAM.

