

all:
	ghdl -a ../dff.vhd
	ghdl -a testbench.vhd
	ghdl -a design.vhd
	ghdl -e testbench
	ghdl -r testbench

clean:
	rm -f testbench
	rm -f *.o
	rm -f work-obj93.cf
