// ENGN1600 Baseline RISC Processor
// Anhang Li (anhangli@umich.edu)
// -----

`timescale 1ns/1ps
module tb_arith;
    reg clk = 0;
    reg rst = 1;
    always #5 clk = ~clk;

    processor #(.IMEM_FILE("bench_arith.memh")) dut (
        .CLK(clk), .RSTn(~rst), .SI(), .SE()
    );

    initial begin
        #12 rst = 0;
        repeat (40) @(posedge clk);

        if (dut.u_dmem.mem[16'h0000] !== 16'h0008) begin
            $display("FAIL arith: mem[0] = %h, expected 0008", dut.u_dmem.mem[16'h0000]);
            $fatal;
        end
        if (dut.u_dmem.mem[16'h0001] !== 16'h0003) begin
            $display("FAIL sub: mem[1] = %h, expected 0003", dut.u_dmem.mem[16'h0001]);
            $fatal;
        end
        // if (dut.dbg_flags[0] !== 1'b0) begin
        //     $display("FAIL cmp: Z flag = %b, expected 0", dut.dbg_flags[0]);
        //     $fatal;
        // end

        $display("PASS tb_arith");
        $finish;
    end
endmodule
