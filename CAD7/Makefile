VPI_DIR = .

SPICE_NETLIST = datapath_bind.spice

TB ?= benches/tb_arith
HDL_INSTANCE =$(notdir $(TB)).dut.datapath 

TB_FILES = $(wildcard benches/tb_*.v)
TESTBENCHES = $(TB_FILES:.v=)

SRC_FILES = $(wildcard *.v)

.PHONY: proc clean

proc: processor.so

%.vvp: %.v $(SRC_FILES) 
	iverilog -g2012 -o $@ $^

# %.so: %.v
#	ngspice vlnggen $<

%.spice: %.sch
	xschem -n -o . $<

run: $(SPICE_NETLIST) $(TB).vvp
	@echo "Running Testbench: $(TB)..."
	SPICE_NETLIST=$(SPICE_NETLIST) \
	HDL_INSTANCE=$(HDL_INSTANCE) \
	vvp -M $(VPI_DIR) -m spicebind_vpi $(TB).vvp

run_all: $(TESTBENCHES)
	@echo "All testbenches completed!"

$(TESTBENCHES):
	@echo "============================================================"
	@echo " RUNNING TESTBENCH: $@"
	@echo "============================================================"
	@$(MAKE) --no-print-directory run TB=$@

clean:
	rm -f *.spice *.so
	rm -rf *_obj_dir
