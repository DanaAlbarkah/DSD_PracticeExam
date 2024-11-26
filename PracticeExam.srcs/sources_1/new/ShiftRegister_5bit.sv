`timescale 1ns / 1ps
module ShiftRegister_5bit (
    input  logic clk,
    input  logic CLR_N,
    input  logic serial_in,
    output logic [4:0] Q
);
    DFF dff0 (.clk(clk), .D(serial_in), .CLR_N(CLR_N), .Q(Q[0]), .Qbar());
    DFF dff1 (.clk(clk), .D(Q[0]), .CLR_N(CLR_N), .Q(Q[1]), .Qbar());
    DFF dff2 (.clk(clk), .D(Q[1]), .CLR_N(CLR_N), .Q(Q[2]), .Qbar());
    DFF dff3 (.clk(clk), .D(Q[2]), .CLR_N(CLR_N), .Q(Q[3]), .Qbar());
    DFF dff4 (.clk(clk), .D(Q[3]), .CLR_N(CLR_N), .Q(Q[4]), .Qbar());
endmodule
