//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Apr  7 16:41:12 2021
//Host        : LAPTOP-VIEPELG3 running 64-bit major release  (build 9200)
//Command     : generate_target IP2CPU.bd
//Design      : IP2CPU
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "IP2CPU,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=IP2CPU,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "IP2CPU.hwdef" *) 
module IP2CPU
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_RESET rst, CLK_DOMAIN IP2CPU_clk_0, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input [31:0]inst_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, POLARITY ACTIVE_HIGH" *) input rst;

  wire Controller_ALUSrc_B;
  wire [2:0]Controller_ALU_Control;
  wire Controller_Branch;
  wire Controller_CPU_MIO;
  wire [1:0]Controller_ImmSel;
  wire Controller_Jump;
  wire Controller_MemRW;
  wire [1:0]Controller_MemtoReg;
  wire Controller_RegWrite;
  wire [31:0]DataPath_ALU_out;
  wire [31:0]DataPath_Data_out;
  wire [31:0]DataPath_PC_out;
  wire [31:0]Data_in_0_1;
  wire MIO_ready_0_1;
  wire clk_0_1;
  wire [2:0]inst14_12_Dout;
  wire [0:0]inst30_Dout;
  wire [4:0]inst6_2_Dout;
  wire [31:0]inst_in;
  wire rst_0_1;

  assign ALU_out[31:0] = DataPath_ALU_out;
  assign CPU_MIO = Controller_CPU_MIO;
  assign Data_in_0_1 = Data_in[31:0];
  assign Data_out[31:0] = DataPath_Data_out;
  assign MIO_ready_0_1 = MIO_ready;
  assign MemRW = Controller_MemRW;
  assign PC_out[31:0] = DataPath_PC_out;
  assign clk_0_1 = clk;
  assign rst_0_1 = rst;
  IP2CPU_SCPU_ctrl_0_0 Controller
       (.ALUSrc_B(Controller_ALUSrc_B),
        .ALU_Control(Controller_ALU_Control),
        .Branch(Controller_Branch),
        .CPU_MIO(Controller_CPU_MIO),
        .Fun3(inst14_12_Dout),
        .Fun7(inst30_Dout),
        .ImmSel(Controller_ImmSel),
        .Jump(Controller_Jump),
        .MIO_ready(MIO_ready_0_1),
        .MemRW(Controller_MemRW),
        .MemtoReg(Controller_MemtoReg),
        .OPcode(inst6_2_Dout),
        .RegWrite(Controller_RegWrite));
  IP2CPU_DataPath_0_0 DataPath
       (.ALUSrc_B(Controller_ALUSrc_B),
        .ALU_Control(Controller_ALU_Control),
        .ALU_out(DataPath_ALU_out),
        .Branch(Controller_Branch),
        .Data_in(Data_in_0_1),
        .Data_out(DataPath_Data_out),
        .ImmSel(Controller_ImmSel),
        .Jump(Controller_Jump),
        .MemtoReg(Controller_MemtoReg),
        .PC_out(DataPath_PC_out),
        .RegWrite(Controller_RegWrite),
        .clk(clk_0_1),
        .inst_field(inst_in),
        .rst(rst_0_1));
  IP2CPU_xlslice_0_1 inst14_12
       (.Din(inst_in),
        .Dout(inst14_12_Dout));
  IP2CPU_xlslice_1_0 inst30
       (.Din(inst_in),
        .Dout(inst30_Dout));
  IP2CPU_xlslice_0_0 inst6_2
       (.Din(inst_in),
        .Dout(inst6_2_Dout));
endmodule
