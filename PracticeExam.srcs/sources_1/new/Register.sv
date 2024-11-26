`timescale 1ns / 1ps

module Register(
 input logic  [7:0] D,
 input logic clk,
 input logic RST_N,
             
 output logic [7:0] Q
    );
    //wires 
    logic w_Q3, w_Q2, w_Q1;
    logic temp_Q;
    logic [7:0] temp_Qbar;

    DFF dff_inst1(
             .D(D[7]),
             .clk(clk),
             .CLR_N(RST_N),
             .Q(Q[7]),
             .Qbar(temp_Qbar[3]));
    
    DFF dff_inst2(
             .D(D[6]),
             .clk(clk),
             .CLR_N(RST_N),
             .Q(Q[6]),
             .Qbar(temp_Qbar[6]));
          

    DFF dff_inst3(
             .D(D[5]),
             .clk(clk),
             .CLR_N(RST_N),
             .Q(Q[5]),
             .Qbar(temp_Qbar[5]));

    DFF dff_inst4(
             .D(D[4]),
             .clk(clk),
             .CLR_N(RST_N),
             .Q(Q[4]),
             .Qbar(temp_Qbar[4]));
             
             
    DFF dff_inst5(
             .D(D[3]),
             .clk(clk),
             .CLR_N(RST_N),
             .Q(Q[3]),
             .Qbar(temp_Qbar[3]));
    
    DFF dff_inst6(
             .D(D[2]),
             .clk(clk),
             .CLR_N(RST_N),
             .Q(Q[2]),
             .Qbar(temp_Qbar[2]));
          

    DFF dff_inst7(
             .D(D[1]),
             .clk(clk),
             .CLR_N(RST_N),
             .Q(Q[1]),
             .Qbar(temp_Qbar[1]));

    DFF dff_inst8(
             .D(D[0]),
             .clk(clk),
             .CLR_N(RST_N),
             .Q(Q[0]),
             .Qbar(temp_Qbar[0]));

assign Q0 = Q;

endmodule
