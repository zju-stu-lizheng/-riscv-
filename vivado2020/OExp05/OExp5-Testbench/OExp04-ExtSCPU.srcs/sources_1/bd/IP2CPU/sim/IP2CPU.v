//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue May 25 18:46:20 2021
//Host        : LAPTOP-VIEPELG3 running 64-bit major release  (build 9200)
//Command     : generate_target IP2CPU.bd
//Design      : IP2CPU
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "IP2CPU,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=IP2CPU,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "IP2CPU.hwdef" *) 
module IP2CPU
   (Addr_out,
    CPU_MIO,
    Data_in,
    Data_out,
    MIO_ready,
    MemRW,
    PC_out,
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
    inst_in,
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
  output [31:0]Addr_out;
  output CPU_MIO;
  input [31:0]Data_in;
  output [31:0]Data_out;
  input MIO_ready;
  output MemRW;
  output [31:0]PC_out;
  output [31:0]a0;
  output [31:0]a1;
  output [31:0]a2;
  output [31:0]a3;
  output [31:0]a4;
  output [31:0]a5;
  output [31:0]a6;
  output [31:0]a7;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN IP2CPU_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  output [31:0]gp;
  input [31:0]inst_in;
  output [31:0]ra;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst;
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

  wire [31:0]Data_in_1;
  wire MIO_ready_0_1;
  wire SCPU_ctrl_0_ALUSrc_B;
  wire [3:0]SCPU_ctrl_0_ALU_Control;
  wire SCPU_ctrl_0_Branch;
  wire SCPU_ctrl_0_BranchN;
  wire SCPU_ctrl_0_CPU_MIO;
  wire [2:0]SCPU_ctrl_0_ImmSel;
  wire [1:0]SCPU_ctrl_0_Jump;
  wire SCPU_ctrl_0_MemRW;
  wire [1:0]SCPU_ctrl_0_MemtoReg;
  wire SCPU_ctrl_0_RegWrite;
  wire clk_0_1;
  wire [31:0]datapath_wrapper_0_ALU_out;
  wire [31:0]datapath_wrapper_0_Data_out;
  wire [31:0]datapath_wrapper_0_PC_out;
  wire [31:0]datapath_wrapper_0_a0;
  wire [31:0]datapath_wrapper_0_a1;
  wire [31:0]datapath_wrapper_0_a2;
  wire [31:0]datapath_wrapper_0_a3;
  wire [31:0]datapath_wrapper_0_a4;
  wire [31:0]datapath_wrapper_0_a5;
  wire [31:0]datapath_wrapper_0_a6;
  wire [31:0]datapath_wrapper_0_a7;
  wire [31:0]datapath_wrapper_0_gp;
  wire [31:0]datapath_wrapper_0_ra;
  wire [31:0]datapath_wrapper_0_s0;
  wire [31:0]datapath_wrapper_0_s1;
  wire [31:0]datapath_wrapper_0_s10;
  wire [31:0]datapath_wrapper_0_s11;
  wire [31:0]datapath_wrapper_0_s2;
  wire [31:0]datapath_wrapper_0_s3;
  wire [31:0]datapath_wrapper_0_s4;
  wire [31:0]datapath_wrapper_0_s5;
  wire [31:0]datapath_wrapper_0_s6;
  wire [31:0]datapath_wrapper_0_s7;
  wire [31:0]datapath_wrapper_0_s8;
  wire [31:0]datapath_wrapper_0_s9;
  wire [31:0]datapath_wrapper_0_sp;
  wire [31:0]datapath_wrapper_0_t0;
  wire [31:0]datapath_wrapper_0_t1;
  wire [31:0]datapath_wrapper_0_t2;
  wire [31:0]datapath_wrapper_0_t3;
  wire [31:0]datapath_wrapper_0_t4;
  wire [31:0]datapath_wrapper_0_t5;
  wire [31:0]datapath_wrapper_0_t6;
  wire [31:0]datapath_wrapper_0_tp;
  wire [31:0]datapath_wrapper_0_x0;
  wire [2:0]inst14_12_Dout;
  wire [0:0]inst30_Dout;
  wire [4:0]inst6_2_Dout;
  wire [31:0]inst_field_0_1;
  wire rst_0_1;

  assign Addr_out[31:0] = datapath_wrapper_0_ALU_out;
  assign CPU_MIO = SCPU_ctrl_0_CPU_MIO;
  assign Data_in_1 = Data_in[31:0];
  assign Data_out[31:0] = datapath_wrapper_0_Data_out;
  assign MIO_ready_0_1 = MIO_ready;
  assign MemRW = SCPU_ctrl_0_MemRW;
  assign PC_out[31:0] = datapath_wrapper_0_PC_out;
  assign a0[31:0] = datapath_wrapper_0_a0;
  assign a1[31:0] = datapath_wrapper_0_a1;
  assign a2[31:0] = datapath_wrapper_0_a2;
  assign a3[31:0] = datapath_wrapper_0_a3;
  assign a4[31:0] = datapath_wrapper_0_a4;
  assign a5[31:0] = datapath_wrapper_0_a5;
  assign a6[31:0] = datapath_wrapper_0_a6;
  assign a7[31:0] = datapath_wrapper_0_a7;
  assign clk_0_1 = clk;
  assign gp[31:0] = datapath_wrapper_0_gp;
  assign inst_field_0_1 = inst_in[31:0];
  assign ra[31:0] = datapath_wrapper_0_ra;
  assign rst_0_1 = rst;
  assign s0[31:0] = datapath_wrapper_0_s0;
  assign s1[31:0] = datapath_wrapper_0_s1;
  assign s10[31:0] = datapath_wrapper_0_s10;
  assign s11[31:0] = datapath_wrapper_0_s11;
  assign s2[31:0] = datapath_wrapper_0_s2;
  assign s3[31:0] = datapath_wrapper_0_s3;
  assign s4[31:0] = datapath_wrapper_0_s4;
  assign s5[31:0] = datapath_wrapper_0_s5;
  assign s6[31:0] = datapath_wrapper_0_s6;
  assign s7[31:0] = datapath_wrapper_0_s7;
  assign s8[31:0] = datapath_wrapper_0_s8;
  assign s9[31:0] = datapath_wrapper_0_s9;
  assign sp[31:0] = datapath_wrapper_0_sp;
  assign t0[31:0] = datapath_wrapper_0_t0;
  assign t1[31:0] = datapath_wrapper_0_t1;
  assign t2[31:0] = datapath_wrapper_0_t2;
  assign t3[31:0] = datapath_wrapper_0_t3;
  assign t4[31:0] = datapath_wrapper_0_t4;
  assign t5[31:0] = datapath_wrapper_0_t5;
  assign t6[31:0] = datapath_wrapper_0_t6;
  assign tp[31:0] = datapath_wrapper_0_tp;
  assign x0[31:0] = datapath_wrapper_0_x0;
  IP2CPU_SCPU_ctrl_0_1 SCPU_ctrl_0
       (.ALUSrc_B(SCPU_ctrl_0_ALUSrc_B),
        .ALU_Control(SCPU_ctrl_0_ALU_Control),
        .Branch(SCPU_ctrl_0_Branch),
        .BranchN(SCPU_ctrl_0_BranchN),
        .CPU_MIO(SCPU_ctrl_0_CPU_MIO),
        .Fun3(inst14_12_Dout),
        .Fun7(inst30_Dout),
        .ImmSel(SCPU_ctrl_0_ImmSel),
        .Jump(SCPU_ctrl_0_Jump),
        .MIO_ready(MIO_ready_0_1),
        .MemRW(SCPU_ctrl_0_MemRW),
        .MemtoReg(SCPU_ctrl_0_MemtoReg),
        .OPcode(inst6_2_Dout),
        .RegWrite(SCPU_ctrl_0_RegWrite));
  IP2CPU_datapath_wrapper_0_1 datapath_wrapper_0
       (.ALUSrc_B(SCPU_ctrl_0_ALUSrc_B),
        .ALU_Control(SCPU_ctrl_0_ALU_Control),
        .ALU_out(datapath_wrapper_0_ALU_out),
        .Branch(SCPU_ctrl_0_Branch),
        .BranchN(SCPU_ctrl_0_BranchN),
        .Data_in(Data_in_1),
        .Data_out(datapath_wrapper_0_Data_out),
        .ImmSel(SCPU_ctrl_0_ImmSel),
        .Jump(SCPU_ctrl_0_Jump),
        .MemtoReg(SCPU_ctrl_0_MemtoReg),
        .PC_out(datapath_wrapper_0_PC_out),
        .RegWrite(SCPU_ctrl_0_RegWrite),
        .a0(datapath_wrapper_0_a0),
        .a1(datapath_wrapper_0_a1),
        .a2(datapath_wrapper_0_a2),
        .a3(datapath_wrapper_0_a3),
        .a4(datapath_wrapper_0_a4),
        .a5(datapath_wrapper_0_a5),
        .a6(datapath_wrapper_0_a6),
        .a7(datapath_wrapper_0_a7),
        .clk(clk_0_1),
        .gp(datapath_wrapper_0_gp),
        .inst_field(inst_field_0_1),
        .ra(datapath_wrapper_0_ra),
        .rst(rst_0_1),
        .s0(datapath_wrapper_0_s0),
        .s1(datapath_wrapper_0_s1),
        .s10(datapath_wrapper_0_s10),
        .s11(datapath_wrapper_0_s11),
        .s2(datapath_wrapper_0_s2),
        .s3(datapath_wrapper_0_s3),
        .s4(datapath_wrapper_0_s4),
        .s5(datapath_wrapper_0_s5),
        .s6(datapath_wrapper_0_s6),
        .s7(datapath_wrapper_0_s7),
        .s8(datapath_wrapper_0_s8),
        .s9(datapath_wrapper_0_s9),
        .sp(datapath_wrapper_0_sp),
        .t0(datapath_wrapper_0_t0),
        .t1(datapath_wrapper_0_t1),
        .t2(datapath_wrapper_0_t2),
        .t3(datapath_wrapper_0_t3),
        .t4(datapath_wrapper_0_t4),
        .t5(datapath_wrapper_0_t5),
        .t6(datapath_wrapper_0_t6),
        .tp(datapath_wrapper_0_tp),
        .x0(datapath_wrapper_0_x0));
  IP2CPU_inst14_12_0 inst14_12
       (.Din(inst_field_0_1),
        .Dout(inst14_12_Dout));
  IP2CPU_inst30_0 inst30
       (.Din(inst_field_0_1),
        .Dout(inst30_Dout));
  IP2CPU_inst6_2_0 inst6_2
       (.Din(inst_field_0_1),
        .Dout(inst6_2_Dout));
endmodule
