`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/20 14:39:21
// Design Name: 
// Module Name: SPIO_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SPIO_tb;
   reg clk;
   reg rst;
   reg Start;
   reg EN;
   reg [31:0]P_Data;
   wire [1:0] counter_set;
   wire [15:0] LED_out;
   wire led_clk;
   wire led_sout;
   wire led_clrn;
   wire LED_PEN;
   wire [13:0] GPIOf0;
 always #5 clk = ~clk;
 always #500 Start = ~Start;
 SPIO U_SPIO(
     .clk(clk),
     .rst(rst),
     .Start(Start),
     .EN(EN),
     .P_Data(P_Data),
     .counter_set(counter_set),
     .LED_out(LED_out),
     .led_clk(led_clk),
     .led_sout(led_sout),
     .led_clrn(led_clrn),
     .LED_PEN(LED_PEN),
     .GPIOf0(GPIOf0)
 );
 initial begin
    clk = 0;
    rst = 1;
    EN = 0;
    Start = 0;
    P_Data = 32'b0;
    #100
    rst = 0;
    EN = 1;
    #100
    P_Data = 32'b00000000000000_0011001100110011_00;
 end
endmodule

