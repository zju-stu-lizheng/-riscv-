`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/27 14:34:32
// Design Name: 
// Module Name: Instruction_Fetch
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


module Instruction_Fetch(
    input wire clk_IF,
    input wire rst_IF,
    input wire en_IF,
    input wire [31:0] PC_in_IF,
    input wire PCSrc,
    output wire [31:0] PC_out_IF
    );
    wire [31:0] MUX2T1_32_out;
    wire [31:0] PC_4;
    MUX2T1_32 MUX2T1_32_1(
        .I0(PC_4),
        .I1(PC_in_IF),
        .s(PCSrc),
        .o(MUX2T1_32_out)
    );

    REG32 PC(
        .clk(clk_IF),
        .rst(rst_IF),
        .CE(en_IF),
        .D(MUX2T1_32_out),
        .Q(PC_out_IF)
    );

    add_32 add_32_1(
        .a(32'h00000004),
        .b(PC_out_IF),
        .c(PC_4)
    );

endmodule
