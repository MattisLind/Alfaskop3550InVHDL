memroms := $(subst .hex,.vhd,$(wildcard MEM1/*.hex)) $(subst .hex,.vhd,$(wildcard MEM2/*.hex))

vhds:=MPUI/IC18_32x8_PROM.vhd MPUI/IC19_32x8_PROM.vhd MPUI/IC27_256x4_PROM.vhd MPUI/IC28_256x4_PROM.vhd \


all: $(vhds) $(memroms)

intel2vhd: intel2vhd.c
	$(CC) intel2vhd.c -o intel2vhd


MPUI/IC18_32x8_PROM.vhd: MPUI/IC18_EMPTY_MMI6330.hex intel2vhd
	./intel2vhd --type 6330 --entity IC18_32x8_PROM< MPUI/IC18_EMPTY_MMI6330.hex > MPUI/IC18_32x8_PROM.vhd

MPUI/IC19_32x8_PROM.vhd: MPUI/IC19_MPU_B01_04_01_MMI6330.hex
	./intel2vhd --type 6330 --entity IC19_32x8_PROM < MPUI/IC19_MPU_B01_04_01_MMI6330.hex  > MPUI/IC19_32x8_PROM.vhd

MPUI/IC27_256x4_PROM.vhd: MPUI/IC27_11_MMI6300.hex
	./intel2vhd --type 6300 --entity IC28_PROM256x4 < MPUI/IC27_11_MMI6300.hex  > MPUI/IC27_256x4_PROM.vhd

MPUI/IC28_256x4_PROM.vhd: MPUI/IC27_11_MMI6300.hex
	./intel2vhd --type 6300 --entity IC27_PROM256x4 < MPUI/IC28_10_MMI6300.hex  > MPUI/IC28_256x4_PROM.vhd

%.vhd: %.hex
	./intel2vhd --type 1702 --entity $(shell echo $< | sed 's/^.*\(IC[0-9]*\).*/\1/')_1702 < $<  > $@

clean:
	rm -f $(vhds)
	rm -f intel2vhd
	rm -f $(memroms)
