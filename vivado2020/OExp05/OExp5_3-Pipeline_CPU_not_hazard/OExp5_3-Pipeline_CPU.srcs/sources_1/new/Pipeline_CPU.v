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
    output MemRW_EX,

    output wire [31:0] x0,
    output wire [31:0] ra,
    output wire [31:0] sp,
    output wire [31:0] gp,
    output wire [31:0] tp,
    output wire [31:0] t0,
    output wire [31:0] t1,
    output wire [31:0] t2,
    output wire [31:0] s0,
    output wire [31:0] s1,
    output wire [31:0] a0,
    output wire [31:0] a1,
    output wire [31:0] a2,
    output wire [31:0] a3,
    output wire [31:0] a4,
    output wire [31:0] a5,
    output wire [31:0] a6,
    output wire [31:0] a7,
    output wire [31:0] s2,
    output wire [31:0] s3,
    output wire [31:0] s4,
    output wire [31:0] s5,
    output wire [31:0] s6,
    output wire [31:0] s7,
    output wire [31:0] s8,
    output wire [31:0] s9,
    output wire [31:0] s10,
    output wire [31:0] s11,
    output wire [31:0] t3,
    output wire [31:0] t4,
    output wire [31:0] t5,
    output wire [31:0] t6
    );
    wire [31:0] PC_out_EXMem;
    wire PCSrc;
    /*Pipeline IF*/
    Pipeline_IF IF(
        .clk_IF(clk),
        .rst_IF(rst),
        .en_IF(1),
        .PC_in_IF(PC_out_EXMem),
        .PCSrc(PCSrc),
        .PC_out_IF(PC_out_IF)
    );

    /*IF_REG_ID*/
    IF_reg_ID IF_REG_ID(
        .clk_IFID(clk),
        .rst_IFID(rst),
        .en_IFID(1),
        .PC_in_IFID(PC_out_IF),
        .inst_in_IFID(inst_IF),
        .PC_out_IFID(PC_out_ID),
        .inst_out_IFID(inst_ID)
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
    Pipeline_ID ID(
        .clk_ID(clk),
        .rst_ID(rst),
        .Rd_addr_ID(Rd_addr_out_MemWB),
        .Wt_data_ID(Data_out_WB),
        .RegWrite_in_ID(RegWrite_out_MemWB),
        .inst_in_ID(inst_ID),

        .Rs1_out_ID(Rs1_out_ID),
        .Rs2_out_ID(Rs2_out_ID),
        .Imm_out_ID(Imm_out_ID),
        .ALUSrc_B_ID(ALUSrc_B_ID),
        .MemtoReg_ID(MemtoReg_ID),
        .Jump_ID(Jump_ID),
        .Branch_ID(Branch_ID),
        .BranchN_ID(BranchN_ID),
        .RegWrite_out_ID(RegWrite_out_ID),
        .MemRW_ID(MemRW_ID),
        .ALU_Control_ID(ALU_Control_ID),
        .Rd_addr_out_ID(Rd_addr_out_ID),
        .x0            (  x0           ),
        .ra            (  ra           ),
        .sp            (  sp           ),
        .gp            (  gp           ),
        .tp            (  tp           ),
        .t0            (  t0           ),
        .t1            (  t1           ),
        .t2            (  t2           ),
        .s0            (  s0           ),
        .s1            (  s1           ),
        .a0            (  a0           ),
        .a1            (  a1           ),
        .a2            (  a2           ),
        .a3            (  a3           ),
        .a4            (  a4           ),
        .a5            (  a5           ),
        .a6            (  a6           ),
        .a7            (  a7           ),
        .s2            (  s2           ),
        .s3            (  s3           ),
        .s4            (  s4           ),
        .s5            (  s5           ),
        .s6            (  s6           ),
        .s7            (  s7           ),
        .s8            (  s8           ),
        .s9            (  s9           ),
        .s10           (  s10          ),
        .s11           (  s11          ),
        .t3            (  t3           ),
        .t4            (  t4           ),
        .t5            (  t5           ),
        .t6            (  t6           )
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
    /*wire MemRW_out_IDEX : .MemRW_out_IDEX(MemRW_EX), //???????????????*/
    ID_reg_Ex ID_REG_EX( 
        .clk_IDEX(clk), //???????????????
        .rst_IDEX(rst), //???????????????
        .en_IDEX(1), //???????????????
        .PC_in_IDEX(PC_out_ID), //PC??????
        .Rd_addr_IDEX(Rd_addr_out_ID), //?????????????????????
        .Rs1_in_IDEX(Rs1_out_ID),//?????????1??????
        .Rs2_in_IDEX(Rs2_out_ID), //?????????2??????
        .Imm_in_IDEX(Imm_out_ID) , //???????????????
        .ALUSrc_B_in_IDEX(ALUSrc_B_ID) , //ALU B????????????
        .ALU_control_in_IDEX(ALU_Control_ID), //ALU????????????
        .Branch_in_IDEX(Branch_ID), //Beq
        .BranchN_in_IDEX(BranchN_ID), //Bne
        .MemRW_in_IDEX(MemRW_ID), //???????????????
        .Jump_in_IDEX(Jump_ID), //Jal
        .MemtoReg_in_IDEX(MemtoReg_ID), //????????????
        .RegWrite_in_IDEX(RegWrite_out_ID), //??????????????????
        
        .PC_out_IDEX(PC_out_IDEX),//PC??????
        .Rd_addr_out_IDEX(Rd_addr_out_IDEX),//??????????????????
        .Rs1_out_IDEX(Rs1_out_IDEX),//?????????1??????
        .Rs2_out_IDEX(Rs2_out_IDEX), //?????????2??????
        .Imm_out_IDEX(Imm_out_IDEX) , //???????????????
        .ALUSrc_B_out_IDEX(ALUSrc_B_out_IDEX) , //ALU B??????
        .ALU_control_out_IDEX(ALU_control_out_IDEX), //ALU??????
        .Branch_out_IDEX(Branch_out_IDEX), //Beq
        .BranchN_out_IDEX(BranchN_out_IDEX), //Bne
        .MemRW_out_IDEX(MemRW_EX), //???????????????
        .Jump_out_IDEX(Jump_out_IDEX), //Jal
        .MemtoReg_out_IDEX(MemtoReg_out_IDEX), //??????
        .RegWrite_out_IDEX(RegWrite_out_IDEX) //??????????????????
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

    Ex_reg_Mem Ex_REG_Mem( 
        .clk_EXMem(clk),//???????????????
        .rst_EXMem(rst), //???????????????
        .en_EXMem(1), //???????????????
        .PC_in_EXMem(PC_out_EX), //PC??????
        .PC4_in_EXMem(PC4_out_Ex), //PC+4??????
        .Rd_addr_EXMem(Rd_addr_out_IDEX), //??????????????????????????????
        .zero_in_EXMem(zero_out_Ex), //zero
        .ALU_in_EXMem(ALU_out_Ex), //ALU??????
        .Rs2_in_EXMem(Rs2_out_Ex), //?????????2??????
        .Branch_in_EXMem(Branch_out_IDEX), //Beq
        .BranchN_in_EXMem(BranchN_out_IDEX), //Bne
        .MemRW_in_EXMem(MemRW_EX), //???????????????
        .Jump_in_EXMem(Jump_out_IDEX), //Jal
        .MemtoReg_in_EXMem(MemtoReg_out_IDEX), //??????
        .RegWrite_in_EXMem(RegWrite_out_IDEX), //??????????????????

        .PC_out_EXMem(PC_out_EXMem),  //PC??????
        .PC4_out_EXMem(PC4_out_EXMem), //PC+4??????
        .Rd_addr_out_EXMem(Rd_addr_out_EXMem), //????????????????????????
        .zero_out_EXMem(zero_out_EXMem), //zero
        .ALU_out_EXMem(ALU_out_EXMem),        //ALU??????
        .Rs2_out_EXMem(Data_out),         //?????????2??????
        .Branch_out_EXMem(Branch_out_EXMem),     //Beq
        .BranchN_out_EXMem(BranchN_out_EXMem),     //Bne
        .MemRW_out_EXMem(MemRW_Mem),       //???????????????
        .Jump_out_EXMem(Jump_out_EXMem),        //Jal
        .MemtoReg_out_EXMem(MemtoReg_out_EXMem), 	  //??????
        .RegWrite_out_EXMem(RegWrite_out_EXMem)    //??????????????????
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
        .clk_MemWB(clk),//????????????
        .rst_MemWB(rst), //???????????????
        .en_MemWB(1), //???????????????
        .PC4_in_MemWB(PC4_out_EXMem), //PC+4??????
        .Rd_addr_MemWB(Rd_addr_out_EXMem), //?????????????????????
        .ALU_in_MemWB(ALU_out_EXMem),     //ALU??????
        .Dmem_data_MemWB(Data_in),   //?????????????????????
        .MemtoReg_in_MemWB(MemtoReg_out_EXMem),     //??????
        .RegWrite_in_MemWB(RegWrite_out_EXMem),     //??????????????????

        .PC4_out_MemWB(PC4_out_MemWB), //PC+4??????
        .Rd_addr_out_MemWB(Rd_addr_out_MemWB), //?????????????????????
        .ALU_out_MemWB(ALU_out_MemWB),     //ALU??????
        .DMem_data_out_MemWB(DMem_data_out_MemWB),    //?????????????????????
        .MemtoReg_out_MemWB(MemtoReg_out_MemWB),     //??????
        .RegWrite_out_MemWB(RegWrite_out_MemWB)    //??????????????????
    ); 

    /*Pipeline_WB*/
    Pipeline_WB WB( 
        .PC4_in_WB(PC4_out_MemWB), //PC+4??????
        .ALU_in_WB(ALU_out_MemWB), //ALU????????????
        .Dmem_data_WB(DMem_data_out_MemWB), //?????????????????????
        .MemtoReg_in_WB(MemtoReg_out_MemWB), //??????????????????

        .Data_out_WB(Data_out_WB)    //??????????????????
    );

    assign Addr_out = ALU_out_EXMem;
endmodule
