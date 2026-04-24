// sch_path: /foss/designs/engn1600-team1/CAD7/inv.sch
module inv
#(
  parameter kINV = 1
)
(
  output wire OUT,
  inout wire VDD,
  inout wire VSS,
  input wire IN
);
pfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kINV*0.72u'" ) ,
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
 .D( OUT ),
 .G( IN ),
 .S( VDD ),
 .B( VDD )
);


nfet_03v3
#(
.L ( 2.8e-07 ) ,
.W ( "'kINV*0.36u'" ) ,
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
M2 ( 
 .D( OUT ),
 .G( IN ),
 .S( VSS ),
 .B( VSS )
);


// .param kINV=1

endmodule
