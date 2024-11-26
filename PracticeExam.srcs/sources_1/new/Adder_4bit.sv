`timescale 1ns / 1ps

module Adder_4bit(
input [3:0] A,
input [3:0] B,
input cin,
output [3:0] sum,
 output carry
    );
    logic  [4:0] tempAdder;
assign tempAdder = A + B+cin;
 assign sum = tempAdder[3:0];
assign carry = tempAdder[4];
    endmodule
