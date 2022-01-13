`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/27 14:49:15
// Design Name: 
// Module Name: IF_reg_ID
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


module IF_reg_ID(
    input clk_IFID,
    input rst_IFID,
    input en_IFID,
    input [31:0] PC_in_IFID,
    input [31:0] inst_in_IFID,
    output [31:0] PC_out_IFID,
    output [31:0] inst_out_IFID
    );
    /*两个寄存器：分别存储PC值和指令*/
    REG32 PC(
        .clk(clk_IFID),
        .rst(rst_IFID),
        .CE(en_IFID),
        .D(PC_in_IFID),
        .Q(PC_out_IFID)
    );

    REG32 inst(
        .clk(clk_IFID),
        .rst(rst_IFID),
        .CE(en_IFID),
        .D(inst_in_IFID),
        .Q(inst_out_IFID)
    );
endmodule
