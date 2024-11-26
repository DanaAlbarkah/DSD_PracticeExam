`timescale 1ns / 1ps

module tb_MicroCircuits_Task1;

logic clk=0;
logic [7:0] count;
logic CLR_N;
logic overflow;
    
    MicroCircuits_Task1 utt(.clk(clk),
.count(count),
.CLR_N(CLR_N),
.overflow(overflow));


always #5 clk = ~clk; 

initial begin


    // Initial setup
    CLR_N = 1;
    count= 0;
    $display("overflow= %b", overflow);
 #10
    CLR_N =1;
    count=8'b11111111;
        $display("overflow= %b", overflow);
  #10
  CLR_N =1;
  count=8'b01110000;
      $display("overflow= %b", overflow);
  #10
 $display("overflow= %b", overflow);
    $finish;//or $stop
end



endmodule














