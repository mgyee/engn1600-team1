// ENGN1600 Baseline RISC Processor
// Anhang Li (anhangli@umich.edu)
// -----

`timescale 1ns/1ps
module tb_ctrl;
    reg clk = 0;
    reg rst = 1;
    always #5 clk = ~clk;

    processor #(.IMEM_FILE("bench_ctrl.memh")) dut (
        .CLK(clk), .RSTn(rst), .SI(), .SE()
    );

    initial begin
        #12 rst = 0;
        repeat (50) @(posedge clk);

        if (dut.u_dmem.mem[16'h0000] !== 16'h0002) begin
            $display("FAIL branch/jump: mem[0] = %h, expected 0002", dut.u_dmem.mem[16'h0000]);
            $fatal;
        end
        if (dut.u_dmem.mem[16'h0001] !== 16'h0004) begin
            $display("FAIL jump target: mem[1] = %h, expected 0004", dut.u_dmem.mem[16'h0001]);
            $fatal;
        end

        $display("PASS tb_ctrl");
        $finish;
    end
endmodule
