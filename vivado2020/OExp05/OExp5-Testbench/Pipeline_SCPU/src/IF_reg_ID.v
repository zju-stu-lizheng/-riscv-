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
    input NOP_IFID,             //插入NOP使能
    output reg [31:0] PC_out_IFID,
    output reg [31:0] inst_out_IFID,
    output reg valid_IFID       //寄存器有效
    );
    /*两个寄存器：分别存储PC值和指令*/
    always @(posedge clk_IFID or posedge rst_IFID)
		if (rst_IFID==1)  begin 
            PC_out_IFID <= 32'h00000000;
            inst_out_IFID <= 32'h00000000;
            valid_IFID <= 1;
        end
		else if (en_IFID && (! NOP_IFID)) begin 
            PC_out_IFID <= PC_in_IFID;
            inst_out_IFID <= inst_in_IFID;
            valid_IFID <= 1;
        end
        else if(NOP_IFID) begin
            PC_out_IFID <= 32'h00000000;
            inst_out_IFID <= 32'h00000013;
            valid_IFID <= 0;
        end

endmodule
