//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Jun  1 19:30:42 2021
//Host        : DESKTOP-5SVOFN0 running 64-bit major release  (build 9200)
//Command     : generate_target SCPU_SIM_wrapper.bd
//Design      : SCPU_SIM_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SCPU_SIM_wrapper
   (Data_out_WB,
    MemRW_EX_0,
    PC_out_EX,
    PC_out_ID,
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
    inst_ID,
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
  output [31:0]Data_out_WB;
  output MemRW_EX_0;
  output [31:0]PC_out_EX;
  output [31:0]PC_out_ID;
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
  output [31:0]inst_ID;
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

  wire [31:0]Data_out_WB;
  wire MemRW_EX_0;
  wire [31:0]PC_out_EX;
  wire [31:0]PC_out_ID;
  wire [31:0]a0;
  wire [31:0]a1;
  wire [31:0]a2;
  wire [31:0]a3;
  wire [31:0]a4;
  wire [31:0]a5;
  wire [31:0]a6;
  wire [31:0]a7;
  wire clk;
  wire [31:0]gp;
  wire [31:0]inst_ID;
  wire [31:0]ra;
  wire rst;
  wire [31:0]s0;
  wire [31:0]s1;
  wire [31:0]s10;
  wire [31:0]s11;
  wire [31:0]s2;
  wire [31:0]s3;
  wire [31:0]s4;
  wire [31:0]s5;
  wire [31:0]s6;
  wire [31:0]s7;
  wire [31:0]s8;
  wire [31:0]s9;
  wire [31:0]sp;
  wire [31:0]t0;
  wire [31:0]t1;
  wire [31:0]t2;
  wire [31:0]t3;
  wire [31:0]t4;
  wire [31:0]t5;
  wire [31:0]t6;
  wire [31:0]tp;
  wire [31:0]x0;

  SCPU_SIM SCPU_SIM_i
       (.Data_out_WB(Data_out_WB),
        .MemRW_EX_0(MemRW_EX_0),
        .PC_out_EX(PC_out_EX),
        .PC_out_ID(PC_out_ID),
        .a0(a0),
        .a1(a1),
        .a2(a2),
        .a3(a3),
        .a4(a4),
        .a5(a5),
        .a6(a6),
        .a7(a7),
        .clk(clk),
        .gp(gp),
        .inst_ID(inst_ID),
        .ra(ra),
        .rst(rst),
        .s0(s0),
        .s1(s1),
        .s10(s10),
        .s11(s11),
        .s2(s2),
        .s3(s3),
        .s4(s4),
        .s5(s5),
        .s6(s6),
        .s7(s7),
        .s8(s8),
        .s9(s9),
        .sp(sp),
        .t0(t0),
        .t1(t1),
        .t2(t2),
        .t3(t3),
        .t4(t4),
        .t5(t5),
        .t6(t6),
        .tp(tp),
        .x0(x0));
endmodule
