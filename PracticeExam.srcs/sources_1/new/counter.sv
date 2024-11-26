`timescale 1ns / 1ps

module counter (
    input  logic clk,
    input  logic CLR_N,
    input  logic count_en,
    output logic [1:0] count
);
    always_ff @(posedge clk or negedge CLR_N) begin
        if (~CLR_N)
            count <= 2'b00;
        else if (count_en)
            count <= count + 1'b1;
    end
endmodule

