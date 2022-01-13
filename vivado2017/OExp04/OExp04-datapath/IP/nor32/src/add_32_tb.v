`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/05 15:49:01
// Design Name: 
// Module Name: add_32_tb
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


module add_32_tb(

    );
    reg [31:0] a;
    reg [31:0] b;
    wire [31:0] c;

    add_32 add_32_ub(a,b,c);
    initial begin
        a = 0;b=0;#50;
        a = 2;b =4;#50;
        a = 10;b =23;#50;
    end
endmodule
