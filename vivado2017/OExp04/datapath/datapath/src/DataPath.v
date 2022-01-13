//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Apr 21 17:06:45 2021
//Host        : LAPTOP-VIEPELG3 running 64-bit major release  (build 9200)
//Command     : generate_target DataPath.bd
//Design      : DataPath
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "DataPath,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=DataPath,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=16,numReposBlks=16,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "DataPath.hwdef" *) 
module DataPath
   (ALUSrc_B,
    ALU_operation,
    ALU_out,
    Branch,
    Data_in,
    Data_out,
    ImmSel,
    Jump,
    MemtoReg,
    PC_out,
    RegWrite,
    a0,
    a1,
    a2,
    a3,
    a4,
    a5,
    a6,
    a7,
    clk,
    gp,
    inst_field,
    ra,
    rst,
    s0,
    s1,
    s10,
    s11,
    s2,
    s3,
    s4,
    s5,
    s6,
    s7,
    s8,
    s9,
    sp,
    t0,
    t1,
    t2,
    t3,
    t4,
    t5,
    t6,
    tp,
    x0);
  input ALUSrc_B;
  input [2:0]ALU_operation;
  output [31:0]ALU_out;
  input [0:0]Branch;
  input [31:0]Data_in;
  output [31:0]Data_out;
  input [1:0]ImmSel;
  input Jump;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN DataPath_clk_0, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  output [31:0]gp;
  input [31:0]inst_field;
  output [31:0]ra;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, POLARITY ACTIVE_HIGH" *) input rst;
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

  wire [2:0]ALU_operation_0_1;
  wire [31:0]ALU_res;
  wire ALU_zero;
  wire [31:0]I1_0_1;
  wire [31:0]ImmGen_0_Imm_out;
  wire [1:0]ImmSel_0_1;
  wire [31:0]MUX2T1_32_0_o;
  wire [31:0]MUX2T1_32_1_o;
  wire [31:0]MUX2T1_32_2_o;
  wire [31:0]MUX4T1_32_0_o;
  wire [0:0]Op1_0_1;
  wire [31:0]PC4_dout;
  wire [31:0]PC_Q;
  wire RegWrite_0_1;
  wire [31:0]Regs_Rs1_data;
  wire [31:0]Regs_Rs2_data;
  wire [31:0]Regs_a0;
  wire [31:0]Regs_a1;
  wire [31:0]Regs_a2;
  wire [31:0]Regs_a3;
  wire [31:0]Regs_a4;
  wire [31:0]Regs_a5;
  wire [31:0]Regs_a6;
  wire [31:0]Regs_a7;
  wire [31:0]Regs_gp;
  wire [31:0]Regs_ra;
  wire [31:0]Regs_s0;
  wire [31:0]Regs_s1;
  wire [31:0]Regs_s10;
  wire [31:0]Regs_s11;
  wire [31:0]Regs_s2;
  wire [31:0]Regs_s3;
  wire [31:0]Regs_s4;
  wire [31:0]Regs_s5;
  wire [31:0]Regs_s6;
  wire [31:0]Regs_s7;
  wire [31:0]Regs_s8;
  wire [31:0]Regs_s9;
  wire [31:0]Regs_sp;
  wire [31:0]Regs_t0;
  wire [31:0]Regs_t1;
  wire [31:0]Regs_t2;
  wire [31:0]Regs_t3;
  wire [31:0]Regs_t4;
  wire [31:0]Regs_t5;
  wire [31:0]Regs_t6;
  wire [31:0]Regs_tp;
  wire [31:0]Regs_x0;
  wire [31:0]add_32_0_c;
  wire [31:0]add_32_1_c;
  wire [0:0]and_2_Res;
  wire clk_0_1;
  wire [4:0]inst11_7_Dout;
  wire [4:0]inst19_15_Dout;
  wire [4:0]inst24_20_Dout;
  wire [31:0]inst_field_0_1;
  wire rst_0_1;
  wire [1:0]s_0_1;
  wire s_0_2;
  wire s_0_3;
  wire [0:0]vcc_dout;

  assign ALU_operation_0_1 = ALU_operation[2:0];
  assign ALU_out[31:0] = ALU_res;
  assign Data_out[31:0] = Regs_Rs2_data;
  assign I1_0_1 = Data_in[31:0];
  assign ImmSel_0_1 = ImmSel[1:0];
  assign Op1_0_1 = Branch[0];
  assign PC_out[31:0] = PC_Q;
  assign RegWrite_0_1 = RegWrite;
  assign a0[31:0] = Regs_a0;
  assign a1[31:0] = Regs_a1;
  assign a2[31:0] = Regs_a2;
  assign a3[31:0] = Regs_a3;
  assign a4[31:0] = Regs_a4;
  assign a5[31:0] = Regs_a5;
  assign a6[31:0] = Regs_a6;
  assign a7[31:0] = Regs_a7;
  assign clk_0_1 = clk;
  assign gp[31:0] = Regs_gp;
  assign inst_field_0_1 = inst_field[31:0];
  assign ra[31:0] = Regs_ra;
  assign rst_0_1 = rst;
  assign s0[31:0] = Regs_s0;
  assign s1[31:0] = Regs_s1;
  assign s10[31:0] = Regs_s10;
  assign s11[31:0] = Regs_s11;
  assign s2[31:0] = Regs_s2;
  assign s3[31:0] = Regs_s3;
  assign s4[31:0] = Regs_s4;
  assign s5[31:0] = Regs_s5;
  assign s6[31:0] = Regs_s6;
  assign s7[31:0] = Regs_s7;
  assign s8[31:0] = Regs_s8;
  assign s9[31:0] = Regs_s9;
  assign s_0_1 = MemtoReg[1:0];
  assign s_0_2 = Jump;
  assign s_0_3 = ALUSrc_B;
  assign sp[31:0] = Regs_sp;
  assign t0[31:0] = Regs_t0;
  assign t1[31:0] = Regs_t1;
  assign t2[31:0] = Regs_t2;
  assign t3[31:0] = Regs_t3;
  assign t4[31:0] = Regs_t4;
  assign t5[31:0] = Regs_t5;
  assign t6[31:0] = Regs_t6;
  assign tp[31:0] = Regs_tp;
  assign x0[31:0] = Regs_x0;
  DataPath_ALU_wrapper_0_0 ALU
       (.A(Regs_Rs1_data),
        .ALU_operation(ALU_operation_0_1),
        .B(MUX2T1_32_0_o),
        .res(ALU_res),
        .zero(ALU_zero));
  DataPath_ImmGen_0_0 ImmGen_0
       (.ImmSel(ImmSel_0_1),
        .Imm_out(ImmGen_0_Imm_out),
        .inst_field(inst_field_0_1));
  DataPath_MUX2T1_32_0_0 MUX2T1_32_0
       (.I0(Regs_Rs2_data),
        .I1(ImmGen_0_Imm_out),
        .o(MUX2T1_32_0_o),
        .s(s_0_3));
  DataPath_MUX2T1_32_0_1 MUX2T1_32_1
       (.I0(MUX2T1_32_2_o),
        .I1(add_32_1_c),
        .o(MUX2T1_32_1_o),
        .s(s_0_2));
  DataPath_MUX2T1_32_0_2 MUX2T1_32_2
       (.I0(add_32_0_c),
        .I1(add_32_1_c),
        .o(MUX2T1_32_2_o),
        .s(and_2_Res));
  DataPath_MUX4T1_32_0_0 MUX4T1_32_0
       (.I0(ALU_res),
        .I1(I1_0_1),
        .I2(add_32_0_c),
        .I3(add_32_0_c),
        .o(MUX4T1_32_0_o),
        .s(s_0_1));
  DataPath_REG32_0_0 PC
       (.CE(vcc_dout),
        .D(MUX2T1_32_1_o),
        .Q(PC_Q),
        .clk(clk_0_1),
        .rst(rst_0_1));
  DataPath_xlconstant_0_1 PC4
       (.dout(PC4_dout));
  DataPath_regs_0_0 Regs
       (.RegWrite(RegWrite_0_1),
        .Rs1_addr(inst19_15_Dout),
        .Rs1_data(Regs_Rs1_data),
        .Rs2_addr(inst24_20_Dout),
        .Rs2_data(Regs_Rs2_data),
        .Wt_addr(inst11_7_Dout),
        .Wt_data(MUX4T1_32_0_o),
        .a0(Regs_a0),
        .a1(Regs_a1),
        .a2(Regs_a2),
        .a3(Regs_a3),
        .a4(Regs_a4),
        .a5(Regs_a5),
        .a6(Regs_a6),
        .a7(Regs_a7),
        .clk(clk_0_1),
        .gp(Regs_gp),
        .ra(Regs_ra),
        .rst(rst_0_1),
        .s0(Regs_s0),
        .s1(Regs_s1),
        .s10(Regs_s10),
        .s11(Regs_s11),
        .s2(Regs_s2),
        .s3(Regs_s3),
        .s4(Regs_s4),
        .s5(Regs_s5),
        .s6(Regs_s6),
        .s7(Regs_s7),
        .s8(Regs_s8),
        .s9(Regs_s9),
        .sp(Regs_sp),
        .t0(Regs_t0),
        .t1(Regs_t1),
        .t2(Regs_t2),
        .t3(Regs_t3),
        .t4(Regs_t4),
        .t5(Regs_t5),
        .t6(Regs_t6),
        .tp(Regs_tp),
        .x0(Regs_x0));
  DataPath_add_32_0_0 add_32_0
       (.a(PC_Q),
        .b(PC4_dout),
        .c(add_32_0_c));
  DataPath_add_32_0_1 add_32_1
       (.a(PC_Q),
        .b(ImmGen_0_Imm_out),
        .c(add_32_1_c));
  DataPath_util_vector_logic_0_0 and_2
       (.Op1(Op1_0_1),
        .Op2(ALU_zero),
        .Res(and_2_Res));
  DataPath_xlslice_1_0 inst11_7
       (.Din(inst_field_0_1),
        .Dout(inst11_7_Dout));
  DataPath_xlslice_0_0 inst19_15
       (.Din(inst_field_0_1),
        .Dout(inst19_15_Dout));
  DataPath_xlslice_0_1 inst24_20
       (.Din(inst_field_0_1),
        .Dout(inst24_20_Dout));
  DataPath_xlconstant_0_0 vcc
       (.dout(vcc_dout));
endmodule
