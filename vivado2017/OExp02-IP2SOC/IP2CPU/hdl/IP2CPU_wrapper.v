//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Apr  7 16:41:12 2021
//Host        : LAPTOP-VIEPELG3 running 64-bit major release  (build 9200)
//Command     : generate_target IP2CPU_wrapper.bd
//Design      : IP2CPU_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module IP2CPU_wrapper
   (ALU_out,
    CPU_MIO,
    Data_in,
    Data_out,
    MIO_ready,
    MemRW,
    PC_out,
    clk,
    inst_in,
    rst);
  output [31:0]ALU_out;
  output CPU_MIO;
  input [31:0]Data_in;
  output [31:0]Data_out;
  input MIO_ready;
  output MemRW;
  output [31:0]PC_out;
  input clk;
  input [31:0]inst_in;
  input rst;

  wire [31:0]ALU_out;
  wire CPU_MIO;
  wire [31:0]Data_in;
  wire [31:0]Data_out;
  wire MIO_ready;
  wire MemRW;
  wire [31:0]PC_out;
  wire clk;
  wire [31:0]inst_in;
  wire rst;

  IP2CPU IP2CPU_i
       (.ALU_out(ALU_out),
        .CPU_MIO(CPU_MIO),
        .Data_in(Data_in),
        .Data_out(Data_out),
        .MIO_ready(MIO_ready),
        .MemRW(MemRW),
        .PC_out(PC_out),
        .clk(clk),
        .inst_in(inst_in),
        .rst(rst));
endmodule
