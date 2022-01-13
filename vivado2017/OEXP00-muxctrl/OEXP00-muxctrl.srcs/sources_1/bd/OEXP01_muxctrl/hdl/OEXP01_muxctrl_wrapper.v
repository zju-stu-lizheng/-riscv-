//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Thu Mar  4 20:16:52 2021
//Host        : LAPTOP-VIEPELG3 running 64-bit major release  (build 9200)
//Command     : generate_target OEXP01_muxctrl_wrapper.bd
//Design      : OEXP01_muxctrl_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module OEXP01_muxctrl_wrapper(I0,
                              I1,
                              o_0,
                              s,
                              s1,
                              s2);

    input [4:0]I0;
    input [4:0]I1;
    output [4:0]o_0;
    input [1:0]s;
    input s1;
    input [2:0]s2;

    wire [4:0]I0;
    wire [4:0]I1;
    wire [4:0]o_0;
    wire [1:0]s;
    wire s1;
    wire [2:0]s2;

    OEXP01_muxctrl OEXP01_muxctrl_i
        (.I0(I0),
          .I1(I1),
          .o_0(o_0),
          .s(s),
          .s1(s1),
          .s2(s2));
endmodule
