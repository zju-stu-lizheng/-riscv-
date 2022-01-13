//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sat May 15 22:18:18 2021
//Host        : LAPTOP-VIEPELG3 running 64-bit major release  (build 9200)
//Command     : generate_target datapath.bd
//Design      : datapath
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "datapath,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=datapath,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=19,numReposBlks=19,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "datapath.hwdef" *) 
module datapath
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN datapath_clk_0, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
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

  wire [31:0]ALU_0_res;
  wire ALU_0_zero;
  wire [3:0]ALU_operation_0_1;
  wire [0:0]AND2_Res;
  wire [0:0]AND3_Res;
  wire [31:0]I1_0_1;
  wire [31:0]ImmGen_0_Imm_out;
  wire [2:0]ImmSel_0_1;
  wire [31:0]MUX2T1_32_0_o;
  wire [31:0]MUX2T1_32_1_o;
  wire [31:0]MUX4T1_32_0_o;
  wire [31:0]MUX4T1_32_1_o;
  wire [0:0]Op1_0_1;
  wire [0:0]Op2_0_1;
  wire [31:0]PC4_dout;
  wire [31:0]PC_Q;
  wire RegWrite_0_1;
  wire [4:0]Rs1_Dout;
  wire [4:0]Rs2_Dout;
  wire [4:0]Rs3_Dout;
  wire [0:0]VCC_dout;
  wire [31:0]add_32_0_c;
  wire [31:0]add_32_1_c;
  wire clk_0_1;
  wire [31:0]inst_field_0_1;
  wire [0:0]not1_Res;
  wire [0:0]or2_Res;
  wire [31:0]regs_0_Rs1_data;
  wire [31:0]regs_0_Rs2_data;
  wire [31:0]regs_0_a0;
  wire [31:0]regs_0_a1;
  wire [31:0]regs_0_a2;
  wire [31:0]regs_0_a3;
  wire [31:0]regs_0_a4;
  wire [31:0]regs_0_a5;
  wire [31:0]regs_0_a6;
  wire [31:0]regs_0_a7;
  wire [31:0]regs_0_gp;
  wire [31:0]regs_0_ra;
  wire [31:0]regs_0_s0;
  wire [31:0]regs_0_s1;
  wire [31:0]regs_0_s10;
  wire [31:0]regs_0_s11;
  wire [31:0]regs_0_s2;
  wire [31:0]regs_0_s3;
  wire [31:0]regs_0_s4;
  wire [31:0]regs_0_s5;
  wire [31:0]regs_0_s6;
  wire [31:0]regs_0_s7;
  wire [31:0]regs_0_s8;
  wire [31:0]regs_0_s9;
  wire [31:0]regs_0_sp;
  wire [31:0]regs_0_t0;
  wire [31:0]regs_0_t1;
  wire [31:0]regs_0_t2;
  wire [31:0]regs_0_t3;
  wire [31:0]regs_0_t4;
  wire [31:0]regs_0_t5;
  wire [31:0]regs_0_t6;
  wire [31:0]regs_0_tp;
  wire [31:0]regs_0_x0;
  wire rst_0_1;
  wire [1:0]s_0_1;
  wire [1:0]s_0_2;
  wire s_0_3;

  assign ALU_operation_0_1 = ALU_Control[3:0];
  assign ALU_out[31:0] = ALU_0_res;
  assign Data_out[31:0] = regs_0_Rs2_data;
  assign I1_0_1 = Data_in[31:0];
  assign ImmSel_0_1 = ImmSel[2:0];
  assign Op1_0_1 = Branch[0];
  assign Op2_0_1 = BranchN[0];
  assign PC_out[31:0] = PC_Q;
  assign RegWrite_0_1 = RegWrite;
  assign a0[31:0] = regs_0_a0;
  assign a1[31:0] = regs_0_a1;
  assign a2[31:0] = regs_0_a2;
  assign a3[31:0] = regs_0_a3;
  assign a4[31:0] = regs_0_a4;
  assign a5[31:0] = regs_0_a5;
  assign a6[31:0] = regs_0_a6;
  assign a7[31:0] = regs_0_a7;
  assign clk_0_1 = clk;
  assign gp[31:0] = regs_0_gp;
  assign inst_field_0_1 = inst_field[31:0];
  assign ra[31:0] = regs_0_ra;
  assign rst_0_1 = rst;
  assign s0[31:0] = regs_0_s0;
  assign s1[31:0] = regs_0_s1;
  assign s10[31:0] = regs_0_s10;
  assign s11[31:0] = regs_0_s11;
  assign s2[31:0] = regs_0_s2;
  assign s3[31:0] = regs_0_s3;
  assign s4[31:0] = regs_0_s4;
  assign s5[31:0] = regs_0_s5;
  assign s6[31:0] = regs_0_s6;
  assign s7[31:0] = regs_0_s7;
  assign s8[31:0] = regs_0_s8;
  assign s9[31:0] = regs_0_s9;
  assign s_0_1 = MemtoReg[1:0];
  assign s_0_2 = Jump[1:0];
  assign s_0_3 = ALUSrc_B;
  assign sp[31:0] = regs_0_sp;
  assign t0[31:0] = regs_0_t0;
  assign t1[31:0] = regs_0_t1;
  assign t2[31:0] = regs_0_t2;
  assign t3[31:0] = regs_0_t3;
  assign t4[31:0] = regs_0_t4;
  assign t5[31:0] = regs_0_t5;
  assign t6[31:0] = regs_0_t6;
  assign tp[31:0] = regs_0_tp;
  assign x0[31:0] = regs_0_x0;
  datapath_ALU_0_0 ALU_0
       (.A(regs_0_Rs1_data),
        .ALU_operation(ALU_operation_0_1),
        .B(MUX2T1_32_1_o),
        .res(ALU_0_res),
        .zero(ALU_0_zero));
  datapath_AND3_0 AND2
       (.Op1(not1_Res),
        .Op2(Op2_0_1),
        .Res(AND2_Res));
  datapath_not1_0 AND3
       (.Op1(Op1_0_1),
        .Op2(ALU_0_zero),
        .Res(AND3_Res));
  datapath_ImmGen_0_0 ImmGen_0
       (.ImmSel(ImmSel_0_1),
        .Imm_out(ImmGen_0_Imm_out),
        .inst_field(inst_field_0_1));
  datapath_MUX2T1_32_0_0 MUX2T1_32_0
       (.I0(add_32_0_c),
        .I1(add_32_1_c),
        .o(MUX2T1_32_0_o),
        .sel(or2_Res));
  datapath_MUX2T1_32_0_1 MUX2T1_32_1
       (.I0(regs_0_Rs2_data),
        .I1(ImmGen_0_Imm_out),
        .o(MUX2T1_32_1_o),
        .sel(s_0_3));
  datapath_MUX4T1_32_0_0 MUX4T1_32_0
       (.I0(ALU_0_res),
        .I1(I1_0_1),
        .I2(add_32_0_c),
        .I3(ImmGen_0_Imm_out),
        .o(MUX4T1_32_0_o),
        .s(s_0_1));
  datapath_MUX4T1_32_0_1 MUX4T1_32_1
       (.I0(MUX2T1_32_0_o),
        .I1(add_32_1_c),
        .I2(ALU_0_res),
        .I3(MUX2T1_32_0_o),
        .o(MUX4T1_32_1_o),
        .s(s_0_2));
  datapath_REG32_0_0 PC
       (.CE(VCC_dout),
        .D(MUX4T1_32_1_o),
        .Q(PC_Q),
        .clk(clk_0_1),
        .rst(rst_0_1));
  datapath_xlconstant_0_0 PC4
       (.dout(PC4_dout));
  datapath_xlslice_0_0 Rs1
       (.Din(inst_field_0_1),
        .Dout(Rs1_Dout));
  datapath_Rs1_0 Rs2
       (.Din(inst_field_0_1),
        .Dout(Rs2_Dout));
  datapath_Rs1_1 Rs3
       (.Din(inst_field_0_1),
        .Dout(Rs3_Dout));
  datapath_xlconstant_0_1 VCC
       (.dout(VCC_dout));
  datapath_add_32_0_0 add_32_0
       (.a(PC4_dout),
        .b(PC_Q),
        .c(add_32_0_c));
  datapath_add_32_0_1 add_32_1
       (.a(PC_Q),
        .b(ImmGen_0_Imm_out),
        .c(add_32_1_c));
  datapath_util_vector_logic_0_0 not1
       (.Op1(ALU_0_zero),
        .Res(not1_Res));
  datapath_util_vector_logic_0_1 or2
       (.Op1(AND3_Res),
        .Op2(AND2_Res),
        .Res(or2_Res));
  datapath_regs_0_0 regs_0
       (.RegWrite(RegWrite_0_1),
        .Rs1_addr(Rs1_Dout),
        .Rs1_data(regs_0_Rs1_data),
        .Rs2_addr(Rs2_Dout),
        .Rs2_data(regs_0_Rs2_data),
        .Wt_addr(Rs3_Dout),
        .Wt_data(MUX4T1_32_0_o),
        .a0(regs_0_a0),
        .a1(regs_0_a1),
        .a2(regs_0_a2),
        .a3(regs_0_a3),
        .a4(regs_0_a4),
        .a5(regs_0_a5),
        .a6(regs_0_a6),
        .a7(regs_0_a7),
        .clk(clk_0_1),
        .gp(regs_0_gp),
        .ra(regs_0_ra),
        .rst(rst_0_1),
        .s0(regs_0_s0),
        .s1(regs_0_s1),
        .s10(regs_0_s10),
        .s11(regs_0_s11),
        .s2(regs_0_s2),
        .s3(regs_0_s3),
        .s4(regs_0_s4),
        .s5(regs_0_s5),
        .s6(regs_0_s6),
        .s7(regs_0_s7),
        .s8(regs_0_s8),
        .s9(regs_0_s9),
        .sp(regs_0_sp),
        .t0(regs_0_t0),
        .t1(regs_0_t1),
        .t2(regs_0_t2),
        .t3(regs_0_t3),
        .t4(regs_0_t4),
        .t5(regs_0_t5),
        .t6(regs_0_t6),
        .tp(regs_0_tp),
        .x0(regs_0_x0));
endmodule
