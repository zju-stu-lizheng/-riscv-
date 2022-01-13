//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Sat May 15 22:20:34 2021
//Host        : LAPTOP-VIEPELG3 running 64-bit major release  (build 9200)
//Command     : generate_target IP2CPU_wrapper.bd
//Design      : IP2CPU_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module IP2CPU_wrapper
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
  input clk;
  output [31:0]gp;
  input [31:0]inst_in;
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

  wire [31:0]Addr_out;
  wire CPU_MIO;
  wire [31:0]Data_in;
  wire [31:0]Data_out;
  wire MIO_ready;
  wire MemRW;
  wire [31:0]PC_out;
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
  wire [31:0]inst_in;
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

  IP2CPU IP2CPU_i
       (.Addr_out(Addr_out),
        .CPU_MIO(CPU_MIO),
        .Data_in(Data_in),
        .Data_out(Data_out),
        .MIO_ready(MIO_ready),
        .MemRW(MemRW),
        .PC_out(PC_out),
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
        .inst_in(inst_in),
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
