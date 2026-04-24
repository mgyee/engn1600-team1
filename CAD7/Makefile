RTL := control dmem imem

.PHONY: lib clean

lib: $(addsuffix .so,$(RTL))

%.so: %.v
	ngspice vlnggen $<

%.spice: %.sch
	xschem -n -o . $<

clean:
	rm -f *.spice *.so
	rm -rf *_obj_dir
