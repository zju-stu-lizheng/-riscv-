`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/28 14:08:50
// Design Name: 
// Module Name: Mem_reg_WB
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

module Mem_reg_WB( 
    input       clk_MemWB,//寄存器时
    input       rst_MemWB, //寄存器复位
    input       en_MemWB, //寄存器使能

	input[31:0] PC_in_MemWB,	/*PC输入*/
	input[31:0] inst_in_MemWB,	/*inst输入*/
	input 		valid_in_MemWB,	/*有效*/

    input[31:0] PC4_in_MemWB, //PC+4输入
    input[4:0]  Rd_addr_MemWB, //写目的地址输入
    input[31:0] ALU_in_MemWB,     //ALU输入
    input[31:0] Dmem_data_MemWB,   //存储器数据输入
    input[1:0]  MemtoReg_in_MemWB,     //写回
    input       RegWrite_in_MemWB,     //寄存器堆读写

	output reg[31:0] PC_out_MemWB,	/*PC输入*/
	output reg[31:0] inst_out_MemWB,	/*inst输入*/
	output reg		 valid_out_MemWB,	/*有效*/

    output reg[31:0]    PC4_out_MemWB, //PC+4输出
    output reg[4:0]     Rd_addr_out_MemWB, //写目的地址输出
    output reg[31:0]    ALU_out_MemWB,     //ALU输出
    output reg[31:0]    DMem_data_out_MemWB,    //存储器数据输出
    output reg[1:0]     MemtoReg_out_MemWB,     //写回
    output reg          RegWrite_out_MemWB    //寄存器堆读写
); 
	//For test
    always @(posedge clk_MemWB or posedge rst_MemWB)
		if (rst_MemWB==1) begin
			PC_out_MemWB <= 0;	/*PC输出(imm+pc)*/
			inst_out_MemWB <= 0;	/*有效*/
			valid_out_MemWB <= 0;	/*inst输出*/
		end 
		else if (en_MemWB) begin
			PC_out_MemWB <= PC_in_MemWB;	/*PC输出(imm+pc)*/
			inst_out_MemWB <= inst_in_MemWB;	/*有效*/
			valid_out_MemWB <= valid_in_MemWB;	/*inst输出*/
		end
	
    //PC4_out
    always @(posedge clk_MemWB or posedge rst_MemWB)
		if (rst_MemWB==1)  PC4_out_MemWB <= 0;
		else if (en_MemWB) PC4_out_MemWB <= PC4_in_MemWB;
    //Rd_addr
    always @(posedge clk_MemWB or posedge rst_MemWB)
		if (rst_MemWB==1)  Rd_addr_out_MemWB <= 0;
		else if (en_MemWB) Rd_addr_out_MemWB <= Rd_addr_MemWB;
    //ALU_out_MemWB
    always @(posedge clk_MemWB or posedge rst_MemWB)
		if (rst_MemWB==1)  ALU_out_MemWB <= 0;
		else if (en_MemWB) ALU_out_MemWB <= ALU_in_MemWB;
    //DMem_data_out_MemWB
    always @(posedge clk_MemWB or posedge rst_MemWB)
		if (rst_MemWB==1)  DMem_data_out_MemWB <= 0;
		else if (en_MemWB) DMem_data_out_MemWB <= Dmem_data_MemWB;
    //MemtoReg_out_MemWB
    always @(posedge clk_MemWB or posedge rst_MemWB)
		if (rst_MemWB==1)  MemtoReg_out_MemWB <= 0;
		else if (en_MemWB) MemtoReg_out_MemWB <= MemtoReg_in_MemWB;
    //MemtoReg_out_MemWB
    always @(posedge clk_MemWB or posedge rst_MemWB)
		if (rst_MemWB==1)  RegWrite_out_MemWB <= 0;
		else if (en_MemWB) RegWrite_out_MemWB <= RegWrite_in_MemWB;
endmodule