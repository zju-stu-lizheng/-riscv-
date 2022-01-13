//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Jun  1 19:03:50 2021
//Host        : LAPTOP-VIEPELG3 running 64-bit major release  (build 9200)
//Command     : generate_target scpu_sim.bd
//Design      : scpu_sim
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "scpu_sim,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=scpu_sim,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "scpu_sim.hwdef" *) 
module scpu_sim
   (Data_out_WB_0,
    MemRW_EX_0,
    PC_out_EX_0,
    PC_out_ID_0,
    clk,
    inst_ID_0,
    rst);
  output [31:0]Data_out_WB_0;
  output MemRW_EX_0;
  output [31:0]PC_out_EX_0;
  output [31:0]PC_out_ID_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN scpu_sim_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;
  output [31:0]inst_ID_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input rst;

  wire [9:0]Addr11_2_Dout;
  wire [0:0]NOT1_Res;
  wire [9:0]PC11_2_Dout;
  wire [31:0]Pipeline_CPU_0_Addr_out;
  wire [31:0]Pipeline_CPU_0_Data_out;
  wire [31:0]Pipeline_CPU_0_Data_out_WB;
  wire Pipeline_CPU_0_MemRW_EX;
  wire Pipeline_CPU_0_MemRW_Mem;
  wire [31:0]Pipeline_CPU_0_PC_out_EX;
  wire [31:0]Pipeline_CPU_0_PC_out_ID;
  wire [31:0]Pipeline_CPU_0_PC_out_IF;
  wire [31:0]Pipeline_CPU_0_inst_ID;
  wire [31:0]RAM_B_spo;
  wire [31:0]ROM_spo;
  wire clk_0_1;
  wire rst_0_1;

  assign Data_out_WB_0[31:0] = Pipeline_CPU_0_Data_out_WB;
  assign MemRW_EX_0 = Pipeline_CPU_0_MemRW_EX;
  assign PC_out_EX_0[31:0] = Pipeline_CPU_0_PC_out_EX;
  assign PC_out_ID_0[31:0] = Pipeline_CPU_0_PC_out_ID;
  assign clk_0_1 = clk;
  assign inst_ID_0[31:0] = Pipeline_CPU_0_inst_ID;
  assign rst_0_1 = rst;
  scpu_sim_xlslice_0_0 Addr11_2
       (.Din(Pipeline_CPU_0_Addr_out),
        .Dout(Addr11_2_Dout));
  scpu_sim_util_vector_logic_0_0 NOT1
       (.Op1(clk_0_1),
        .Res(NOT1_Res));
  scpu_sim_xlslice_0_1 PC11_2
       (.Din(Pipeline_CPU_0_PC_out_IF),
        .Dout(PC11_2_Dout));
  scpu_sim_Pipeline_CPU_0_0 Pipeline_CPU_0
       (.Addr_out(Pipeline_CPU_0_Addr_out),
        .Data_in(RAM_B_spo),
        .Data_out(Pipeline_CPU_0_Data_out),
        .Data_out_WB(Pipeline_CPU_0_Data_out_WB),
        .MemRW_EX(Pipeline_CPU_0_MemRW_EX),
        .MemRW_Mem(Pipeline_CPU_0_MemRW_Mem),
        .PC_out_EX(Pipeline_CPU_0_PC_out_EX),
        .PC_out_ID(Pipeline_CPU_0_PC_out_ID),
        .PC_out_IF(Pipeline_CPU_0_PC_out_IF),
        .clk(clk_0_1),
        .inst_ID(Pipeline_CPU_0_inst_ID),
        .inst_IF(ROM_spo),
        .rst(rst_0_1));
  scpu_sim_dist_mem_gen_0_0 RAM_B
       (.a(Addr11_2_Dout),
        .clk(NOT1_Res),
        .d(Pipeline_CPU_0_Data_out),
        .spo(RAM_B_spo),
        .we(Pipeline_CPU_0_MemRW_Mem));
  scpu_sim_RAM_B_0 ROM
       (.a(PC11_2_Dout),
        .spo(ROM_spo));
endmodule
