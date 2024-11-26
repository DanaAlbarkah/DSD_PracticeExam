`timescale 1ns / 1ps

module MicroCircuits_Task1(
input logic clk,
input logic [7:0] count,
input logic CLR_N,
output logic overflow
    );
    logic Q;
    DFF utt(.clk(clk),
.D(count),
.CLR_N(CLR_N),
.Q(Q),
.Qbar());

assign overflow = (~count&Q);
endmodule
