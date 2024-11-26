`timescale 1ns / 1ps

module MicroCircuit_Task3(
input logic [7:0]A,
input logic [7:0]B,
input logic Cin,
output logic Cout

    );
    
   logic Cout_temp;
   Adder_4bit A1 (
   .A(A[3:0]),
   .B(B[3:0]),
   .cin(0),
   .carry(Cout_temp),
   .sum()
   
   );
    Adder_4bit A2 (
   .A(A[7:4]),
   .B(B[7:4]),
  .cin(Cout_temp),
   .carry(Cout),
   .sum()
   
   );
endmodule
