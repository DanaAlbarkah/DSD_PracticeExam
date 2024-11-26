`timescale 1ns / 1ps

module DFF(
input logic clk,
input logic  D,
input logic CLR_N,
output logic Q,
output logic Qbar
    );
    
    always_ff @(posedge clk, negedge CLR_N) begin
        if(~CLR_N) begin
        Q<=8'b00000000;
       end
            else begin
            Q<=D;
            end
    
    end
    assign Qbar=~Q;
endmodule
