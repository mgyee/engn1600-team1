// sch_path: /foss/designs/engn1600-team1/CAD6/dff.sch
module dff
(
  output wire Q,
  inout wire VDD,
  inout wire VSS,
  input wire D,
  input wire RSTn,
  input wire CLK,
  input wire CLKb
);
wire net10 ;
wire net11 ;
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
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M7 ( 
 .D( net2 ),
 .G( CLK ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
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
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M8 ( 
 .D( net1 ),
 .G( D ),
 .S( net2 ),
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
M9 ( 
 .D( net1 ),
 .G( D ),
 .S( net3 ),
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
 .D( net3 ),
 .G( CLKb ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
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
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M13 ( 
 .D( net4 ),
 .G( net1 ),
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
M14 ( 
 .D( net4 ),
 .G( net1 ),
 .S( VSS ),
 .B( VSS )
);


pfet_03v3
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
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M15 ( 
 .D( net1 ),
 .G( CLKb ),
 .S( net5 ),
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
M16 ( 
 .D( net1 ),
 .G( CLK ),
 .S( net5 ),
 .B( VSS )
);


pfet_03v3
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
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M25 ( 
 .D( net5 ),
 .G( RSTn ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
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
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M26 ( 
 .D( net5 ),
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
M27 ( 
 .D( net6 ),
 .G( net4 ),
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
M28 ( 
 .D( net5 ),
 .G( RSTn ),
 .S( net6 ),
 .B( VSS )
);


pfet_03v3
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
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M29 ( 
 .D( net4 ),
 .G( CLKb ),
 .S( net7 ),
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
M30 ( 
 .D( net4 ),
 .G( CLK ),
 .S( net7 ),
 .B( VSS )
);


pfet_03v3
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
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M31 ( 
 .D( net8 ),
 .G( net7 ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
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
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M32 ( 
 .D( net8 ),
 .G( RSTn ),
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
M33 ( 
 .D( net9 ),
 .G( RSTn ),
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
M34 ( 
 .D( net8 ),
 .G( net7 ),
 .S( net9 ),
 .B( VSS )
);


pfet_03v3
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
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M35 ( 
 .D( net10 ),
 .G( CLK ),
 .S( VDD ),
 .B( VDD )
);


pfet_03v3
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
.model ( "pfet_03v3" ) ,
.spiceprefix ( "X" )
)
M36 ( 
 .D( net7 ),
 .G( net8 ),
 .S( net10 ),
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
M37 ( 
 .D( net7 ),
 .G( net8 ),
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
M38 ( 
 .D( net11 ),
 .G( CLKb ),
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
M43 ( 
 .D( Q ),
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
M44 ( 
 .D( Q ),
 .G( net8 ),
 .S( VSS ),
 .B( VSS )
);

endmodule
