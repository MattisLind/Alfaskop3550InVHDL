

ttls := $(subst STD_TTL_LIB/TTL,,$(wildcard STD_TTL_LIB/TTL*))

specials := $(subst SPECIAL_PURPOSE/S_,,$(wildcard SPECIAL_PURPOSE/S_*))

symlinks := $(foreach ttl,$(ttls),STD_TTL_LIB/$(ttl).vhd)

specialsymlinks := $(foreach special,$(specials),SPECIAL_PURPOSE/$(special).vhd)

all: ttllib alfaskop


vhds:=roms/MPUI/IC18_32x8_PROM.vhd roms/MPUI/IC19_32x8_PROM.vhd roms/MPUI/IC27_256x4_PROM.vhd roms/MPUI/IC28_256x4_PROM.vhd

memroms := $(subst .hex,.vhd,$(wildcard roms/MEM1/*.hex)) $(subst .hex,.vhd,$(wildcard roms/MEM2/*.hex))

intel2vhd: roms/intel2vhd.c
	$(CC) roms/intel2vhd.c -o intel2vhd

MEMROMS: $(memroms) intel2vhd

%.vhd: %.hex
	./intel2vhd --type 1702 --entity $(word 2,$(subst /, ,$(dir $<)))_$(shell echo $< | sed 's/^.*\(IC[0-9]*\).*/\1/')_1702 < $<  > $@


roms/MPUI/IC18_32x8_PROM.vhd: roms/MPUI/IC18_EMPTY_MMI6330.hex intel2vhd
	./intel2vhd --type 6330 --entity IC18_32x8_PROM< roms/MPUI/IC18_EMPTY_MMI6330.hex > roms/MPUI/IC18_32x8_PROM.vhd

roms/MPUI/IC19_32x8_PROM.vhd: roms/MPUI/IC19_MPU_B01_04_01_MMI6330.hex
	./intel2vhd --type 6330 --entity IC19_32x8_PROM < roms/MPUI/IC19_MPU_B01_04_01_MMI6330.hex  > roms/MPUI/IC19_32x8_PROM.vhd

roms/MPUI/IC27_256x4_PROM.vhd: roms/MPUI/IC27_11_MMI6300.hex
	./intel2vhd --type 6300 --entity IC28_PROM256x4 < roms/MPUI/IC27_11_MMI6300.hex  > roms/MPUI/IC27_256x4_PROM.vhd

roms/MPUI/IC28_256x4_PROM.vhd: roms/MPUI/IC27_11_MMI6300.hex
	./intel2vhd --type 6300 --entity IC27_PROM256x4 < roms/MPUI/IC28_10_MMI6300.hex  > roms/MPUI/IC28_256x4_PROM.vhd


ttllib:
	$(MAKE) -C STD_TTL_LIB all

special:
	$(MAKE) -C SPECIAL_PURPOSE all

$(symlinks): 
	ln -sf TTL$(subst .vhd,,$(subst STD_TTL_LIB/,,$@))/design.vhd $@

$(specialsymlinks):
	ln -sf S_$(subst .vhd,,$(subst SPECIAL_PURPOSE/,,$@))/design.vhd $@


createsymlinks: $(symlinks) $(specialsymlinks)
	ln -sf STD_TTL_LIB/RAM2102/design.vhd RAM2102.vhd	

alfaskop: createsymlinks $(vhds) MEMROMS
	ghdl -a --std=08  testbench.vhd
	ghdl -a --std=08  boards/backplane.vhd
	ghdl -a --std=08  boards/MPUI.vhd
	ghdl -a --std=08  boards/MPUII.vhd
	ghdl -a --std=08  boards/MEM4_4_1.vhd
	ghdl -a --std=08  RAM2102.vhd
	ghdl -a --std=08  $(symlinks)
	ghdl -a --std=08  $(specialsymlinks)
	ghdl -a --std=08  $(vhds)
	ghdl -a --std=08  $(memroms)
	ghdl -a --std=08  STD_TTL_LIB/jkff.vhd
	ghdl -a --std=08  STD_TTL_LIB/dff.vhd
	ghdl -a --std=08  roms/MEM1/PARAM1.vhd
	ghdl -a --std=08  roms/MEM1/PARAM2.vhd
	ghdl -a --std=08  roms/MEM1/PARAM3.vhd
	ghdl -a --std=08  roms/MEM1/PARAM4.vhd
	ghdl -e --std=08  testbench
	ghdl -r --std=08  testbench

clean:
	$(MAKE) -C STD_TTL_LIB clean
	rm -f *.o
	rm -f *.cf
	rm -f $(symlinks) $(specialsymlinks)
	rm -f testbench
	rm -f $(memroms)
	rm -f RAM2102.vhd
	rm -f intel2vhd
	rm -f roms/MPUI/*.vhd

.PHONEY: clean all

