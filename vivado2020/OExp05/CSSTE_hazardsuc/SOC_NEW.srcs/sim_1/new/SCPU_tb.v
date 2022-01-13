`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/26 15:10:19
// Design Name: 
// Module Name: SCPU_tb
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


module SCPU_tb;

    reg clk;
    reg rst;
    SCPU_SIM_wrapper u(.clk(clk),.rst(rst));
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        rst = 1;
        #1
        rst = 0;
    end
endmodule