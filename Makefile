

ttls := $(subst STD_TTL_LIB/TTL,,$(wildcard STD_TTL_LIB/TTL*))


all: ttllib alfaskop

ttllib:
	$(MAKE) -C STD_TTL_LIB all

createsymlinks:
	echo $(ttls)
	for i in $(ttls); do ln -sf TTL$$i/design.vhd STD_TTL_LIB/$$i.vhd; done

alfaskop:
	ghdl -a --std=08  testbench.vhd
	ghdl -a --std=08  boards/backplane.vhd
	ghdl -a --std=08  boards/MPUI.vhd
	ghdl -a --std=08  boards/MPUII.vhd
	ghdl -a --std=08  STD_TTL_LIB/74125.vhd
	ghdl -a --std=08  STD_TTL_LIB/74148.vhd
	ghdl -a --std=08  STD_TTL_LIB/74150.vhd
	ghdl -a --std=08  STD_TTL_LIB/74151.vhd
	ghdl -a --std=08  STD_TTL_LIB/74153.vhd
	ghdl -a --std=08  STD_TTL_LIB/74154.vhd
	ghdl -a --std=08  STD_TTL_LIB/74155.vhd
	ghdl -a --std=08  STD_TTL_LIB/74157.vhd
	ghdl -a --std=08  STD_TTL_LIB/74164.vhd
	ghdl -a --std=08  STD_TTL_LIB/74174.vhd
	ghdl -a --std=08  STD_TTL_LIB/74175.vhd
	ghdl -a --std=08  STD_TTL_LIB/74180.vhd
	ghdl -a --std=08  STD_TTL_LIB/74181.vhd
	ghdl -a --std=08  STD_TTL_LIB/74189.vhd
	ghdl -a --std=08  STD_TTL_LIB/74193.vhd
	ghdl -a --std=08  STD_TTL_LIB/74198.vhd
	ghdl -a --std=08  STD_TTL_LIB/74278.vhd
	ghdl -a --std=08  STD_TTL_LIB/7442.vhd
	ghdl -a --std=08  STD_TTL_LIB/7474.vhd
	ghdl -a --std=08  STD_TTL_LIB/7483.vhd
	ghdl -a --std=08  STD_TTL_LIB/7490.vhd
	ghdl -a --std=08  STD_TTL_LIB/7493.vhd
	ghdl -a --std=08  STD_TTL_LIB/DM8123.vhd
	ghdl -a --std=08  STD_TTL_LIB/DM8214.vhd
	ghdl -a --std=08  roms/MPUI/IC18_32x8_PROM.vhd
	ghdl -a --std=08  roms/MPUI/IC19_32x8_PROM.vhd
	ghdl -a --std=08  roms/MPUI/IC27_256x4_PROM.vhd
	ghdl -a --std=08  roms/MPUI/IC28_256x4_PROM.vhd
	ghdl -a --std=08  STD_TTL_LIB/jkff.vhd
	ghdl -a --std=08  STD_TTL_LIB/dff.vhd
	ghdl -e --std=08  testbench
	ghdl -r --std=08  testbench

clean:
	$(MAKE) -C STD_TTL_LIB clean
	rm *.o
	rm *.cf


.PHONEY: clean all

