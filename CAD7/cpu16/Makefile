# ENGN1600 Baseline RISC Processor
# Anhang Li (anhangli@umich.edu)
# -----

IVERILOG := iverilog
VVP := vvp
VERILATOR := verilator
ASSEMBLER := ./assembler.py
SIM ?= iverilog

VERILATOR_BUILD_DIR ?= obj_dir
VERILATOR_FLAGS ?= --binary --timing

RTL := cpu16.v DECODE.v IMEM.v DMEM.v ALU.v RF.v Shifter.v PC.v

BENCH_PROGS := arith ctrl memshift_jal
PROGRAM_PROGS := fib pi_q8 nqueens8
PROGS := $(BENCH_PROGS) $(PROGRAM_PROGS)

BENCH_TBS := $(addprefix tb_,$(BENCH_PROGS))
PROGRAM_TBS := $(addprefix tb_,$(PROGRAM_PROGS))
TBS := $(BENCH_TBS) $(PROGRAM_TBS)

MEMH := $(addprefix bench_,$(addsuffix .memh,$(PROGS)))
OUTS := $(addsuffix .out,$(TBS))

.PHONY: all test benches programs assemble clean
.SECONDARY: $(OUTS)

all: test

test: benches programs

benches: $(addprefix run-,$(BENCH_TBS))

programs: $(addprefix run-,$(PROGRAM_TBS))

assemble: $(MEMH)

bench_%.memh: bench_%.asm assembler.py
	$(ASSEMBLER) $< -o $@

tb_%.out: tb_%.v bench_%.memh $(RTL)
	@if [ "$(SIM)" = "iverilog" ]; then \
	$(IVERILOG) -g2012 -o $@ $(RTL) $<; \
	elif [ "$(SIM)" = "verilator" ]; then \
	$(VERILATOR) $(VERILATOR_FLAGS) -Wno-fatal --Mdir $(VERILATOR_BUILD_DIR) --top-module tb_$* -o Vtb_$* $(RTL) $<; \
	touch $@; \
	else \
	echo "Unsupported SIM=$(SIM). Use SIM=iverilog or SIM=verilator"; \
	exit 2; \
	fi

run-tb_%: tb_%.out
	@out="$$(mktemp)"; \
	if [ "$(SIM)" = "iverilog" ]; then \
		$(VVP) $< >"$$out" 2>&1; status=$$?; \
	elif [ "$(SIM)" = "verilator" ]; then \
		$(VERILATOR_BUILD_DIR)/Vtb_$* >"$$out" 2>&1; status=$$?; \
	else \
		echo "Unsupported SIM=$(SIM). Use SIM=iverilog or SIM=verilator" >"$$out"; status=2; \
	fi; \
	sed -E \
		-e 's/PASS/\x1b[32m&\x1b[0m/g' \
		-e 's/FAIL/\x1b[5;31m&\x1b[0m/g' \
		-e 's/[Ff][Aa][Tt][Aa][Ll]/\x1b[5;31m&\x1b[0m/g' \
		"$$out"; \
	rm -f "$$out"; \
	exit $$status

clean:
	rm -f $(MEMH) $(OUTS) *.vcd
	rm -rf $(VERILATOR_BUILD_DIR)
