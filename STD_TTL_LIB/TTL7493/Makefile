

all:
	ghdl -a --std=08 testbench.vhd
	ghdl -a --std=08 design.vhd
	ghdl -a --std=08 ../jkff.vhd
	ghdl -e testbench
	ghdl -r testbench

clean:
	rm -f testbench
	rm -f *.o
	rm -f *.cf
