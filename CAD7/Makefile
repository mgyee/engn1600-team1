# SPICE_NETLIST = datapath_bind.spice

# TB ?= benches/tb_arith
# TB_FILES = $(wildcard benches/tb_*.v)
# TESTBENCHES = $(TB_FILES:.v=)

RTL := control dmem imem

# SRC_FILES = $(wildcard *.v)

.PHONY: lib lib.spice clean

lib: $(RTL:%=%.so)

%.so: %.v
	ngspice vlnggen $<

lib.spice: $(RTL:%=%.v)
	@echo "Generating SPICE instantiations: $@"
	@rm -f $@
	@for file in $^; do python3 instantiate.py $$file >> $@; done

# run: $(SPICE_NETLIST) $(TB).vvp
# 	@echo "Running Testbench: $(TB)..."
# 	SPICE_NETLIST=$(SPICE_NETLIST) \
# 	HDL_INSTANCE=$(HDL_INSTANCE) \
# 	VCC=$(VCC) \
# 	vvp -M $(VPI_DIR) -m spicebind_vpi $(TB).vvp

# run_all: $(TESTBENCHES)
# 	@echo "All testbenches completed!"

# $(TESTBENCHES):
# 	@echo "============================================================"
# 	@echo " RUNNING TESTBENCH: $@"
# 	@echo "============================================================"
# 	@$(MAKE) --no-print-directory run TB=$@

clean:
	rm -f $(RTL:%=%.so)
	rm -rf $(RTL:%=%_obj_dir)
