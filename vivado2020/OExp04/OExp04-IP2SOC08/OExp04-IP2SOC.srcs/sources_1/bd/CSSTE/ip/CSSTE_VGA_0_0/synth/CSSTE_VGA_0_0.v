// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:VGA:1.0
// IP Revision: 3

(* X_CORE_INFO = "VGA,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "CSSTE_VGA_0_0,VGA,{}" *)
(* CORE_GENERATION_INFO = "CSSTE_VGA_0_0,VGA,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=VGA,x_ipVersion=1.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module CSSTE_VGA_0_0 (
  clk_25m,
  clk_100m,
  rst,
  pc,
  inst,
  alu_res,
  mem_wen,
  dmem_o_data,
  dmem_i_data,
  dmem_addr,
  x0,
  ra,
  sp,
  gp,
  tp,
  t0,
  t1,
  t2,
  s0,
  s1,
  a0,
  a1,
  a2,
  a3,
  a4,
  a5,
  a6,
  a7,
  s2,
  s3,
  s4,
  s5,
  s6,
  s7,
  s8,
  s9,
  s10,
  s11,
  t3,
  t4,
  t5,
  t6,
  hs,
  vs,
  vga_r,
  vga_g,
  vga_b
);

input wire clk_25m;
input wire clk_100m;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
input wire [31 : 0] pc;
input wire [31 : 0] inst;
input wire [31 : 0] alu_res;
input wire mem_wen;
input wire [31 : 0] dmem_o_data;
input wire [31 : 0] dmem_i_data;
input wire [31 : 0] dmem_addr;
input wire [31 : 0] x0;
input wire [31 : 0] ra;
input wire [31 : 0] sp;
input wire [31 : 0] gp;
input wire [31 : 0] tp;
input wire [31 : 0] t0;
input wire [31 : 0] t1;
input wire [31 : 0] t2;
input wire [31 : 0] s0;
input wire [31 : 0] s1;
input wire [31 : 0] a0;
input wire [31 : 0] a1;
input wire [31 : 0] a2;
input wire [31 : 0] a3;
input wire [31 : 0] a4;
input wire [31 : 0] a5;
input wire [31 : 0] a6;
input wire [31 : 0] a7;
input wire [31 : 0] s2;
input wire [31 : 0] s3;
input wire [31 : 0] s4;
input wire [31 : 0] s5;
input wire [31 : 0] s6;
input wire [31 : 0] s7;
input wire [31 : 0] s8;
input wire [31 : 0] s9;
input wire [31 : 0] s10;
input wire [31 : 0] s11;
input wire [31 : 0] t3;
input wire [31 : 0] t4;
input wire [31 : 0] t5;
input wire [31 : 0] t6;
output wire hs;
output wire vs;
output wire [3 : 0] vga_r;
output wire [3 : 0] vga_g;
output wire [3 : 0] vga_b;

  VGA inst (
    .clk_25m(clk_25m),
    .clk_100m(clk_100m),
    .rst(rst),
    .pc(pc),
    .inst(inst),
    .alu_res(alu_res),
    .mem_wen(mem_wen),
    .dmem_o_data(dmem_o_data),
    .dmem_i_data(dmem_i_data),
    .dmem_addr(dmem_addr),
    .x0(x0),
    .ra(ra),
    .sp(sp),
    .gp(gp),
    .tp(tp),
    .t0(t0),
    .t1(t1),
    .t2(t2),
    .s0(s0),
    .s1(s1),
    .a0(a0),
    .a1(a1),
    .a2(a2),
    .a3(a3),
    .a4(a4),
    .a5(a5),
    .a6(a6),
    .a7(a7),
    .s2(s2),
    .s3(s3),
    .s4(s4),
    .s5(s5),
    .s6(s6),
    .s7(s7),
    .s8(s8),
    .s9(s9),
    .s10(s10),
    .s11(s11),
    .t3(t3),
    .t4(t4),
    .t5(t5),
    .t6(t6),
    .hs(hs),
    .vs(vs),
    .vga_r(vga_r),
    .vga_g(vga_g),
    .vga_b(vga_b)
  );
endmodule
