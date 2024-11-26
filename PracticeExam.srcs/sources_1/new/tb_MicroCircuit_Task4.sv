`timescale 1ns / 1ps

module tb_MicroCircuit_Task4;
logic [3:0] A, B;
logic [7:0] P;

    MicroCircuit_Task4 uut (
        .A(A),
        .B(B),
        .P(P)
    );
   
    initial begin
        $display("A      B      P");
        $monitor("%b  %b  %b", A, B, P);

       
        A = 4'b0011; // 3
        B = 4'b0010; // 2
        #10;

       
        A = 4'b0101; // 5
        B = 4'b0011; // 3
        #10;

       
        A = 4'b1111; // 15
        B = 4'b1111; // 15
        #10;

       
        A = 4'b1001; // 9
        B = 4'b0101; // 5
        #10;

        $finish;
    end
endmodule






