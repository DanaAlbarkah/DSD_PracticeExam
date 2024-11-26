`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module MicroCircuits_Task2(
 input logic  [7:0] D,
 input logic clk,
 input logic RST_N,
output logic out
    );
      logic [7:0] Q;
Register rg (.clk(clk), .D(D), .RST_N(RST_N), .Q(Q));
xor(out, Q);
  
endmodule


