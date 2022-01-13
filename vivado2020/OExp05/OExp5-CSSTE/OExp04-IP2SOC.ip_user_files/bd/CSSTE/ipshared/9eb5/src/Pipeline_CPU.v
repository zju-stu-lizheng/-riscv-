`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/28 14:35:18
// Design Name: 
// Module Name: Pipeline_CPU
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


module Pipeline_CPU(
    input [31:0] Data_in,
    input clk,
    input rst,
    input [31:0] inst_IF,
    output [31:0] PC_out_EX,
    output [31:0] PC_out_ID,
    output [31:0] inst_ID,
    output [31:0] PC_out_IF,
    output [31:0] Addr_out,
    output [31:0] Data_out,
    output [31:0] Data_out_WB,
    output MemRW_Mem,
    output MemRW_EX
    );
    wire [31:0] PC_imm_out_EXMem;
    wire PCSrc;
    wire en_IF;
    /*Pipeline IF*/
    Pipeline_IF IF(
        .clk_IF(clk),
        .rst_IF(rst),
        .en_IF(en_IF),
        .PC_in_IF(PC_imm_out_EXMem),
        .PCSrc(PCSrc),
        .PC_out_IF(PC_out_IF)
    );

    /*IF_REG_ID*/
    wire en_IFID;
    wire NOP_IFID;
    wire valid_IFID ;
    IF_reg_ID IF_REG_ID(
        .clk_IFID(clk),
        .rst_IFID(rst),
        .en_IFID(en_IFID),
        .PC_in_IFID(PC_out_IF),
        .inst_in_IFID(inst_IF),
        .NOP_IFID(NOP_IFID),

        .PC_out_IFID(PC_out_ID),
        .inst_out_IFID(inst_ID),
        .valid_IFID(valid_IFID)
    );

    /*Pipeline_ID*/
    wire [4:0] Rd_addr_out_MemWB;
    wire RegWrite_out_MemWB;
    wire [31:0] Rs1_out_ID;
    wire [31:0] Rs2_out_ID;
    wire [31:0] Imm_out_ID;
    wire ALUSrc_B_ID;
    wire [1:0] MemtoReg_ID;
    wire [1:0]Jump_ID;
    wire Branch_ID;
    wire BranchN_ID;
    wire RegWrite_out_ID;
    wire MemRW_ID;
    wire [3:0] ALU_Control_ID;
    wire [4:0] Rd_addr_out_ID;
    wire [4:0] Rs1_addr_ID;
    wire [4:0] Rs2_addr_ID;
    wire Rs1_used;
    wire Rs2_used;
    Pipeline_ID ID(
        .clk_ID(clk),
        .rst_ID(rst),
        .Rd_addr_ID(Rd_addr_out_MemWB),
        .Wt_data_ID(Data_out_WB),
        .RegWrite_in_ID(RegWrite_out_MemWB),
        .inst_in_ID(inst_ID),

        .Rs1_out_ID(Rs1_out_ID),
        .Rs2_out_ID(Rs2_out_ID),
        .Rs1_addr_ID(Rs1_addr_ID),  //寄存器地址1
        .Rs2_addr_ID(Rs2_addr_ID),  //寄存器地址2
        .Rs1_used(Rs1_used),        //Rs1被使用
        .Rs2_used(Rs2_used),        //Rs2被使用
        .Imm_out_ID(Imm_out_ID),
        .ALUSrc_B_ID(ALUSrc_B_ID),
        .MemtoReg_ID(MemtoReg_ID),
        .Jump_ID(Jump_ID),
        .Branch_ID(Branch_ID),
        .BranchN_ID(BranchN_ID),
        .RegWrite_out_ID(RegWrite_out_ID),
        .MemRW_ID(MemRW_ID),
        .ALU_Control_ID(ALU_Control_ID),
        .Rd_addr_out_ID(Rd_addr_out_ID)
    );

    /*ID_REG_EX*/
    wire [31:0]PC_out_IDEX;
    wire [4:0] Rd_addr_out_IDEX;
    wire [31:0] Rs1_out_IDEX;
    wire [31:0] Rs2_out_IDEX;
    wire [31:0] Imm_out_IDEX;
    wire ALUSrc_B_out_IDEX;
    wire [3:0]ALU_control_out_IDEX;
    wire Branch_out_IDEX;
    wire BranchN_out_IDEX;
    wire [1:0]Jump_out_IDEX;
    wire [1:0]MemtoReg_out_IDEX;
    wire RegWrite_out_IDEX;
    /*wire MemRW_out_IDEX : .MemRW_out_IDEX(MemRW_EX), //存储器读写*/
    wire NOP_IDEX;
    wire [31:0]inst_out_IDEX;
    wire valid_out_IDEX;
    ID_reg_Ex ID_REG_EX( 
        .clk_IDEX(clk), //寄存器时钟
        .rst_IDEX(rst), //寄存器复位
        .en_IDEX(1), //寄存器使能
        .NOP_IDEX(NOP_IDEX),            /*NOP_IDEX：插入nop*/
        .valid_in_IDEX(valid_IFID),	    /*有效*/
		.inst_in_IDEX(inst_ID),         /*指令输入*/

        .PC_in_IDEX(PC_out_ID), //PC输入
        .Rd_addr_IDEX(Rd_addr_out_ID), //写目的地址输入
        .Rs1_in_IDEX(Rs1_out_ID),//操作数1输入
        .Rs2_in_IDEX(Rs2_out_ID), //操作数2输如
        .Imm_in_IDEX(Imm_out_ID) , //立即数输入
        .ALUSrc_B_in_IDEX(ALUSrc_B_ID) , //ALU B输入选择
        .ALU_control_in_IDEX(ALU_Control_ID), //ALU选择控制
        .Branch_in_IDEX(Branch_ID), //Beq
        .BranchN_in_IDEX(BranchN_ID), //Bne
        .MemRW_in_IDEX(MemRW_ID), //存储器读写
        .Jump_in_IDEX(Jump_ID), //Jal
        .MemtoReg_in_IDEX(MemtoReg_ID), //写回选择
        .RegWrite_in_IDEX(RegWrite_out_ID), //寄存器堆读写
        
        .PC_out_IDEX(PC_out_IDEX),//PC输出
        .Rd_addr_out_IDEX(Rd_addr_out_IDEX),//目的地址输出
        .Rs1_out_IDEX(Rs1_out_IDEX),//操作数1输出
        .Rs2_out_IDEX(Rs2_out_IDEX), //操作数2输出
        .Imm_out_IDEX(Imm_out_IDEX) , //立即数输出
        .ALUSrc_B_out_IDEX(ALUSrc_B_out_IDEX) , //ALU B选择
        .ALU_control_out_IDEX(ALU_control_out_IDEX), //ALU控制
        .Branch_out_IDEX(Branch_out_IDEX), //Beq
        .BranchN_out_IDEX(BranchN_out_IDEX), //Bne
        .MemRW_out_IDEX(MemRW_EX), //存储器读写
        .Jump_out_IDEX(Jump_out_IDEX), //Jal
        .MemtoReg_out_IDEX(MemtoReg_out_IDEX), //写回
        .RegWrite_out_IDEX(RegWrite_out_IDEX), //寄存器堆读写

        .inst_out_IDEX(inst_out_IDEX),	        //inst输出
		.valid_out_IDEX(valid_out_IDEX)			    //有效
    ); 

    /*Pipeline_EX*/
    wire [31:0] PC4_out_Ex;
    wire zero_out_Ex;
    wire [31:0] ALU_out_Ex;
    wire [31:0] Rs2_out_Ex;
    Pipeline_EX Ex(
        .PC_in_Ex(PC_out_IDEX),
        .Imm_in_Ex(Imm_out_IDEX),
        .Rs1_in_Ex(Rs1_out_IDEX),
        .Rs2_in_Ex(Rs2_out_IDEX),
        .ALU_control_in_EX(ALU_control_out_IDEX),
        .ALUSrc_B_in_EX(ALUSrc_B_out_IDEX),

        .PC4_out_Ex(PC4_out_Ex),
        .PC_out_Ex(PC_out_EX),
        .ALU_out_Ex(ALU_out_Ex),
        .zero_out_Ex(zero_out_Ex),
        .Rs2_out_Ex(Rs2_out_Ex)
    );

    /*Ex_REG_Mem*/
    wire [31:0] PC4_out_EXMem;
    wire [4:0] Rd_addr_out_EXMem;
    wire zero_out_EXMem;
    wire [31:0] ALU_out_EXMem;
    // wire [31:0] Rs2_out_EXMem;
    wire Branch_out_EXMem;
    wire BranchN_out_EXMem;
    /*wire MemRW_out_EXMem;.MemRW_out_EXMem(MemRW_Mem), */
    wire [1:0] Jump_out_EXMem;
    wire [1:0] MemtoReg_out_EXMem;
    wire RegWrite_out_EXMem;
    wire [31:0] inst_out_EXMem;
    wire [31:0] valid_out_EXMem;
    wire [31:0] PC_out_EXMem;

    Ex_reg_Mem Ex_REG_Mem( 
        .clk_EXMem(clk),//寄存器时钟
        .rst_EXMem(rst), //寄存器复位
        .en_EXMem(1), //寄存器使能
        .PC_in_EXMem(PC_out_EX), //PC输入
        .PC4_in_EXMem(PC4_out_Ex), //PC+4输入
        .Rd_addr_EXMem(Rd_addr_out_IDEX), //写目的寄存器地址输入
        .zero_in_EXMem(zero_out_Ex), //zero
        .ALU_in_EXMem(ALU_out_Ex), //ALU输入
        .Rs2_in_EXMem(Rs2_out_Ex), //操作数2输入
        .Branch_in_EXMem(Branch_out_IDEX), //Beq
        .BranchN_in_EXMem(BranchN_out_IDEX), //Bne
        .MemRW_in_EXMem(MemRW_EX), //存储器读写
        .Jump_in_EXMem(Jump_out_IDEX), //Jal
        .MemtoReg_in_EXMem(MemtoReg_out_IDEX), //写回
        .RegWrite_in_EXMem(RegWrite_out_IDEX), //寄存器堆读写

        .PC_imm_EXMem(PC_out_EX),	            /*PC输入(imm+pc)*/ 
		.valid_in_EXMem(valid_out_IDEX),		/*有效*/
		.inst_in_EXMem(inst_out_IDEX),	        /*指令输入*/

        .PC_out_EXMem(PC_out_EXMem),  //PC输出
        .PC4_out_EXMem(PC4_out_EXMem), //PC+4输出
        .Rd_addr_out_EXMem(Rd_addr_out_EXMem), //写目的寄存器输出
        .zero_out_EXMem(zero_out_EXMem), //zero
        .ALU_out_EXMem(ALU_out_EXMem),        //ALU输出
        .Rs2_out_EXMem(Data_out),         //操作数2输出
        .Branch_out_EXMem(Branch_out_EXMem),     //Beq
        .BranchN_out_EXMem(BranchN_out_EXMem),     //Bne
        .MemRW_out_EXMem(MemRW_Mem),       //存储器读写
        .Jump_out_EXMem(Jump_out_EXMem),        //Jal
        .MemtoReg_out_EXMem(MemtoReg_out_EXMem), 	  //写回
        .RegWrite_out_EXMem(RegWrite_out_EXMem),    //寄存器堆读写

        .PC_imm_out_EXMem(PC_imm_out_EXMem),	    /*PC输出(imm+pc)*/
		.valid_out_EXMem(valid_out_EXMem),			/*有效*/
		.inst_out_EXMem(inst_out_EXMem)	            /*inst输出*/
    );

    /*Pipeline_Mem*/
    Pipeline_Mem Mem(
        . zero_in_Mem(zero_out_EXMem),
        . Branch_in_Mem(Branch_out_EXMem),
        . BranchN_in_Mem(BranchN_out_EXMem),
        . Jump_in_Mem(Jump_out_EXMem),

        .PCSrc(PCSrc)
    );

    /*Mem_REG_WB*/
    wire [31:0] PC4_out_MemWB;
    // wire [4:0] Rd_addr_out_MemWB
    wire [31:0] ALU_out_MemWB;
    wire [31:0] DMem_data_out_MemWB;
    wire [1:0] MemtoReg_out_MemWB;
    // wire RegWrite_out_MemWB;
    Mem_reg_WB Mem_REG_WB( 
        .clk_MemWB(clk),//寄存器时
        .rst_MemWB(rst), //寄存器复位
        .en_MemWB(1), //寄存器使能

        .PC_in_MemWB(PC_out_EXMem),	    /*PC输入*/
        .inst_in_MemWB(inst_out_EXMem),	/*inst输入*/
        .valid_in_MemWB(valid_out_EXMem),	/*有效*/

        .PC4_in_MemWB(PC4_out_EXMem), //PC+4输入
        .Rd_addr_MemWB(Rd_addr_out_EXMem), //写目的地址输入
        .ALU_in_MemWB(ALU_out_EXMem),     //ALU输入
        .Dmem_data_MemWB(Data_in),   //存储器数据输入
        .MemtoReg_in_MemWB(MemtoReg_out_EXMem),     //写回
        .RegWrite_in_MemWB(RegWrite_out_EXMem),     //寄存器堆读写

        .PC4_out_MemWB(PC4_out_MemWB), //PC+4输出
        .Rd_addr_out_MemWB(Rd_addr_out_MemWB), //写目的地址输出
        .ALU_out_MemWB(ALU_out_MemWB),     //ALU输出
        .DMem_data_out_MemWB(DMem_data_out_MemWB),    //存储器数据输出
        .MemtoReg_out_MemWB(MemtoReg_out_MemWB),     //写回
        .RegWrite_out_MemWB(RegWrite_out_MemWB)    //寄存器堆读写
    ); 

    /*Pipeline_WB*/
    Pipeline_WB WB( 
        .PC4_in_WB(PC4_out_MemWB), //PC+4输入
        .ALU_in_WB(ALU_out_MemWB), //ALU结果输出
        .Dmem_data_WB(DMem_data_out_MemWB), //存储器数据输入
        .MemtoReg_in_WB(MemtoReg_out_MemWB), //写回选择控制

        .Data_out_WB(Data_out_WB)    //写回数据输出
    );

    /*stall*/
    stall stall_0(
        .rst_stall(rst), //复位
        .RegWrite_out_IDEX(RegWrite_out_IDEX), //执行阶段寄存器写控制
        .Rd_addr_out_IDEX(Rd_addr_out_IDEX), //执s行阶段寄存器写地址
        .RegWrite_out_EXMem(RegWrite_out_EXMem), //访存阶段寄存器写控制
        .Rd_addr_out_EXMem(Rd_addr_out_EXMem), //访存阶段寄存器写地址
        .Rs1_addr_ID(Rs1_addr_ID), //译码阶段寄存器读地址1
        .Rs2_addr_ID(Rs2_addr_ID), //译码阶段寄存器读地址2
        .Rs1_used(Rs1_used), //Rs1被使用
        .Rs2_used(Rs2_used), //Rs2被使用
        .Branch_ID(Branch_ID), //译码阶段beq
        .BranchN_ID(BranchN_ID), //译码阶段bne
        .Jump_ID(Jump_ID), //译码阶段jal
        .Branch_out_IDEX(Branch_out_IDEX), //执行阶段beq
        .BranchN_out_IDEX(BranchN_out_IDEX), //执行阶段bne
        .Jump_out_IDEX(Jump_out_IDEX), //执行阶段jal
        .Branch_out_EXMem(Branch_out_EXMem), //访存阶段beq
        .BranchN_out_EXMem(BranchN_out_EXMem), //访存阶段bne
        .Jump_out_EXMem(Jump_out_EXMem), //访存阶段jal
        .en_IF(en_IF), //流水线寄存器的使能及NOP信号
        .en_IFID(en_IFID),
        .NOP_IFID(NOP_IFID),
        .NOP_IDEX(NOP_IDEX)
    );

    assign Addr_out = ALU_out_EXMem;
endmodule
