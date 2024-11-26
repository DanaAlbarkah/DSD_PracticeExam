`timescale 1ns / 1ps


module tb_MicroCircuit_Task3;
 logic [7:0]A;
 logic [7:0]B;
 logic Cin;
 logic Cout;


 MicroCircuit_Task3 M(.*  );


initial begin
    A=8'b000000000;
    B=8'b111111111;
    #10
    A=8'b11110000;
    B=8'b00111111;
    #10
    A=8'b11111111;
    B=8'b11111111;
    #10
    $finish;
    end

endmodule
