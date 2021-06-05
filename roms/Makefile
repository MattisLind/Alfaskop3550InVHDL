

vhds:=MPUI/IC18_32x8_PROM.vhd MPUI/IC19_32x8_PROM.vhd MPUI/IC27_256x4_PROM.vhd MPUI/IC28_256x4_PROM.vhd

all: $(vhds) 

intel2vhd: intel2vhd.c
	$(CC) intel2vhd.c -o intel2vhd


MPUI/IC18_32x8_PROM.vhd: MPUI/IC18_EMPTY_MMI6330.hex intel2vhd
	./intel2vhd --type 6330 --entity IC18_32x8_PROM< MPUI/IC18_EMPTY_MMI6330.hex > MPUI/IC18_32x8_PROM.vhd

MPUI/IC19_32x8_PROM.vhd: MPUI/IC19_MPU_B01_04_01_MMI6330.hex
	./intel2vhd --type 6330 --entity IC19_32x8_PROM < MPUI/IC19_MPU_B01_04_01_MMI6330.hex  > MPUI/IC19_32x8_PROM.vhd

MPUI/IC27_256x4_PROM.vhd: MPUI/IC27_11_MMI6300.hex
	./intel2vhd --type 6300 --entity IC27_256x4_PROM < MPUI/IC27_11_MMI6300.hex  > MPUI/IC27_256x4_PROM.vhd

MPUI/IC28_256x4_PROM.vhd: MPUI/IC27_11_MMI6300.hex
	./intel2vhd --type 6300 --entity IC28_256x4_PROM < MPUI/IC28_10_MMI6300.hex  > MPUI/IC28_256x4_PROM.vhd


clean:
	rm -f $(vhds)
	rm -f intel2vhd
