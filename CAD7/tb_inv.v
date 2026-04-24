`timescale 1ns/1ps
module tb_inv;

wire VSS = 1'b0;
wire VDD = 1'b1;
reg IN = 1'b0;
wire OUT;

always #5 IN = ~IN;

inv #(
    .kINV(1)
) inv0 (
    .OUT(OUT),
    .VDD(VDD),
    .VSS(VSS),
    .IN(IN)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_inv);
    #100
    $display("PASS tb_inv");
    $finish;
end
endmodule
