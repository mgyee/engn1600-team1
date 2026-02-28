v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -390 -640 410 -240 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.1
x2=2.1
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="RA15;ra15,ra14,ra13,ra12,ra11,ra10,ra9,ra8,ra7,ra6,ra5,ra4,ra3,ra2,ra1,ra0
RB15;rb15,rb14,rb13,rb12,rb11,rb10,rb9,rb8,rb7,rb6,rb5,rb4,rb3,rb2,rb1,rb0
QA15b;qa15,qa14,qa13,qa12,qa11,qa10,qa9,qa8,qa7,qa6,qa5,qa4,qa3,qa2,qa1,qa0
QB15b;qb15,qb14,qb13,qb12,qb11,qb10,qb9,qb8,qb7,qb6,qb5,qb4,qb3,qb2,qb1,qb0"
color="4 5 6 7"
dataset=-1
unitx=1
logx=0
logy=0
digital=1
autoload=1
}
B 2 -390 -1060 410 -660 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=10e-6
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="CLK;clk
WEM;wem
WE15;we15,we14,we13,we12,we11,we10,we9,we8,we7,we6,we5,we4,we3,we2,we1,we0
D15;d15,d14,d13,d12,d11,d10,d9,d8,d7,d6,d5,d4,d3,d2,d1,d0"
color="11 5 6 7"
dataset=-1
unitx=1
logx=0
logy=0
digital=1}
C {engn1600-team1/CAD3/rf.sym} 0 0 0 0 {name=x1}
C {lab_pin.sym} -150 -50 0 0 {name=p1 lab=CLK}
C {lab_pin.sym} -150 -30 0 0 {name=p2 lab=WEM}
C {lab_pin.sym} 150 -50 0 1 {name=p3 lab=VDD}
C {lab_pin.sym} 150 -30 0 1 {name=p4 lab=VSS}
C {lab_pin.sym} -150 -10 0 0 {name=p5 lab=WE[15..0]}
C {lab_pin.sym} -150 10 0 0 {name=p6 lab=RA[15..0]}
C {lab_pin.sym} -150 30 0 0 {name=p7 lab=RB[15..0]}
C {lab_pin.sym} -20 80 1 1 {name=p8 lab=D[15..0]}
C {lab_pin.sym} 0 80 1 1 {name=p9 lab=QAb[15..0]}
C {lab_pin.sym} 20 80 1 1 {name=p10 lab=QBb[15..0]}
C {devices/vsource.sym} -1170 750 1 0 {name=VCLK value=0}
C {devices/lab_pin.sym} -1140 750 2 0 {name=pCLK lab=CLK}
C {devices/gnd.sym} -1200 750 1 0 {name=gCLK}
C {devices/vsource.sym} -1170 650 1 0 {name=VWEM value=0}
C {devices/lab_pin.sym} -1140 650 2 0 {name=pWEM lab=WEM}
C {devices/gnd.sym} -1200 650 1 0 {name=gWEM}
C {devices/vsource.sym} -1170 550 1 0 {name=VVDD value=3.3}
C {devices/lab_pin.sym} -1140 550 2 0 {name=pVDD lab=VDD}
C {devices/gnd.sym} -1200 550 1 0 {name=gVDD}
C {devices/vsource.sym} -1170 450 1 0 {name=VVSS value=0}
C {devices/lab_pin.sym} -1140 450 2 0 {name=pVSS lab=VSS}
C {devices/gnd.sym} -1200 450 1 0 {name=gVSS}
C {devices/vsource.sym} -1020 750 1 0 {name=VWE15 value=0}
C {devices/lab_pin.sym} -990 750 2 0 {name=pWE15 lab=WE15}
C {devices/gnd.sym} -1050 750 1 0 {name=gWE15}
C {devices/vsource.sym} -1020 650 1 0 {name=VWE14 value=0}
C {devices/lab_pin.sym} -990 650 2 0 {name=pWE14 lab=WE14}
C {devices/gnd.sym} -1050 650 1 0 {name=gWE14}
C {devices/vsource.sym} -1020 550 1 0 {name=VWE13 value=0}
C {devices/lab_pin.sym} -990 550 2 0 {name=pWE13 lab=WE13}
C {devices/gnd.sym} -1050 550 1 0 {name=gWE13}
C {devices/vsource.sym} -1020 450 1 0 {name=VWE12 value=0}
C {devices/lab_pin.sym} -990 450 2 0 {name=pWE12 lab=WE12}
C {devices/gnd.sym} -1050 450 1 0 {name=gWE12}
C {devices/vsource.sym} -1020 350 1 0 {name=VWE11 value=0}
C {devices/lab_pin.sym} -990 350 2 0 {name=pWE11 lab=WE11}
C {devices/gnd.sym} -1050 350 1 0 {name=gWE11}
C {devices/vsource.sym} -1020 250 1 0 {name=VWE10 value=0}
C {devices/lab_pin.sym} -990 250 2 0 {name=pWE10 lab=WE10}
C {devices/gnd.sym} -1050 250 1 0 {name=gWE10}
C {devices/vsource.sym} -1020 150 1 0 {name=VWE9 value=0}
C {devices/lab_pin.sym} -990 150 2 0 {name=pWE9 lab=WE9}
C {devices/gnd.sym} -1050 150 1 0 {name=gWE9}
C {devices/vsource.sym} -1020 50 1 0 {name=VWE8 value=0}
C {devices/lab_pin.sym} -990 50 2 0 {name=pWE8 lab=WE8}
C {devices/gnd.sym} -1050 50 1 0 {name=gWE8}
C {devices/vsource.sym} -1020 -50 1 0 {name=VWE7 value=0}
C {devices/lab_pin.sym} -990 -50 2 0 {name=pWE7 lab=WE7}
C {devices/gnd.sym} -1050 -50 1 0 {name=gWE7}
C {devices/vsource.sym} -1020 -150 1 0 {name=VWE6 value=0}
C {devices/lab_pin.sym} -990 -150 2 0 {name=pWE6 lab=WE6}
C {devices/gnd.sym} -1050 -150 1 0 {name=gWE6}
C {devices/vsource.sym} -1020 -250 1 0 {name=VWE5 value=0}
C {devices/lab_pin.sym} -990 -250 2 0 {name=pWE5 lab=WE5}
C {devices/gnd.sym} -1050 -250 1 0 {name=gWE5}
C {devices/vsource.sym} -1020 -350 1 0 {name=VWE4 value=0}
C {devices/lab_pin.sym} -990 -350 2 0 {name=pWE4 lab=WE4}
C {devices/gnd.sym} -1050 -350 1 0 {name=gWE4}
C {devices/vsource.sym} -1020 -450 1 0 {name=VWE3 value=0}
C {devices/lab_pin.sym} -990 -450 2 0 {name=pWE3 lab=WE3}
C {devices/gnd.sym} -1050 -450 1 0 {name=gWE3}
C {devices/vsource.sym} -1020 -550 1 0 {name=VWE2 value=0}
C {devices/lab_pin.sym} -990 -550 2 0 {name=pWE2 lab=WE2}
C {devices/gnd.sym} -1050 -550 1 0 {name=gWE2}
C {devices/vsource.sym} -1020 -650 1 0 {name=VWE1 value=0}
C {devices/lab_pin.sym} -990 -650 2 0 {name=pWE1 lab=WE1}
C {devices/gnd.sym} -1050 -650 1 0 {name=gWE1}
C {devices/vsource.sym} -1020 -750 1 0 {name=VWE0 value=0}
C {devices/lab_pin.sym} -990 -750 2 0 {name=pWE0 lab=WE0}
C {devices/gnd.sym} -1050 -750 1 0 {name=gWE0}
C {devices/vsource.sym} -870 750 1 0 {name=VRA15 value=0}
C {devices/lab_pin.sym} -840 750 2 0 {name=pRA15 lab=RA15}
C {devices/gnd.sym} -900 750 1 0 {name=gRA15}
C {devices/vsource.sym} -870 650 1 0 {name=VRA14 value=0}
C {devices/lab_pin.sym} -840 650 2 0 {name=pRA14 lab=RA14}
C {devices/gnd.sym} -900 650 1 0 {name=gRA14}
C {devices/vsource.sym} -870 550 1 0 {name=VRA13 value=0}
C {devices/lab_pin.sym} -840 550 2 0 {name=pRA13 lab=RA13}
C {devices/gnd.sym} -900 550 1 0 {name=gRA13}
C {devices/vsource.sym} -870 450 1 0 {name=VRA12 value=0}
C {devices/lab_pin.sym} -840 450 2 0 {name=pRA12 lab=RA12}
C {devices/gnd.sym} -900 450 1 0 {name=gRA12}
C {devices/vsource.sym} -870 350 1 0 {name=VRA11 value=0}
C {devices/lab_pin.sym} -840 350 2 0 {name=pRA11 lab=RA11}
C {devices/gnd.sym} -900 350 1 0 {name=gRA11}
C {devices/vsource.sym} -870 250 1 0 {name=VRA10 value=0}
C {devices/lab_pin.sym} -840 250 2 0 {name=pRA10 lab=RA10}
C {devices/gnd.sym} -900 250 1 0 {name=gRA10}
C {devices/vsource.sym} -870 150 1 0 {name=VRA9 value=0}
C {devices/lab_pin.sym} -840 150 2 0 {name=pRA9 lab=RA9}
C {devices/gnd.sym} -900 150 1 0 {name=gRA9}
C {devices/vsource.sym} -870 50 1 0 {name=VRA8 value=0}
C {devices/lab_pin.sym} -840 50 2 0 {name=pRA8 lab=RA8}
C {devices/gnd.sym} -900 50 1 0 {name=gRA8}
C {devices/vsource.sym} -870 -50 1 0 {name=VRA7 value=0}
C {devices/lab_pin.sym} -840 -50 2 0 {name=pRA7 lab=RA7}
C {devices/gnd.sym} -900 -50 1 0 {name=gRA7}
C {devices/vsource.sym} -870 -150 1 0 {name=VRA6 value=0}
C {devices/lab_pin.sym} -840 -150 2 0 {name=pRA6 lab=RA6}
C {devices/gnd.sym} -900 -150 1 0 {name=gRA6}
C {devices/vsource.sym} -870 -250 1 0 {name=VRA5 value=0}
C {devices/lab_pin.sym} -840 -250 2 0 {name=pRA5 lab=RA5}
C {devices/gnd.sym} -900 -250 1 0 {name=gRA5}
C {devices/vsource.sym} -870 -350 1 0 {name=VRA4 value=0}
C {devices/lab_pin.sym} -840 -350 2 0 {name=pRA4 lab=RA4}
C {devices/gnd.sym} -900 -350 1 0 {name=gRA4}
C {devices/vsource.sym} -870 -450 1 0 {name=VRA3 value=0}
C {devices/lab_pin.sym} -840 -450 2 0 {name=pRA3 lab=RA3}
C {devices/gnd.sym} -900 -450 1 0 {name=gRA3}
C {devices/vsource.sym} -870 -550 1 0 {name=VRA2 value=0}
C {devices/lab_pin.sym} -840 -550 2 0 {name=pRA2 lab=RA2}
C {devices/gnd.sym} -900 -550 1 0 {name=gRA2}
C {devices/vsource.sym} -870 -650 1 0 {name=VRA1 value=0}
C {devices/lab_pin.sym} -840 -650 2 0 {name=pRA1 lab=RA1}
C {devices/gnd.sym} -900 -650 1 0 {name=gRA1}
C {devices/vsource.sym} -870 -750 1 0 {name=VRA0 value=0}
C {devices/lab_pin.sym} -840 -750 2 0 {name=pRA0 lab=RA0}
C {devices/gnd.sym} -900 -750 1 0 {name=gRA0}
C {devices/vsource.sym} -720 750 1 0 {name=VRB15 value=0}
C {devices/lab_pin.sym} -690 750 2 0 {name=pRB15 lab=RB15}
C {devices/gnd.sym} -750 750 1 0 {name=gRB15}
C {devices/vsource.sym} -720 650 1 0 {name=VRB14 value=0}
C {devices/lab_pin.sym} -690 650 2 0 {name=pRB14 lab=RB14}
C {devices/gnd.sym} -750 650 1 0 {name=gRB14}
C {devices/vsource.sym} -720 550 1 0 {name=VRB13 value=0}
C {devices/lab_pin.sym} -690 550 2 0 {name=pRB13 lab=RB13}
C {devices/gnd.sym} -750 550 1 0 {name=gRB13}
C {devices/vsource.sym} -720 450 1 0 {name=VRB12 value=0}
C {devices/lab_pin.sym} -690 450 2 0 {name=pRB12 lab=RB12}
C {devices/gnd.sym} -750 450 1 0 {name=gRB12}
C {devices/vsource.sym} -720 350 1 0 {name=VRB11 value=0}
C {devices/lab_pin.sym} -690 350 2 0 {name=pRB11 lab=RB11}
C {devices/gnd.sym} -750 350 1 0 {name=gRB11}
C {devices/vsource.sym} -720 250 1 0 {name=VRB10 value=0}
C {devices/lab_pin.sym} -690 250 2 0 {name=pRB10 lab=RB10}
C {devices/gnd.sym} -750 250 1 0 {name=gRB10}
C {devices/vsource.sym} -720 150 1 0 {name=VRB9 value=0}
C {devices/lab_pin.sym} -690 150 2 0 {name=pRB9 lab=RB9}
C {devices/gnd.sym} -750 150 1 0 {name=gRB9}
C {devices/vsource.sym} -720 50 1 0 {name=VRB8 value=0}
C {devices/lab_pin.sym} -690 50 2 0 {name=pRB8 lab=RB8}
C {devices/gnd.sym} -750 50 1 0 {name=gRB8}
C {devices/vsource.sym} -720 -50 1 0 {name=VRB7 value=0}
C {devices/lab_pin.sym} -690 -50 2 0 {name=pRB7 lab=RB7}
C {devices/gnd.sym} -750 -50 1 0 {name=gRB7}
C {devices/vsource.sym} -720 -150 1 0 {name=VRB6 value=0}
C {devices/lab_pin.sym} -690 -150 2 0 {name=pRB6 lab=RB6}
C {devices/gnd.sym} -750 -150 1 0 {name=gRB6}
C {devices/vsource.sym} -720 -250 1 0 {name=VRB5 value=0}
C {devices/lab_pin.sym} -690 -250 2 0 {name=pRB5 lab=RB5}
C {devices/gnd.sym} -750 -250 1 0 {name=gRB5}
C {devices/vsource.sym} -720 -350 1 0 {name=VRB4 value=0}
C {devices/lab_pin.sym} -690 -350 2 0 {name=pRB4 lab=RB4}
C {devices/gnd.sym} -750 -350 1 0 {name=gRB4}
C {devices/vsource.sym} -720 -450 1 0 {name=VRB3 value=0}
C {devices/lab_pin.sym} -690 -450 2 0 {name=pRB3 lab=RB3}
C {devices/gnd.sym} -750 -450 1 0 {name=gRB3}
C {devices/vsource.sym} -720 -550 1 0 {name=VRB2 value=0}
C {devices/lab_pin.sym} -690 -550 2 0 {name=pRB2 lab=RB2}
C {devices/gnd.sym} -750 -550 1 0 {name=gRB2}
C {devices/vsource.sym} -720 -650 1 0 {name=VRB1 value=0}
C {devices/lab_pin.sym} -690 -650 2 0 {name=pRB1 lab=RB1}
C {devices/gnd.sym} -750 -650 1 0 {name=gRB1}
C {devices/vsource.sym} -720 -750 1 0 {name=VRB0 value=0}
C {devices/lab_pin.sym} -690 -750 2 0 {name=pRB0 lab=RB0}
C {devices/gnd.sym} -750 -750 1 0 {name=gRB0}
C {devices/vsource.sym} -570 750 1 0 {name=VD15 value=0}
C {devices/lab_pin.sym} -540 750 2 0 {name=pD15 lab=D15}
C {devices/gnd.sym} -600 750 1 0 {name=gD15}
C {devices/vsource.sym} -570 650 1 0 {name=VD14 value=0}
C {devices/lab_pin.sym} -540 650 2 0 {name=pD14 lab=D14}
C {devices/gnd.sym} -600 650 1 0 {name=gD14}
C {devices/vsource.sym} -570 550 1 0 {name=VD13 value=0}
C {devices/lab_pin.sym} -540 550 2 0 {name=pD13 lab=D13}
C {devices/gnd.sym} -600 550 1 0 {name=gD13}
C {devices/vsource.sym} -570 450 1 0 {name=VD12 value=0}
C {devices/lab_pin.sym} -540 450 2 0 {name=pD12 lab=D12}
C {devices/gnd.sym} -600 450 1 0 {name=gD12}
C {devices/vsource.sym} -570 350 1 0 {name=VD11 value=0}
C {devices/lab_pin.sym} -540 350 2 0 {name=pD11 lab=D11}
C {devices/gnd.sym} -600 350 1 0 {name=gD11}
C {devices/vsource.sym} -570 250 1 0 {name=VD10 value=0}
C {devices/lab_pin.sym} -540 250 2 0 {name=pD10 lab=D10}
C {devices/gnd.sym} -600 250 1 0 {name=gD10}
C {devices/vsource.sym} -570 150 1 0 {name=VD9 value=0}
C {devices/lab_pin.sym} -540 150 2 0 {name=pD9 lab=D9}
C {devices/gnd.sym} -600 150 1 0 {name=gD9}
C {devices/vsource.sym} -570 50 1 0 {name=VD8 value=0}
C {devices/lab_pin.sym} -540 50 2 0 {name=pD8 lab=D8}
C {devices/gnd.sym} -600 50 1 0 {name=gD8}
C {devices/vsource.sym} -570 -50 1 0 {name=VD7 value=0}
C {devices/lab_pin.sym} -540 -50 2 0 {name=pD7 lab=D7}
C {devices/gnd.sym} -600 -50 1 0 {name=gD7}
C {devices/vsource.sym} -570 -150 1 0 {name=VD6 value=0}
C {devices/lab_pin.sym} -540 -150 2 0 {name=pD6 lab=D6}
C {devices/gnd.sym} -600 -150 1 0 {name=gD6}
C {devices/vsource.sym} -570 -250 1 0 {name=VD5 value=0}
C {devices/lab_pin.sym} -540 -250 2 0 {name=pD5 lab=D5}
C {devices/gnd.sym} -600 -250 1 0 {name=gD5}
C {devices/vsource.sym} -570 -350 1 0 {name=VD4 value=0}
C {devices/lab_pin.sym} -540 -350 2 0 {name=pD4 lab=D4}
C {devices/gnd.sym} -600 -350 1 0 {name=gD4}
C {devices/vsource.sym} -570 -450 1 0 {name=VD3 value=0}
C {devices/lab_pin.sym} -540 -450 2 0 {name=pD3 lab=D3}
C {devices/gnd.sym} -600 -450 1 0 {name=gD3}
C {devices/vsource.sym} -570 -550 1 0 {name=VD2 value=0}
C {devices/lab_pin.sym} -540 -550 2 0 {name=pD2 lab=D2}
C {devices/gnd.sym} -600 -550 1 0 {name=gD2}
C {devices/vsource.sym} -570 -650 1 0 {name=VD1 value=0}
C {devices/lab_pin.sym} -540 -650 2 0 {name=pD1 lab=D1}
C {devices/gnd.sym} -600 -650 1 0 {name=gD1}
C {devices/vsource.sym} -570 -750 1 0 {name=VD0 value=0}
C {devices/lab_pin.sym} -540 -750 2 0 {name=pD0 lab=D0}
C {devices/gnd.sym} -600 -750 1 0 {name=gD0}
