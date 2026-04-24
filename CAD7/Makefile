.PHONY: proc clean

proc: processor.so

%.so: %.v
	ngspice vlnggen $<

%.spice: %.sch
	xschem -n -o . $<

clean:
	rm -f *.spice *.so
	rm -rf *_obj_dir
