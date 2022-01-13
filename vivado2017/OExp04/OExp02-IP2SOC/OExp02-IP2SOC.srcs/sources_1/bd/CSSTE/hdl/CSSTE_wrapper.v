//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Thu May 20 19:01:05 2021
//Host        : LAPTOP-VIEPELG3 running 64-bit major release  (build 9200)
//Command     : generate_target CSSTE_wrapper.bd
//Design      : CSSTE_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module CSSTE_wrapper
   (BTN_y,
    Blue,
    Green,
    HSYNC,
    LED_PEN,
    RSTN,
    Red,
    SEG_PEN,
    SW,
    VSYNC,
    clk_100mhz,
    led_clk,
    led_clrn,
    led_sout,
    seg_clk,
    seg_clrn,
    seg_sout);
  input [3:0]BTN_y;
  output [3:0]Blue;
  output [3:0]Green;
  output HSYNC;
  output LED_PEN;
  input RSTN;
  output [3:0]Red;
  output SEG_PEN;
  input [15:0]SW;
  output VSYNC;
  input clk_100mhz;
  output led_clk;
  output led_clrn;
  output led_sout;
  output seg_clk;
  output seg_clrn;
  output seg_sout;

  wire [3:0]BTN_y;
  wire [3:0]Blue;
  wire [3:0]Green;
  wire HSYNC;
  wire LED_PEN;
  wire RSTN;
  wire [3:0]Red;
  wire SEG_PEN;
  wire [15:0]SW;
  wire VSYNC;
  wire clk_100mhz;
  wire led_clk;
  wire led_clrn;
  wire led_sout;
  wire seg_clk;
  wire seg_clrn;
  wire seg_sout;

  CSSTE CSSTE_i
       (.BTN_y(BTN_y),
        .Blue(Blue),
        .Green(Green),
        .HSYNC(HSYNC),
        .LED_PEN(LED_PEN),
        .RSTN(RSTN),
        .Red(Red),
        .SEG_PEN(SEG_PEN),
        .SW(SW),
        .VSYNC(VSYNC),
        .clk_100mhz(clk_100mhz),
        .led_clk(led_clk),
        .led_clrn(led_clrn),
        .led_sout(led_sout),
        .seg_clk(seg_clk),
        .seg_clrn(seg_clrn),
        .seg_sout(seg_sout));
endmodule
