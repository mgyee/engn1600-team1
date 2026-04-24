// sch_path: /foss/designs/engn1600-team1/CAD6/pc_full_adder.sch
module pc_full_adder
#(
  parameter kSUMb = 1,
  parameter kTS = 1
)
(
  output wire COUT,
  output wire SUM,
  inout wire VDD,
  inout wire VSS,
  input wire A,
  input wire B,
  input wire CIN
);
wire net10 ;
wire net11 ;
wire net12 ;
wire net1 ;
wire net2 ;
wire net3 ;
wire net4 ;
wire net5 ;
wire net6 ;
wire net7 ;
wire net8 ;
wire net9 ;

pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M1 ( 
 .D( net1 ),
 .G( B ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M2 ( 
 .D( net4 ),
 .G( A ),
 .S( net1 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M3 ( 
 .D( net3 ),
 .G( A ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M4 ( 
 .D( net3 ),
 .G( B ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M5 ( 
 .D( net4 ),
 .G( CIN ),
 .S( net3 ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M6 ( 
 .D( net4 ),
 .G( CIN ),
 .S( net5 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M7 ( 
 .D( net2 ),
 .G( B ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M8 ( 
 .D( net4 ),
 .G( A ),
 .S( net2 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M9 ( 
 .D( net5 ),
 .G( A ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M10 ( 
 .D( net5 ),
 .G( B ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kSUMb*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M11 ( 
 .D( net8 ),
 .G( net4 ),
 .S( net7 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M12 ( 
 .D( net7 ),
 .G( A ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M13 ( 
 .D( net7 ),
 .G( CIN ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M14 ( 
 .D( net7 ),
 .G( B ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M15 ( 
 .D( net9 ),
 .G( A ),
 .S( net10 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kTS*0.72u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M16 ( 
 .D( net8 ),
 .G( CIN ),
 .S( net9 ),
 .B( VDD )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M17 ( 
 .D( net10 ),
 .G( B ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kSUMb*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M18 ( 
 .D( net8 ),
 .G( net4 ),
 .S( net6 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M19 ( 
 .D( net6 ),
 .G( B ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M20 ( 
 .D( net6 ),
 .G( A ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M21 ( 
 .D( net6 ),
 .G( CIN ),
 .S( VSS ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kTS*0.36u'" ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M22 ( 
 .D( net8 ),
 .G( CIN ),
 .S( net12 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M23 ( 
 .D( net12 ),
 .G( A ),
 .S( net11 ),
 .B( VSS )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M24 ( 
 .D( net11 ),
 .G( B ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M25 ( 
 .D( COUT ),
 .G( net4 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M26 ( 
 .D( COUT ),
 .G( net4 ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 7.2e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M27 ( 
 .D( SUM ),
 .G( net8 ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( 3.6e-07 ) ,
.nf ( 1 ) ,
.m ( 1 ) ,
.ad ( "'int((nf+1)/2)'" ) ,
.pd ( "'2*int((nf+1)/2)'" ) ,
.as ( "'int((nf+2)/2)'" ) ,
.ps ( "'2*int((nf+2)/2)'" ) ,
.nrd ( "'0.18u'" ) ,
.nrs ( "'0.18u'" ) ,
.sa ( 0 ) ,
.sb ( 0 ) ,
.sd ( 0 ) ,
.model ( "nfet_03v3" ) ,
.spiceprefix ( "X" )
)
M28 ( 
 .D( SUM ),
 .G( net8 ),
 .S( VSS ),
 .B( VSS )
);


// .param kSUMb=1
// .param kTS=1

endmodule
