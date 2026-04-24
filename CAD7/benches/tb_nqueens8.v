// ENGN1600 Baseline RISC Processor
// Anhang Li (anhangli@umich.edu)
// -----

`timescale 1ns/1ps
module tb_nqueens8;
    reg clk = 0;
    reg rst = 1;
    integer cycles;
    integer i;
    integer j;
    integer col_i;
    integer col_j;
    integer row_dist;
    integer col_dist;
    reg board_ok;
    always #5 clk = ~clk;

    processor #(.IMEM_FILE("bench_nqueens8.memh")) dut (
        .CLK(clk), .RSTn(~rst), .SI(), .SE()
    );

    initial begin
        #12 rst = 0;

        cycles = 0;
        while ((dut.u_dmem.mem[16'd10] === 16'd0 ||
                dut.u_dmem.mem[16'd11] === 16'd0 ||
                dut.u_dmem.mem[16'd12] === 16'd0 ||
                dut.u_dmem.mem[16'd13] === 16'd0 ||
                dut.u_dmem.mem[16'd14] === 16'd0 ||
                dut.u_dmem.mem[16'd15] === 16'd0 ||
                dut.u_dmem.mem[16'd16] === 16'd0 ||
                dut.u_dmem.mem[16'd17] === 16'd0) && cycles < 250000) begin
            @(posedge clk);
            cycles = cycles + 1;
        end

        if (cycles >= 250000) begin
            $display("FAIL nqueens8 timeout: mem[0] = %h after %0d cycles", dut.u_dmem.mem[16'h0000], cycles);
            $display("FAIL nqueens8 board(timeout): got %0d %0d %0d %0d %0d %0d %0d %0d",
                dut.u_dmem.mem[16'd10], dut.u_dmem.mem[16'd11],
                dut.u_dmem.mem[16'd12], dut.u_dmem.mem[16'd13],
                dut.u_dmem.mem[16'd14], dut.u_dmem.mem[16'd15],
                dut.u_dmem.mem[16'd16], dut.u_dmem.mem[16'd17]);
            $fatal;
        end

        board_ok = 1'b1;
        for (i = 16'd10; i <= 16'd17; i = i + 1) begin
            col_i = dut.u_dmem.mem[i];
            if (col_i < 1 || col_i > 8) begin
                board_ok = 1'b0;
            end

            for (j = i + 1; j <= 16'd17; j = j + 1) begin
                col_j = dut.u_dmem.mem[j];
                if (col_i == col_j) begin
                    board_ok = 1'b0;
                end

                row_dist = j - i;
                col_dist = col_i - col_j;
                if (col_dist < 0) begin
                    col_dist = -col_dist;
                end

                if (col_dist == row_dist) begin
                    board_ok = 1'b0;
                end
            end
        end

        if (!board_ok) begin
            $display("FAIL nqueens8 board: got %0d %0d %0d %0d %0d %0d %0d %0d",
                dut.u_dmem.mem[16'd10], dut.u_dmem.mem[16'd11],
                dut.u_dmem.mem[16'd12], dut.u_dmem.mem[16'd13],
                dut.u_dmem.mem[16'd14], dut.u_dmem.mem[16'd15],
                dut.u_dmem.mem[16'd16], dut.u_dmem.mem[16'd17]);
            $fatal;
        end

        $display("PASS tb_nqueens8");
        $finish;
    end
endmodule
