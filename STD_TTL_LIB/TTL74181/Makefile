

all: testbench.vhd
#	ghdl -a testbench.vhd
#	ghdl -a design.vhd
#	ghdl -e testbench
#	ghdl -r testbench

clean:
	rm -f testbench
	rm -f *.o
	rm -f work-obj93.cf
	rm -f 74181testbenchgenerator
	rm -f testbench.vhd

74181testbenchgenerator: 74181.c
	$(CC) 74181.c -o 74181testbenchgenerator

testbench.vhd: 74181testbenchgenerator 74181.BIN
	./74181testbenchgenerator < 74181.BIN > testbench.vhd

