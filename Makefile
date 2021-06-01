

ttls := $(subst STD_TTL_LIB/TTL,,$(wildcard STD_TTL_LIB/TTL*))
symlinks := $(foreach ttl,$(ttls),STD_TTL_LIB/$(ttl).vhd)

roms := $(wildcard roms/MPUI/*.vhd)

all: ttllib alfaskop

ttllib:
	$(MAKE) -C STD_TTL_LIB all

$(symlinks): 
	ln -sf TTL$(subst .vhd,,$(subst STD_TTL_LIB/,,$@))/design.vhd $@

createsymlinks: $(symlinks)

alfaskop: createsymlinks
	ghdl -a --std=08  testbench.vhd
	ghdl -a --std=08  boards/backplane.vhd
	ghdl -a --std=08  boards/MPUI.vhd
	ghdl -a --std=08  boards/MPUII.vhd
	ghdl -a --std=08  $(symlinks)
	ghdl -a --std=08  $(roms)
	ghdl -a --std=08  STD_TTL_LIB/jkff.vhd
	ghdl -a --std=08  STD_TTL_LIB/dff.vhd
	ghdl -e --std=08  testbench
	ghdl -r --std=08  testbench

clean:
	$(MAKE) -C STD_TTL_LIB clean
	rm -f *.o
	rm -f *.cf
	rm -f $(symlinks)
	rm -f testbench

.PHONEY: clean all

