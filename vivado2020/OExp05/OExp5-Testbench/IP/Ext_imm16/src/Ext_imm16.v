`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/05 16:18:02
// Design Name: 
// Module Name: Ext_imm16
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


module Ext_imm16(
    input [15:0] imm_16,
    output [31:0] imm_32
    );
    assign imm_32 = {16{imm_16[15]},imm_16};
endmodule
