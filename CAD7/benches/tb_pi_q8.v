// ENGN1600 Baseline RISC Processor
// Anhang Li (anhangli@umich.edu)
// -----

`timescale 1ns/1ps
module tb_pi_q8;
    reg clk = 0;
    reg rst = 1;
    always #5 clk = ~clk;

    cpu16 #(.IMEM_FILE("bench_pi_q8.memh")) dut (
        .clk(clk), .rst(rst), .dbg_pc(), .dbg_ir_x(), .dbg_flags()
    );

    initial begin
        #12 rst = 0;
        repeat (80000) @(posedge clk);

        if (dut.u_dmem.mem[16'h0000] !== 16'd799) begin
            $display("FAIL pi_q8: mem[0] = %h, expected 031f", dut.u_dmem.mem[16'h0000]);
            $fatal;
        end

        $display("PASS tb_pi_q8");
        $finish;
    end
endmodule
