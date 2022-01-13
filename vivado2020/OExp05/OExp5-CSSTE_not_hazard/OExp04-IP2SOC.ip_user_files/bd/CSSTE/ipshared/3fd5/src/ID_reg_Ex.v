`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/27 21:09:23
// Design Name: 
// Module Name: ID_reg_Ex
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


module ID_reg_Ex( 
        input clk_IDEX, //寄存器时钟
        input rst_IDEX, //寄存器复位
        input en_IDEX, //寄存器使能
        input[31:0] PC_in_IDEX, //PC输入
        input[4:0] Rd_addr_IDEX, //写目的地址输入
        input[31:0] Rs1_in_IDEX,//操作数1输入
        input[31:0] Rs2_in_IDEX, //操作数2输如
        input[31:0] Imm_in_IDEX , //立即数输入
        input ALUSrc_B_in_IDEX , //ALU B输入选择
        input[3:0] ALU_control_in_IDEX, //ALU选择控制
        input Branch_in_IDEX, //Beq
        input BranchN_in_IDEX, //Bne
        input MemRW_in_IDEX, //存储器读写
        input[1:0] Jump_in_IDEX, //Jal
        input[1:0] MemtoReg_in_IDEX, //写回选择
        input RegWrite_in_IDEX, //寄存器堆读写
        output [31:0] PC_out_IDEX,//PC输出
        output reg[4:0] Rd_addr_out_IDEX,//目的地址输出
        output [31:0] Rs1_out_IDEX,//操作数1输出
        output [31:0] Rs2_out_IDEX, //操作数2输出
        output [31:0] Imm_out_IDEX , //立即数输出
        output reg ALUSrc_B_out_IDEX , //ALU B选择
        output reg[3:0] ALU_control_out_IDEX, //ALU控制
        output reg Branch_out_IDEX, //Beq
        output reg BranchN_out_IDEX, //Bne
        output reg MemRW_out_IDEX, //存储器读写
        output reg [1:0]Jump_out_IDEX, //Jal
        output reg [1:0] MemtoReg_out_IDEX, //写回
        output reg RegWrite_out_IDEX //寄存器堆读写
    ); 

    /*以下信号采用一个32位寄存器存储*/
    REG32 PC(
        .clk(clk_IDEX),
        .rst(rst_IDEX),
        .CE(en_IDEX),
        .D(PC_in_IDEX),
        .Q(PC_out_IDEX)
    );

    REG32 Rs1(
        .clk(clk_IDEX),
        .rst(rst_IDEX),
        .CE(en_IDEX),
        .D(Rs1_in_IDEX),
        .Q(Rs1_out_IDEX)
    );

    REG32 Rs2(
        .clk(clk_IDEX),
        .rst(rst_IDEX),
        .CE(en_IDEX),
        .D(Rs2_in_IDEX),
        .Q(Rs2_out_IDEX)
    );

    REG32 Imm(
        .clk(clk_IDEX),
        .rst(rst_IDEX),
        .CE(en_IDEX),
        .D(Imm_in_IDEX),
        .Q(Imm_out_IDEX)
    );

    //Rd_addr寄存器
    always @(posedge clk_IDEX or posedge rst_IDEX)
		if (rst_IDEX==1)  Rd_addr_out_IDEX <= 0;
		else if (en_IDEX) Rd_addr_out_IDEX <= Rd_addr_IDEX;
    //ALUSrc_B
    always @(posedge clk_IDEX or posedge rst_IDEX)
		if (rst_IDEX==1)  ALUSrc_B_out_IDEX <= 0;
		else if (en_IDEX) ALUSrc_B_out_IDEX <= ALUSrc_B_in_IDEX;
    //ALUControl
    always @(posedge clk_IDEX or posedge rst_IDEX)
		if (rst_IDEX==1)  ALU_control_out_IDEX <= 0;
		else if (en_IDEX) ALU_control_out_IDEX <= ALU_control_in_IDEX;
    //Branch
    always @(posedge clk_IDEX or posedge rst_IDEX)
		if (rst_IDEX==1)  Branch_out_IDEX <= 0;
		else if (en_IDEX) Branch_out_IDEX <= Branch_in_IDEX;
    //BranchN
    always @(posedge clk_IDEX or posedge rst_IDEX)
		if (rst_IDEX==1)  BranchN_out_IDEX <= 0;
		else if (en_IDEX) BranchN_out_IDEX <= BranchN_in_IDEX;
    //MemRW
    always @(posedge clk_IDEX or posedge rst_IDEX)
		if (rst_IDEX==1)  MemRW_out_IDEX <= 0;
		else if (en_IDEX) MemRW_out_IDEX <= MemRW_in_IDEX;
    //Jump
    always @(posedge clk_IDEX or posedge rst_IDEX)
		if (rst_IDEX==1)  Jump_out_IDEX <= 0;
		else if (en_IDEX) Jump_out_IDEX <= Jump_in_IDEX;
    //MemtoReg
    always @(posedge clk_IDEX or posedge rst_IDEX)
		if (rst_IDEX==1)  MemtoReg_out_IDEX <= 0;
		else if (en_IDEX) MemtoReg_out_IDEX <= MemtoReg_in_IDEX;
    //RegWrite
    always @(posedge clk_IDEX or posedge rst_IDEX)
		if (rst_IDEX==1)  RegWrite_out_IDEX <= 0;
		else if (en_IDEX) RegWrite_out_IDEX <= RegWrite_in_IDEX;
    

endmodule
