`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/20 10:26:39
// Design Name: 
// Module Name: DataPath_more
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


module DataPath_more(
	input wire clk,
	input wire rst,
	input wire[31:0] inst_field,
	input wire[31:0] Data_in,
	input wire[3:0]  ALU_Control,
	input wire[2:0]  ImmSel,
	input wire[1:0]  MemtoReg,
	input wire       ALUSrc_B,
	input wire[1:0]  Jump,
	input wire       Branch,
	input wire       BranchN,
	input wire       RegWrite,
	/*中断信号*/
	input wire 		 INT0,
	input wire 		 ecall,
	input wire       mret,
	input wire       ill_instr,

	output wire [31:0]x0,
	output wire [31:0]ra,
	output wire [31:0]sp,
	output wire [31:0]gp,
	output wire [31:0]tp,
	output wire [31:0]t0,
	output wire [31:0]t1,
	output wire [31:0]t2,
	output wire [31:0]s0,
	output wire [31:0]s1,
	output wire [31:0]a0,
	output wire [31:0]a1,
	output wire [31:0]a2,
	output wire [31:0]a3,
	output wire [31:0]a4,
	output wire [31:0]a5,
	output wire [31:0]a6,
	output wire [31:0]a7,
	output wire [31:0]s2,
	output wire [31:0]s3,
	output wire [31:0]s4,
	output wire [31:0]s5,
	output wire [31:0]s6,
	output wire [31:0]s7,
	output wire [31:0]s8,
	output wire [31:0]s9,
	output wire [31:0]s10,
	output wire [31:0]s11,
	output wire [31:0]t3,
	output wire [31:0]t4,
	output wire [31:0]t5,
	output wire [31:0]t6,
      
	output wire[31:0] PC_out,
	output wire[31:0] Data_out,
	output wire[31:0] ALU_out
    );
    wire [31:0] Regs_0_Rs1_data;
    wire [31:0] MUX2T1_32_0_o;
    wire        ALU_0_zero;
    ALU ALU_u
           (.A(Regs_0_Rs1_data),
            .ALU_operation(ALU_Control),
            .B(MUX2T1_32_0_o),
            .res(ALU_out),
            .zero(ALU_0_zero));
    wire       AND2_Res;
    AND AND2
           (.Op1(~ALU_0_zero),
            .Op2(BranchN),
            .Res(AND2_Res));
    wire       AND3_Res;            
    AND AND3
           (.Op1(Branch),
            .Op2(ALU_0_zero),
            .Res(AND3_Res));
    wire       or2_Res;
    OR or2
           (.Op1(AND2_Res),
            .Op2(AND3_Res),
            .Res(or2_Res));
    wire [31:0] ImmGen_0_Imm_out;
    ImmGen ImmGen_U
           (.ImmSel(ImmSel),
            .Imm_out(ImmGen_0_Imm_out),
            .inst_field(inst_field));
    MUX2T1_32 MUX2T1_32_0
           (.I0(Data_out),
            .I1(ImmGen_0_Imm_out),
            .o(MUX2T1_32_0_o),
            .s(ALUSrc_B));
    wire [31:0] add_32_0_c;
    wire [31:0] add_32_1_c;
    wire [31:0] MUX2T1_32_1_o;
    MUX2T1_32 MUX2T1_32_1
           (.I0(add_32_0_c),
            .I1(add_32_1_c),
            .o(MUX2T1_32_1_o),
            .s(or2_Res));
    wire [31:0] MUX4T1_32_0_o;
    MUX4T1_32 MUX4T1_32_0
           (.I0(ALU_out),
            .I1(Data_in),
            .I2(add_32_0_c),
            .I3(ImmGen_0_Imm_out),
            .o(MUX4T1_32_0_o),
            .s(MemtoReg));
    wire [31:0] MUX4T1_32_1_o;
    MUX4T1_32 MUX4T1_32_1
           (.I0(MUX2T1_32_1_o),
            .I1(add_32_1_c),
            .I2(ALU_out),
            .I3(MUX2T1_32_1_o),
            .o(MUX4T1_32_1_o),
            .s(Jump));
	/*中断修改PC*/
	wire [31:0] PC_in;
	REG32 PC
		(.CE(1'b1),
		.D(PC_in),
		.Q(PC_out),
		.clk(clk),
		.rst(rst));
	RV_Int RV_Int_0
		(.clk(clk),
		.reset(rst),
		.INT(INT0),
		.ecall(ecall),
		.mret(mret),
		.ill_instr(ill_instr),
		.pc_next(MUX4T1_32_1_o),
		.pc(PC_in)
		);
	
	Regs Regs_U
		(.RegWrite(RegWrite),
		.Rs1_addr(inst_field[19:15]),
		.Rs1_data(Regs_0_Rs1_data),
		.Rs2_addr(inst_field[24:20]),
		.Rs2_data(Data_out),
		.Wt_addr(inst_field[11:7]),
		.Wt_data(MUX4T1_32_0_o),
		.clk(clk),
		.rst(rst),
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
	add_32 add_32_0
		(.a(32'h4),
		.b(PC_out),
		.c(add_32_0_c));
	add_32 add_32_1
		(.a(PC_out),
		.b(ImmGen_0_Imm_out),
		.c(add_32_1_c));
    
endmodule
