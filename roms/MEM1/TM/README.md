# ROMS from Tekniska Museet

Tekniska Museet has an Alfaskop 3550 terminal which once upon was in the exhibition but nowadays is in storage. Some time ago I asked if it was possible to retrieve
the Alfaskop 3550 and dump the ROMs in it. A meeting with the very nice people of Tenkniska Museet was arranged and they brought in the terminal. I dumped the 31 ROM chips from it.

![MEM1 Board](https://github.com/MattisLind/Alfaskop3550InVHDL/raw/main/roms/MEM1/TM/MEM1.JPG)

ROMs marked SS followed by a two hexadecimal digit base address of the ROM and then a two digit revision of the ROM. For example SS 1020. This ROM has the base address 1000 in the address space of the Alfaskop 3550 CPU. Each ROM is individually revision-handled. The reason is probably to make it easier for field-service personnel. A change in the fimrware may just involve change one ROM rather then the full set which would be very timeconsuming.  

The ROMs on this board seems to be an older version of what is in the "STOFFE" terminal. A few ROMs had identical markings and also hade the same contents.
