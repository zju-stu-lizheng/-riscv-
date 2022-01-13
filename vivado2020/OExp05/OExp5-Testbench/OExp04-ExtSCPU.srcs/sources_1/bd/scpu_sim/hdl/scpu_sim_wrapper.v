//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Jun  1 19:03:50 2021
//Host        : LAPTOP-VIEPELG3 running 64-bit major release  (build 9200)
//Command     : generate_target scpu_sim_wrapper.bd
//Design      : scpu_sim_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module scpu_sim_wrapper
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
  input clk;
  output [31:0]inst_ID_0;
  input rst;

  wire [31:0]Data_out_WB_0;
  wire MemRW_EX_0;
  wire [31:0]PC_out_EX_0;
  wire [31:0]PC_out_ID_0;
  wire clk;
  wire [31:0]inst_ID_0;
  wire rst;

  scpu_sim scpu_sim_i
       (.Data_out_WB_0(Data_out_WB_0),
        .MemRW_EX_0(MemRW_EX_0),
        .PC_out_EX_0(PC_out_EX_0),
        .PC_out_ID_0(PC_out_ID_0),
        .clk(clk),
        .inst_ID_0(inst_ID_0),
        .rst(rst));
endmodule
