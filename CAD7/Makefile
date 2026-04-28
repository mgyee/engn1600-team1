RTL := control dmem imem

.PHONY: lib lib.spice clean build-%

lib: $(RTL:%=%.so)

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

clean:
	rm -f $(RTL:%=%.so)
	rm -rf $(RTL:%=%_obj_dir)

# Usage: make build-arith
# - Temporarily patches imem.v so MEMFILE defaults to benches/bench_<name>.memh
# - Rebuilds imem.so
# - Restores imem.v
# - Copies benches/tb_<name>.spice -> tb_tmp.spice
build-%:
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
