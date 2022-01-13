`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/05 15:58:57
// Design Name: 
// Module Name: ADC32
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


module ADC32(
    input [31:0] A,
    input [31:0] B,
    input C0,
    output [32:0] S
    );
    
    wire B_Notation = C0 ^1'b1; //确保符号位没问题
    assign S = {1'b0,A} + {B_Notation,B} + C0;
    // wire [32:0] res1;
    // wire [32:0] res2;

    // assign res1 = A + B;
    // assign res2 = A - B;
    // assign S = C0 ? res2 :res1;

endmodule
