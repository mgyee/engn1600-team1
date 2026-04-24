// iverilog -o sim_result nfet_03v3.v pfet_03v3.v dff.v tb_dff.v
// vvp sim_result
// gtkwave wave.vcd
`timescale 1ns/1ps
module tb_dff;

wire Q;
wire VDD = 1;
wire VSS = 0;
reg D = 0;
reg RSTn = 1;
reg CLK = 0;
wire CLKb;

dff dff0 (
    .Q(Q),
    .VDD(VDD),
    .VSS(VSS),
    .D(D),
    .RSTn(RSTn),
    .CLK(CLK),
    .CLKb(CLKb)
);

always #5 CLK = ~CLK; // Toggle CLK every 5 ns
assign CLKb = ~CLK;

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_dff);

    // Test reset
    RSTn = 0;
    #12;
    if (Q !== 1'b0) begin
        $display("FAIL: Q should be 0 after reset, got %b", Q);
    end
    RSTn = 1;

    // Test D flip-flop behavior
    D = 1;
    #10; // Wait for one clock cycle
    if (Q !== 1'b1) begin
        $display("FAIL: Q should be 1 after D=1, got %b", Q);
    end

    D = 0;
    #10; // Wait for one clock cycle
    if (Q !== 1'b0) begin
        $display("FAIL: Q should be 0 after D=0, got %b", Q);
    end

    $finish;
end
endmodule
