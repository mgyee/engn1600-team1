RTL := processor.v control.v dmem.v imem.v

.PHONY: all test benches programs assemble clean

spice: $(RTL)
	ngspice vlnggen $^
