v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
C {devices/code_shown.sym} 480 -30 0 0 {name=VERILOG only_toplevel=false
format="tcleval( @value )"
value="
.include /foss/designs/engn1600-team1/CAD7/datapath.spice
.include /foss/designs/engn1600-team1/CAD7/lib.spice
"}
C {ipin.sym} -490 -50 0 0 {name=p31 lab=CLK}
C {ipin.sym} -490 -30 0 0 {name=p32 lab=RSTn}
C {ipin.sym} -490 -10 0 0 {name=p33 lab=SE}
C {ipin.sym} -490 10 0 0 {name=p34 lab=SI}
C {iopin.sym} -490 30 2 0 {name=p35 lab=VDD}
C {iopin.sym} -490 50 2 0 {name=p36 lab=VSS}
