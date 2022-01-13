//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sat May 15 22:23:13 2021
//Host        : LAPTOP-VIEPELG3 running 64-bit major release  (build 9200)
//Command     : generate_target scpu_sim.bd
//Design      : scpu_sim
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "scpu_sim,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=scpu_sim,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "scpu_sim.hwdef" *) 
module scpu_sim
   (a0_0,
    a1_0,
    a2_0,
    a3_0,
    a4_0,
    a5_0,
    a6_0,
    a7_0,
    clk,
    gp_0,
    ra_0,
    rst,
    s0_0,
    s10_0,
    s11_0,
    s1_0,
    s2_0,
    s3_0,
    s4_0,
    s5_0,
    s6_0,
    s7_0,
    s8_0,
    s9_0,
    sp_0,
    t0_0,
    t1_0,
    t2_0,
    t3_0,
    t4_0,
    t5_0,
    t6_0,
    tp_0,
    x0_0);
  output [31:0]a0_0;
  output [31:0]a1_0;
  output [31:0]a2_0;
  output [31:0]a3_0;
  output [31:0]a4_0;
  output [31:0]a5_0;
  output [31:0]a6_0;
  output [31:0]a7_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN scpu_sim_clk_0, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  output [31:0]gp_0;
  output [31:0]ra_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, POLARITY ACTIVE_LOW" *) input rst;
  output [31:0]s0_0;
  output [31:0]s10_0;
  output [31:0]s11_0;
  output [31:0]s1_0;
  output [31:0]s2_0;
  output [31:0]s3_0;
  output [31:0]s4_0;
  output [31:0]s5_0;
  output [31:0]s6_0;
  output [31:0]s7_0;
  output [31:0]s8_0;
  output [31:0]s9_0;
  output [31:0]sp_0;
  output [31:0]t0_0;
  output [31:0]t1_0;
  output [31:0]t2_0;
  output [31:0]t3_0;
  output [31:0]t4_0;
  output [31:0]t5_0;
  output [31:0]t6_0;
  output [31:0]tp_0;
  output [31:0]x0_0;

  wire [9:0]Addr11_2_Dout;
  wire [31:0]IP2CPU_wrapper_0_Addr_out;
  wire IP2CPU_wrapper_0_CPU_MIO;
  wire [31:0]IP2CPU_wrapper_0_Data_out;
  wire IP2CPU_wrapper_0_MemRW;
  wire [31:0]IP2CPU_wrapper_0_PC_out;
  wire [31:0]IP2CPU_wrapper_0_a0;
  wire [31:0]IP2CPU_wrapper_0_a1;
  wire [31:0]IP2CPU_wrapper_0_a2;
  wire [31:0]IP2CPU_wrapper_0_a3;
  wire [31:0]IP2CPU_wrapper_0_a4;
  wire [31:0]IP2CPU_wrapper_0_a5;
  wire [31:0]IP2CPU_wrapper_0_a6;
  wire [31:0]IP2CPU_wrapper_0_a7;
  wire [31:0]IP2CPU_wrapper_0_gp;
  wire [31:0]IP2CPU_wrapper_0_ra;
  wire [31:0]IP2CPU_wrapper_0_s0;
  wire [31:0]IP2CPU_wrapper_0_s1;
  wire [31:0]IP2CPU_wrapper_0_s10;
  wire [31:0]IP2CPU_wrapper_0_s11;
  wire [31:0]IP2CPU_wrapper_0_s2;
  wire [31:0]IP2CPU_wrapper_0_s3;
  wire [31:0]IP2CPU_wrapper_0_s4;
  wire [31:0]IP2CPU_wrapper_0_s5;
  wire [31:0]IP2CPU_wrapper_0_s6;
  wire [31:0]IP2CPU_wrapper_0_s7;
  wire [31:0]IP2CPU_wrapper_0_s8;
  wire [31:0]IP2CPU_wrapper_0_s9;
  wire [31:0]IP2CPU_wrapper_0_sp;
  wire [31:0]IP2CPU_wrapper_0_t0;
  wire [31:0]IP2CPU_wrapper_0_t1;
  wire [31:0]IP2CPU_wrapper_0_t2;
  wire [31:0]IP2CPU_wrapper_0_t3;
  wire [31:0]IP2CPU_wrapper_0_t4;
  wire [31:0]IP2CPU_wrapper_0_t5;
  wire [31:0]IP2CPU_wrapper_0_t6;
  wire [31:0]IP2CPU_wrapper_0_tp;
  wire [31:0]IP2CPU_wrapper_0_x0;
  wire [0:0]NOT1_Res;
  wire [9:0]PC11_2_Dout;
  wire [31:0]RAM_B_spo;
  wire [31:0]ROM_spo;
  wire clk_0_1;
  wire rst_0_1;

  assign a0_0[31:0] = IP2CPU_wrapper_0_a0;
  assign a1_0[31:0] = IP2CPU_wrapper_0_a1;
  assign a2_0[31:0] = IP2CPU_wrapper_0_a2;
  assign a3_0[31:0] = IP2CPU_wrapper_0_a3;
  assign a4_0[31:0] = IP2CPU_wrapper_0_a4;
  assign a5_0[31:0] = IP2CPU_wrapper_0_a5;
  assign a6_0[31:0] = IP2CPU_wrapper_0_a6;
  assign a7_0[31:0] = IP2CPU_wrapper_0_a7;
  assign clk_0_1 = clk;
  assign gp_0[31:0] = IP2CPU_wrapper_0_gp;
  assign ra_0[31:0] = IP2CPU_wrapper_0_ra;
  assign rst_0_1 = rst;
  assign s0_0[31:0] = IP2CPU_wrapper_0_s0;
  assign s10_0[31:0] = IP2CPU_wrapper_0_s10;
  assign s11_0[31:0] = IP2CPU_wrapper_0_s11;
  assign s1_0[31:0] = IP2CPU_wrapper_0_s1;
  assign s2_0[31:0] = IP2CPU_wrapper_0_s2;
  assign s3_0[31:0] = IP2CPU_wrapper_0_s3;
  assign s4_0[31:0] = IP2CPU_wrapper_0_s4;
  assign s5_0[31:0] = IP2CPU_wrapper_0_s5;
  assign s6_0[31:0] = IP2CPU_wrapper_0_s6;
  assign s7_0[31:0] = IP2CPU_wrapper_0_s7;
  assign s8_0[31:0] = IP2CPU_wrapper_0_s8;
  assign s9_0[31:0] = IP2CPU_wrapper_0_s9;
  assign sp_0[31:0] = IP2CPU_wrapper_0_sp;
  assign t0_0[31:0] = IP2CPU_wrapper_0_t0;
  assign t1_0[31:0] = IP2CPU_wrapper_0_t1;
  assign t2_0[31:0] = IP2CPU_wrapper_0_t2;
  assign t3_0[31:0] = IP2CPU_wrapper_0_t3;
  assign t4_0[31:0] = IP2CPU_wrapper_0_t4;
  assign t5_0[31:0] = IP2CPU_wrapper_0_t5;
  assign t6_0[31:0] = IP2CPU_wrapper_0_t6;
  assign tp_0[31:0] = IP2CPU_wrapper_0_tp;
  assign x0_0[31:0] = IP2CPU_wrapper_0_x0;
  scpu_sim_xlslice_0_0 Addr11_2
       (.Din(IP2CPU_wrapper_0_Addr_out),
        .Dout(Addr11_2_Dout));
  scpu_sim_IP2CPU_wrapper_0_0 IP2CPU_wrapper_0
       (.Addr_out(IP2CPU_wrapper_0_Addr_out),
        .CPU_MIO(IP2CPU_wrapper_0_CPU_MIO),
        .Data_in(RAM_B_spo),
        .Data_out(IP2CPU_wrapper_0_Data_out),
        .MIO_ready(IP2CPU_wrapper_0_CPU_MIO),
        .MemRW(IP2CPU_wrapper_0_MemRW),
        .PC_out(IP2CPU_wrapper_0_PC_out),
        .a0(IP2CPU_wrapper_0_a0),
        .a1(IP2CPU_wrapper_0_a1),
        .a2(IP2CPU_wrapper_0_a2),
        .a3(IP2CPU_wrapper_0_a3),
        .a4(IP2CPU_wrapper_0_a4),
        .a5(IP2CPU_wrapper_0_a5),
        .a6(IP2CPU_wrapper_0_a6),
        .a7(IP2CPU_wrapper_0_a7),
        .clk(clk_0_1),
        .gp(IP2CPU_wrapper_0_gp),
        .inst_in(ROM_spo),
        .ra(IP2CPU_wrapper_0_ra),
        .rst(rst_0_1),
        .s0(IP2CPU_wrapper_0_s0),
        .s1(IP2CPU_wrapper_0_s1),
        .s10(IP2CPU_wrapper_0_s10),
        .s11(IP2CPU_wrapper_0_s11),
        .s2(IP2CPU_wrapper_0_s2),
        .s3(IP2CPU_wrapper_0_s3),
        .s4(IP2CPU_wrapper_0_s4),
        .s5(IP2CPU_wrapper_0_s5),
        .s6(IP2CPU_wrapper_0_s6),
        .s7(IP2CPU_wrapper_0_s7),
        .s8(IP2CPU_wrapper_0_s8),
        .s9(IP2CPU_wrapper_0_s9),
        .sp(IP2CPU_wrapper_0_sp),
        .t0(IP2CPU_wrapper_0_t0),
        .t1(IP2CPU_wrapper_0_t1),
        .t2(IP2CPU_wrapper_0_t2),
        .t3(IP2CPU_wrapper_0_t3),
        .t4(IP2CPU_wrapper_0_t4),
        .t5(IP2CPU_wrapper_0_t5),
        .t6(IP2CPU_wrapper_0_t6),
        .tp(IP2CPU_wrapper_0_tp),
        .x0(IP2CPU_wrapper_0_x0));
  scpu_sim_util_vector_logic_0_0 NOT1
       (.Op1(clk_0_1),
        .Res(NOT1_Res));
  scpu_sim_xlslice_0_1 PC11_2
       (.Din(IP2CPU_wrapper_0_PC_out),
        .Dout(PC11_2_Dout));
  scpu_sim_dist_mem_gen_0_0 RAM_B
       (.a(Addr11_2_Dout),
        .clk(NOT1_Res),
        .d(IP2CPU_wrapper_0_Data_out),
        .spo(RAM_B_spo),
        .we(IP2CPU_wrapper_0_MemRW));
  scpu_sim_RAM_B_0 ROM
       (.a(PC11_2_Dout),
        .spo(ROM_spo));
endmodule
