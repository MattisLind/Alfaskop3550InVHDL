

ttls := $(subst STD_TTL_LIB/TTL,,$(wildcard STD_TTL_LIB/TTL*))
symlinks := $(foreach ttl,$(ttls),STD_TTL_LIB/$(ttl).vhd)

all: ttllib alfaskop


vhds:=roms/MPUI/IC18_32x8_PROM.vhd roms/MPUI/IC19_32x8_PROM.vhd roms/MPUI/IC27_256x4_PROM.vhd roms/MPUI/IC28_256x4_PROM.vhd


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


ttllib:
	$(MAKE) -C STD_TTL_LIB all

$(symlinks): 
	ln -sf TTL$(subst .vhd,,$(subst STD_TTL_LIB/,,$@))/design.vhd $@

createsymlinks: $(symlinks)

alfaskop: createsymlinks $(vhds)
	ghdl -a --std=08  testbench.vhd
	ghdl -a --std=08  boards/backplane.vhd
	ghdl -a --std=08  boards/MPUI.vhd
	ghdl -a --std=08  boards/MPUII.vhd
	ghdl -a --std=08  $(symlinks)
	ghdl -a --std=08  $(vhds)
	ghdl -a --std=08  STD_TTL_LIB/jkff.vhd
	ghdl -a --std=08  STD_TTL_LIB/dff.vhd
#	ghdl -a --std=08  boards/registerFile.vhd
	ghdl -e --std=08  testbench
	ghdl -r --std=08  testbench

clean:
	$(MAKE) -C STD_TTL_LIB clean
	rm -f *.o
	rm -f *.cf
	rm -f $(symlinks)
	rm -f testbench

.PHONEY: clean all

