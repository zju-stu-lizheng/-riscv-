`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/19 20:51:04
// Design Name: 
// Module Name: datapath_code
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


module datapath_code
    (
        clk,
        rst,
        ALUSrc_B,
        ALU_Control,
        ImmSel,
        Jump,
        MemtoReg,
        Branch,
        BranchN,
        RegWrite,
        inst_field,
        Data_in,
        PC_out,
        ALU_out,
        Data_out,
        x0,
        ra,
        sp,
        gp,
        tp,
        t0,
        t1,
        t2,
        s0,
        s1,
        a0,
        a1,
        a2,
        a3,
        a4,
        a5,
        a6,
        a7,
        s2,
        s3,
        s4,
        s5,
        s6,
        s7,
        s8,
        s9,
        s10,
        s11,
        t3,
        t4,
        t5,
        t6);
    input clk;
    input rst;

    input ALUSrc_B;
    input [3:0]ALU_Control;
    input [0:0]Branch;
    input [0:0]BranchN;
    input [2:0]ImmSel;
    input [1:0]Jump;
    input [1:0]MemtoReg;
    input RegWrite;
    input [31:0]Data_in;
    input [31:0]inst_field;

    output [31:0]PC_out;
    output [31:0]ALU_out;
    output [31:0]Data_out;
    output [31:0]a0;
    output [31:0]a1;
    output [31:0]a2;
    output [31:0]a3;
    output [31:0]a4;
    output [31:0]a5;
    output [31:0]a6;
    output [31:0]a7;
    output [31:0]gp;
    output [31:0]ra;
    output [31:0]s0;
    output [31:0]s1;
    output [31:0]s10;
    output [31:0]s11;
    output [31:0]s2;
    output [31:0]s3;
    output [31:0]s4;
    output [31:0]s5;
    output [31:0]s6;
    output [31:0]s7;
    output [31:0]s8;
    output [31:0]s9;
    output [31:0]sp;
    output [31:0]t0;
    output [31:0]t1;
    output [31:0]t2;
    output [31:0]t3;
    output [31:0]t4;
    output [31:0]t5;
    output [31:0]t6;
    output [31:0]tp;
    output [31:0]x0;
    
    wire [31:0] A;
    wire [31:0] B;
    wire [3:0] ALU_operation;
    wire [31:0] PC_in;
    wire [31:0] Imm_out;
    wire [31:0] Wt_data;
    wire [31:0] Rs1_data;
    wire [31:0] Rs2_data;
    wire [31:0] PC_add4;
    wire [31:0] PC_addImm;
    wire [31:0] Branch_out;
    wire zero;
    wire beq_or_bne;
    
    ALU alu(.A(A),.B(B),.ALU_operation(ALU_Control),.res(ALU_out),.zero(zero));     /*ALU模块*/
    REG32 PC(.clk(clk),.rst(rst),.CE(1'b1),.D(PC_in),.Q(PC_out));                   /*PC模块*/
    ImmGen immgen(.ImmSel(ImmSel),.inst_field(inst_field),.Imm_out(Imm_out));       /*立即数生成模块*/

    assign PC_add4 = PC_out + 4;
    assign PC_addImm = PC_out + Imm_out;

    //计算beq_or_bne
    assign beq_or_bne = (~zero & BranchN) | (zero & Branch);

    /*多路选择器*/
    MUX4T1_32 MemtoReg_MUX(.I0(ALU_out),.I1(Data_in),.I2(PC_add4),.I3(Imm_out),.s(MemtoReg),.o(Wt_data));
    MUX4T1_32 Jump_MUX(.I0(Branch_out),.I1(PC_addImm),.I2(ALU_out),.I3(Branch_out),.s(Jump),.o(PC_in));
    MUX2T1_32 Branch_MUX(.I0(PC_add4),.I1(PC_addImm),.s(beq_or_bne),.o(Branch_out));
    MUX2T1_32 ALUSrc_MUX(.I0(Data_out),.I1(Imm_out),.s(ALUSrc_B),.o(B));
    
    /*寄存器组模块*/
    Regs m3(.clk(clk), .rst(rst),
            .RegWrite(RegWrite),
            .Rs1_addr ( inst_field[19:15]  ),
            .Rs2_addr ( inst_field[24:20]  ),
            .Wt_addr  ( inst_field[11:7]   ),
            .Wt_data  (      Wt_data       ),
            .Rs1_data (       Rs1_data     ),
            .Rs2_data (       Rs2_data     ),
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

    assign A = Rs1_data;
    assign Data_out = Rs2_data;

endmodule
