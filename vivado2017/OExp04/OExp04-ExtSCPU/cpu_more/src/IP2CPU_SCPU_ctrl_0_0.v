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


// IP VLNV: xilinx.com:user:SCPU_ctrl:1.0
// IP Revision: 2

(* X_CORE_INFO = "SCPU_ctrl,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "IP2CPU_SCPU_ctrl_0_0,SCPU_ctrl,{}" *)
(* CORE_GENERATION_INFO = "IP2CPU_SCPU_ctrl_0_0,SCPU_ctrl,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=SCPU_ctrl,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module IP2CPU_SCPU_ctrl_0_0 (
  OPcode,
  Fun3,
  Fun7,
  MIO_ready,
  ImmSel,
  ALUSrc_B,
  MemtoReg,
  Jump,
  Branch,
  BranchN,
  RegWrite,
  MemRW,
  ALU_Control,
  CPU_MIO,
  ALUop
);

input wire [4 : 0] OPcode;
input wire [2 : 0] Fun3;
input wire Fun7;
input wire MIO_ready;
output wire [2 : 0] ImmSel;
output wire ALUSrc_B;
output wire [1 : 0] MemtoReg;
output wire [1 : 0] Jump;
output wire Branch;
output wire BranchN;
output wire RegWrite;
output wire MemRW;
output wire [3 : 0] ALU_Control;
output wire CPU_MIO;
output wire [1 : 0] ALUop;

  SCPU_ctrl inst (
    .OPcode(OPcode),
    .Fun3(Fun3),
    .Fun7(Fun7),
    .MIO_ready(MIO_ready),
    .ImmSel(ImmSel),
    .ALUSrc_B(ALUSrc_B),
    .MemtoReg(MemtoReg),
    .Jump(Jump),
    .Branch(Branch),
    .BranchN(BranchN),
    .RegWrite(RegWrite),
    .MemRW(MemRW),
    .ALU_Control(ALU_Control),
    .CPU_MIO(CPU_MIO),
    .ALUop(ALUop)
  );
endmodule
