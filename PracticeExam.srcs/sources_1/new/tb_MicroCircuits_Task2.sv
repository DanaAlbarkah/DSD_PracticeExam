`timescale 1ns / 1ps

module tb_MicroCircuits_Task2;

logic clk=0;
logic [7:0] D;
logic RST_N;
logic out;
     
    MicroCircuits_Task2 utt(.clk(clk),
.D(D),
.RST_N(RST_N),
.out(out));


always #5 clk = ~clk; 

initial begin


    // Initial setup
    RST_N = 1;
    D= 0;
    $display("ODD=1 EVEN=0 THE OUT IS = %b", out);
 #10
    RST_N =1;
    D=8'b11111111;
       $display("ODD=1 EVEN=0 THE OUT IS = %b", out);
  #10
  RST_N =1;
  D=8'b01110000;
     $display("ODD=1 EVEN=0 THE OUT IS = %b", out);
  #10
 $display("ODD=1 EVEN=0 THE OUT IS = %b", out);
    $finish;//or $stop
end



endmodule

