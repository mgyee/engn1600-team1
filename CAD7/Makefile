MAKEFILE_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
RTL := control dmem imem

.PHONY: lib lib.spice processor_tb.spice clean build-%

lib: $(RTL:%=%.so) lib.spice

%.so: %.v
	ngspice vlnggen $<

lib.spice: $(RTL:%=%.v)
	@echo "Generating SPICE instantiations: $@"
	@rm -f $@
	@i=1; \
	for file in $^; do \
		python3 instantiate.py --irreversible $$i $$file >> $@; \
		i=$$((i+1)); \
	done

# Usage: make run-arith
# - Builds imem.so for bench_arith.memh and writes tb_tmp.spice
# - Simulates processor_tb.spice with ngspice, writing tb_run-arith.raw
run-%: build-% processor_tb.spice
	@set -e; \
	name="$*"; \
	ngspice -b -r tb_$${name}.raw processor_tb.spice && \
	echo "Simulated $${name} and wrote tb_$${name}.raw";

# Usage: make build-arith
# - Temporarily patches imem.v so MEMFILE defaults to benches/bench_<name>.memh
# - Rebuilds imem.so
# - Restores imem.v
# - Copies benches/tb_<name>.spice -> tb_tmp.spice
build-%: lib
	@set -e; \
	name="$*"; \
	memfile="benches/bench_$${name}.memh"; \
	tbspice="benches/tb_$${name}.spice"; \
	if [ ! -f "$$memfile" ]; then echo "Missing $$memfile" >&2; exit 1; fi; \
	if [ ! -f "$$tbspice" ]; then echo "Missing $$tbspice" >&2; exit 1; fi; \
	backup="$$(mktemp imem.v.XXXXXX.bak)"; \
	cp imem.v "$$backup"; \
	trap 'mv "$$backup" imem.v' EXIT INT TERM; \
	python3 patch_imem.py imem.v "$$memfile"; \
	$(MAKE) imem.so; \
	cp "$$tbspice" tb_tmp.spice; \
	echo "Built imem.so for $$name and wrote tb_tmp.spice";

processor_tb.spice: processor_tb.sch
	cd /foss/designs && \
	DISPLAY= xschem -n -q -o $(MAKEFILE_DIR) $(MAKEFILE_DIR)$< ; \
	rc=$$? ; \
	echo "xschem exit code: $$rc"

clean:
	rm -f $(RTL:%=%.so) lib.spice processor_tb.spice tb_tmp.spice
	rm -rf $(RTL:%=%_obj_dir)
