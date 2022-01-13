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
    (ALUSrc_B,
    ALU_Control,
    ALU_out,
    Branch,
    BranchN,
    Data_in,
    Data_out,
    ImmSel,
    Jump,
    MemtoReg,
    PC_out,
    RegWrite,
    clk,
    inst_field,
    rst,
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
    input ALUSrc_B;
    input [3:0]ALU_Control;
    output [31:0]ALU_out;
    input [0:0]Branch;
    input [0:0]BranchN;
    input [31:0]Data_in;
    output [31:0]Data_out;
    input [2:0]ImmSel;
    input [1:0]Jump;
    input [1:0]MemtoReg;
    output [31:0]PC_out;
    input RegWrite;
    output [31:0]a0;
    output [31:0]a1;
    output [31:0]a2;
    output [31:0]a3;
    output [31:0]a4;
    output [31:0]a5;
    output [31:0]a6;
    output [31:0]a7;
    input clk;
    output [31:0]gp;
    input [31:0]inst_field;
    output [31:0]ra;
    input rst;
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
    wire zero;
    /*ALU模块*/
    ALU alu(.A(A),
            .B(B),
            .ALU_operation(ALU_operation),
            .res(ALU_out),
            .zero(zero));

    wire [31:0] PC_in;
    wire [31:0] PC_out;
    /*PC模块*/
    REG32 reg32(.clk(clk),.rst(rst),.CE(1'b1),.D(PC_in),.Q(PC_out));

    wire [31:0] Wt_data;
    wire [31:0] Rs1_data;
    wire [31:0] Rs2_data;
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

    wire [31:0] Imm_out;
    /*立即数生成模块*/
    ImmGen immgen(
        ImmSel,
        inst_field,
        Imm_out);
    
    assign A = Rs1_data;

    reg [32:0] o_ALUSrc_B;
    

endmodule
