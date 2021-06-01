

all:
	ghdl -a  --std=08 ../dff.vhd
	ghdl -a  --std=08 testbench.vhd
	ghdl -a  --std=08 design.vhd
	ghdl -e  --std=08 testbench
	ghdl -r  --std=08 testbench

clean:
	rm -f testbench
	rm -f *.o
	rm -f work-obj93.cf
