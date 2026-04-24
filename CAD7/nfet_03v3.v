module nfet_03v3 #(
  parameter L = 2.8e-07 ,
  parameter W = 3.6e-07 ,
  parameter nf = 1 ,
  parameter m = 1 ,
  parameter ad = "'int((nf+1)/2)'" ,
  parameter pd = "'2*int((nf+1)/2)'" ,
  parameter as = "'int((nf+2)/2)'" ,
  parameter ps = "'2*int((nf+2)/2)'" ,
  parameter nrd = 0.18e-06 ,
  parameter nrs = 0.18e-06 ,
  parameter sa = 0 ,
  parameter sb = 0 ,
  parameter sd = 0 ,
  parameter model = nfet_03v3 ,
  parameter spiceprefix = X
) (
  inout D ,
  input G ,
  input S ,
  input B
);

nmos u_nmos ( D, S, G );

endmodule