//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Fri Jun 25 14:36:13 2021
//Host        : LAPTOP-VIEPELG3 running 64-bit major release  (build 9200)
//Command     : generate_target CSSTE.bd
//Design      : CSSTE
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "CSSTE,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=CSSTE,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=30,numReposBlks=30,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}" *) (* HW_HANDOFF = "CSSTE.hwdef" *) 
module CSSTE
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RSTN, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input RSTN;
  output [3:0]Red;
  output SEG_PEN;
  input [15:0]SW;
  output VSYNC;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_RESET RSTN, CLK_DOMAIN CSSTE_clk_100mhz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_100mhz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LED_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LED_CLK, CLK_DOMAIN CSSTE_SPIO_0_0_led_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output led_clk;
  output led_clrn;
  output led_sout;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SEG_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SEG_CLK, CLK_DOMAIN CSSTE_SSeg7_Dev_0_0_seg_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) output seg_clk;
  output seg_clrn;
  output seg_sout;

  wire [1:0]B2_0_dout;
  wire [63:0]B64_0_dout;
  wire Counter_x_0_counter0_OUT;
  wire Counter_x_0_counter1_OUT;
  wire Counter_x_0_counter2_OUT;
  wire [0:0]DIV11_Dout;
  wire [0:0]DIV1_Dout;
  wire [0:0]DIV20_Dout;
  wire [0:0]DIV25_Dout;
  wire [63:0]DIV31_31_dout;
  wire [0:0]DIV6_Dout;
  wire [0:0]DIV9_Dout;
  wire [31:0]DIV_31_31;
  wire [3:0]Key_y_0_1;
  wire [31:0]MIO_BUS_0_Cpu_data4bus;
  wire MIO_BUS_0_GPIOe0000000_we;
  wire MIO_BUS_0_GPIOf0000000_we;
  wire [31:0]MIO_BUS_0_Peripheral_in;
  wire MIO_BUS_0_counter_we;
  wire MIO_BUS_0_data_ram_we;
  wire [9:0]MIO_BUS_0_ram_addr;
  wire [31:0]MIO_BUS_0_ram_data_in;
  wire [31:0]Multi_8CH32_0_Disp_num;
  wire [7:0]Multi_8CH32_0_LE_out;
  wire [7:0]Multi_8CH32_0_point_out;
  wire [31:0]Net3;
  wire [9:0]PC11_2_Dout;
  wire [29:0]PC31_2_Dout;
  wire [31:0]Pipeline_CPU_0_Addr_out;
  wire [31:0]Pipeline_CPU_0_Data_out;
  wire [31:0]Pipeline_CPU_0_Data_out_WB;
  wire [31:0]Pipeline_CPU_0_Imm_out_ID;
  wire Pipeline_CPU_0_MemRW_EX;
  wire Pipeline_CPU_0_MemRW_Mem;
  wire [31:0]Pipeline_CPU_0_PC_out_EX;
  wire [31:0]Pipeline_CPU_0_PC_out_EXMem;
  wire [31:0]Pipeline_CPU_0_PC_out_ID;
  wire [31:0]Pipeline_CPU_0_PC_out_IF;
  wire [31:0]Pipeline_CPU_0_PC_out_MemWB;
  wire [4:0]Pipeline_CPU_0_Rd_addr_out_ID;
  wire [4:0]Pipeline_CPU_0_Rs1_addr_ID;
  wire [31:0]Pipeline_CPU_0_Rs1_out_ID;
  wire [4:0]Pipeline_CPU_0_Rs2_addr_ID;
  wire [31:0]Pipeline_CPU_0_Rs2_out_ID;
  wire [31:0]Pipeline_CPU_0_a0;
  wire [31:0]Pipeline_CPU_0_a1;
  wire [31:0]Pipeline_CPU_0_a2;
  wire [31:0]Pipeline_CPU_0_a3;
  wire [31:0]Pipeline_CPU_0_a4;
  wire [31:0]Pipeline_CPU_0_a5;
  wire [31:0]Pipeline_CPU_0_a6;
  wire [31:0]Pipeline_CPU_0_a7;
  wire [31:0]Pipeline_CPU_0_gp;
  wire [31:0]Pipeline_CPU_0_inst_ID;
  wire [31:0]Pipeline_CPU_0_inst_out_EXMem;
  wire [31:0]Pipeline_CPU_0_inst_out_IDEX;
  wire [31:0]Pipeline_CPU_0_inst_out_MemWB;
  wire [31:0]Pipeline_CPU_0_ra;
  wire [31:0]Pipeline_CPU_0_s0;
  wire [31:0]Pipeline_CPU_0_s1;
  wire [31:0]Pipeline_CPU_0_s10;
  wire [31:0]Pipeline_CPU_0_s11;
  wire [31:0]Pipeline_CPU_0_s2;
  wire [31:0]Pipeline_CPU_0_s3;
  wire [31:0]Pipeline_CPU_0_s4;
  wire [31:0]Pipeline_CPU_0_s5;
  wire [31:0]Pipeline_CPU_0_s6;
  wire [31:0]Pipeline_CPU_0_s7;
  wire [31:0]Pipeline_CPU_0_s8;
  wire [31:0]Pipeline_CPU_0_s9;
  wire [31:0]Pipeline_CPU_0_sp;
  wire [31:0]Pipeline_CPU_0_t0;
  wire [31:0]Pipeline_CPU_0_t1;
  wire [31:0]Pipeline_CPU_0_t2;
  wire [31:0]Pipeline_CPU_0_t3;
  wire [31:0]Pipeline_CPU_0_t4;
  wire [31:0]Pipeline_CPU_0_t5;
  wire [31:0]Pipeline_CPU_0_t6;
  wire [31:0]Pipeline_CPU_0_tp;
  wire Pipeline_CPU_0_valid_IFID;
  wire Pipeline_CPU_0_valid_out_EXMem;
  wire Pipeline_CPU_0_valid_out_IDEX;
  wire Pipeline_CPU_0_valid_out_MemWB;
  wire [31:0]Pipeline_CPU_0_x0;
  wire [31:0]RAM_Data_spo;
  wire RSTN_0_1;
  wire [3:0]SAnti_jitter_0_BTN_OK;
  wire [15:0]SAnti_jitter_0_SW_OK;
  wire SAnti_jitter_0_rst;
  wire SPIO_0_LED_PEN;
  wire [15:0]SPIO_0_LED_out;
  wire [1:0]SPIO_0_counter_set;
  wire SPIO_0_led_clk;
  wire SPIO_0_led_clrn;
  wire SPIO_0_led_sout;
  wire SSeg7_Dev_0_SEG_PEN;
  wire SSeg7_Dev_0_seg_clk;
  wire SSeg7_Dev_0_seg_clrn;
  wire SSeg7_Dev_0_seg_sout;
  wire [0:0]SW0_Dout;
  wire [0:0]SW2_Dout;
  wire [2:0]SW7_5_Dout;
  wire [0:0]SW8_Dout;
  wire [0:0]SW9_Dout;
  wire [15:0]SW_0_1;
  wire VGA_0_hs;
  wire [3:0]VGA_0_vga_b;
  wire [3:0]VGA_0_vga_g;
  wire [3:0]VGA_0_vga_r;
  wire VGA_0_vs;
  wire clk_0_1;
  wire clk_div_0_Clk_CPU;
  wire [31:0]dist_mem_gen_0_spo;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [31:0]xlconcat_0_dout;

  assign Blue[3:0] = VGA_0_vga_b;
  assign Green[3:0] = VGA_0_vga_g;
  assign HSYNC = VGA_0_hs;
  assign Key_y_0_1 = BTN_y[3:0];
  assign LED_PEN = SPIO_0_LED_PEN;
  assign RSTN_0_1 = RSTN;
  assign Red[3:0] = VGA_0_vga_r;
  assign SEG_PEN = SSeg7_Dev_0_SEG_PEN;
  assign SW_0_1 = SW[15:0];
  assign VSYNC = VGA_0_vs;
  assign clk_0_1 = clk_100mhz;
  assign led_clk = SPIO_0_led_clk;
  assign led_clrn = SPIO_0_led_clrn;
  assign led_sout = SPIO_0_led_sout;
  assign seg_clk = SSeg7_Dev_0_seg_clk;
  assign seg_clrn = SSeg7_Dev_0_seg_clrn;
  assign seg_sout = SSeg7_Dev_0_seg_sout;
  CSSTE_xlconstant_0_1 B2_0
       (.dout(B2_0_dout));
  CSSTE_xlconstant_0_0 B64_0
       (.dout(B64_0_dout));
  CSSTE_Counter_x_0_0 Counter_x_0
       (.clk(util_vector_logic_0_Res),
        .clk0(DIV6_Dout),
        .clk1(DIV9_Dout),
        .clk2(DIV11_Dout),
        .counter0_OUT(Counter_x_0_counter0_OUT),
        .counter1_OUT(Counter_x_0_counter1_OUT),
        .counter2_OUT(Counter_x_0_counter2_OUT),
        .counter_ch(SPIO_0_counter_set),
        .counter_out(Net3),
        .counter_val(MIO_BUS_0_Peripheral_in),
        .counter_we(MIO_BUS_0_counter_we),
        .rst(SAnti_jitter_0_rst));
  CSSTE_xlslice_0_10 DIV1
       (.Din(DIV_31_31),
        .Dout(DIV1_Dout));
  CSSTE_xlslice_0_7 DIV11
       (.Din(DIV_31_31),
        .Dout(DIV11_Dout));
  CSSTE_xlslice_0_6 DIV20
       (.Din(DIV_31_31),
        .Dout(DIV20_Dout));
  CSSTE_xlslice_0_9 DIV25
       (.Din(DIV_31_31),
        .Dout(DIV25_Dout));
  CSSTE_xlconcat_1_0 DIV31_31
       (.In0(DIV_31_31),
        .In1(DIV_31_31),
        .dout(DIV31_31_dout));
  CSSTE_xlslice_0_5 DIV6
       (.Din(DIV_31_31),
        .Dout(DIV6_Dout));
  CSSTE_xlslice_0_8 DIV9
       (.Din(DIV_31_31),
        .Dout(DIV9_Dout));
  CSSTE_MIO_BUS_0_0 MIO_BUS_0
       (.BTN(SAnti_jitter_0_BTN_OK),
        .Cpu_data2bus(Pipeline_CPU_0_Data_out),
        .Cpu_data4bus(MIO_BUS_0_Cpu_data4bus),
        .GPIOe0000000_we(MIO_BUS_0_GPIOe0000000_we),
        .GPIOf0000000_we(MIO_BUS_0_GPIOf0000000_we),
        .Peripheral_in(MIO_BUS_0_Peripheral_in),
        .SW(SAnti_jitter_0_SW_OK),
        .addr_bus(Pipeline_CPU_0_Addr_out),
        .clk(clk_0_1),
        .counter0_out(Counter_x_0_counter0_OUT),
        .counter1_out(Counter_x_0_counter1_OUT),
        .counter2_out(Counter_x_0_counter2_OUT),
        .counter_out(Net3),
        .counter_we(MIO_BUS_0_counter_we),
        .data_ram_we(MIO_BUS_0_data_ram_we),
        .led_out(SPIO_0_LED_out),
        .mem_w(Pipeline_CPU_0_MemRW_Mem),
        .ram_addr(MIO_BUS_0_ram_addr),
        .ram_data_in(MIO_BUS_0_ram_data_in),
        .ram_data_out(RAM_Data_spo),
        .rst(SAnti_jitter_0_rst));
  CSSTE_Multi_8CH32_0_0 Multi_8CH32_0
       (.Data0(MIO_BUS_0_Peripheral_in),
        .Disp_num(Multi_8CH32_0_Disp_num),
        .EN(MIO_BUS_0_GPIOe0000000_we),
        .LES(B64_0_dout),
        .LE_out(Multi_8CH32_0_LE_out),
        .Test(SW7_5_Dout),
        .clk(util_vector_logic_0_Res),
        .data1(xlconcat_0_dout),
        .data2(dist_mem_gen_0_spo),
        .data3(Net3),
        .data4(Pipeline_CPU_0_Addr_out),
        .data5(Pipeline_CPU_0_Data_out),
        .data6(MIO_BUS_0_Cpu_data4bus),
        .data7(Pipeline_CPU_0_PC_out_IF),
        .point_in(DIV31_31_dout),
        .point_out(Multi_8CH32_0_point_out),
        .rst(SAnti_jitter_0_rst));
  CSSTE_xlslice_0_11 PC11_2
       (.Din(Pipeline_CPU_0_PC_out_IF),
        .Dout(PC11_2_Dout));
  CSSTE_xlslice_0_12 PC31_2
       (.Din(Pipeline_CPU_0_PC_out_IF),
        .Dout(PC31_2_Dout));
  CSSTE_Pipeline_CPU_0_0 Pipeline_CPU_0
       (.Addr_out(Pipeline_CPU_0_Addr_out),
        .Data_in(MIO_BUS_0_Cpu_data4bus),
        .Data_out(Pipeline_CPU_0_Data_out),
        .Data_out_WB(Pipeline_CPU_0_Data_out_WB),
        .Imm_out_ID(Pipeline_CPU_0_Imm_out_ID),
        .MemRW_EX(Pipeline_CPU_0_MemRW_EX),
        .MemRW_Mem(Pipeline_CPU_0_MemRW_Mem),
        .PC_out_EX(Pipeline_CPU_0_PC_out_EX),
        .PC_out_EXMem(Pipeline_CPU_0_PC_out_EXMem),
        .PC_out_ID(Pipeline_CPU_0_PC_out_ID),
        .PC_out_IF(Pipeline_CPU_0_PC_out_IF),
        .PC_out_MemWB(Pipeline_CPU_0_PC_out_MemWB),
        .Rd_addr_out_ID(Pipeline_CPU_0_Rd_addr_out_ID),
        .Rs1_addr_ID(Pipeline_CPU_0_Rs1_addr_ID),
        .Rs1_out_ID(Pipeline_CPU_0_Rs1_out_ID),
        .Rs2_addr_ID(Pipeline_CPU_0_Rs2_addr_ID),
        .Rs2_out_ID(Pipeline_CPU_0_Rs2_out_ID),
        .a0(Pipeline_CPU_0_a0),
        .a1(Pipeline_CPU_0_a1),
        .a2(Pipeline_CPU_0_a2),
        .a3(Pipeline_CPU_0_a3),
        .a4(Pipeline_CPU_0_a4),
        .a5(Pipeline_CPU_0_a5),
        .a6(Pipeline_CPU_0_a6),
        .a7(Pipeline_CPU_0_a7),
        .clk(clk_div_0_Clk_CPU),
        .gp(Pipeline_CPU_0_gp),
        .inst_ID(Pipeline_CPU_0_inst_ID),
        .inst_IF(dist_mem_gen_0_spo),
        .inst_out_EXMem(Pipeline_CPU_0_inst_out_EXMem),
        .inst_out_IDEX(Pipeline_CPU_0_inst_out_IDEX),
        .inst_out_MemWB(Pipeline_CPU_0_inst_out_MemWB),
        .ra(Pipeline_CPU_0_ra),
        .rst(SAnti_jitter_0_rst),
        .s0(Pipeline_CPU_0_s0),
        .s1(Pipeline_CPU_0_s1),
        .s10(Pipeline_CPU_0_s10),
        .s11(Pipeline_CPU_0_s11),
        .s2(Pipeline_CPU_0_s2),
        .s3(Pipeline_CPU_0_s3),
        .s4(Pipeline_CPU_0_s4),
        .s5(Pipeline_CPU_0_s5),
        .s6(Pipeline_CPU_0_s6),
        .s7(Pipeline_CPU_0_s7),
        .s8(Pipeline_CPU_0_s8),
        .s9(Pipeline_CPU_0_s9),
        .sp(Pipeline_CPU_0_sp),
        .t0(Pipeline_CPU_0_t0),
        .t1(Pipeline_CPU_0_t1),
        .t2(Pipeline_CPU_0_t2),
        .t3(Pipeline_CPU_0_t3),
        .t4(Pipeline_CPU_0_t4),
        .t5(Pipeline_CPU_0_t5),
        .t6(Pipeline_CPU_0_t6),
        .tp(Pipeline_CPU_0_tp),
        .valid_IFID(Pipeline_CPU_0_valid_IFID),
        .valid_out_EXMem(Pipeline_CPU_0_valid_out_EXMem),
        .valid_out_IDEX(Pipeline_CPU_0_valid_out_IDEX),
        .valid_out_MemWB(Pipeline_CPU_0_valid_out_MemWB),
        .x0(Pipeline_CPU_0_x0));
  CSSTE_dist_mem_gen_0_1 RAM_Data
       (.a(MIO_BUS_0_ram_addr),
        .clk(util_vector_logic_1_Res),
        .d(MIO_BUS_0_ram_data_in),
        .spo(RAM_Data_spo),
        .we(MIO_BUS_0_data_ram_we));
  CSSTE_dist_mem_gen_0_0 ROM_B
       (.a(PC11_2_Dout),
        .spo(dist_mem_gen_0_spo));
  CSSTE_SAnti_jitter_0_0 SAnti_jitter_0
       (.BTN_OK(SAnti_jitter_0_BTN_OK),
        .Key_y(Key_y_0_1),
        .RSTN(RSTN_0_1),
        .SW(SW_0_1),
        .SW_OK(SAnti_jitter_0_SW_OK),
        .clk(clk_0_1),
        .readn(1'b0),
        .rst(SAnti_jitter_0_rst));
  CSSTE_SPIO_0_0 SPIO_0
       (.EN(MIO_BUS_0_GPIOf0000000_we),
        .LED_PEN(SPIO_0_LED_PEN),
        .LED_out(SPIO_0_LED_out),
        .P_Data(MIO_BUS_0_Peripheral_in),
        .Start(DIV20_Dout),
        .clk(util_vector_logic_0_Res),
        .counter_set(SPIO_0_counter_set),
        .led_clk(SPIO_0_led_clk),
        .led_clrn(SPIO_0_led_clrn),
        .led_sout(SPIO_0_led_sout),
        .rst(SAnti_jitter_0_rst));
  CSSTE_SSeg7_Dev_0_0 SSeg7_Dev_0
       (.Hexs(Multi_8CH32_0_Disp_num),
        .LES(Multi_8CH32_0_LE_out),
        .SEG_PEN(SSeg7_Dev_0_SEG_PEN),
        .SW0(SW0_Dout),
        .Start(DIV20_Dout),
        .clk(clk_0_1),
        .flash(DIV25_Dout),
        .point(Multi_8CH32_0_point_out),
        .rst(SAnti_jitter_0_rst),
        .seg_clk(SSeg7_Dev_0_seg_clk),
        .seg_clrn(SSeg7_Dev_0_seg_clrn),
        .seg_sout(SSeg7_Dev_0_seg_sout));
  CSSTE_xlslice_0_3 SW0
       (.Din(SAnti_jitter_0_SW_OK),
        .Dout(SW0_Dout));
  CSSTE_xlslice_0_2 SW2
       (.Din(SAnti_jitter_0_SW_OK),
        .Dout(SW2_Dout));
  CSSTE_xlslice_0_0 SW7_5
       (.Din(SAnti_jitter_0_SW_OK),
        .Dout(SW7_5_Dout));
  CSSTE_xlslice_0_1 SW8
       (.Din(SAnti_jitter_0_SW_OK),
        .Dout(SW8_Dout));
  CSSTE_SW8_0 SW9
       (.Din(SAnti_jitter_0_SW_OK),
        .Dout(SW9_Dout));
  CSSTE_VGA_0_0 VGA_0
       (.Addr_out(Pipeline_CPU_0_Addr_out),
        .Data_out(Pipeline_CPU_0_Data_out),
        .Data_out_WB(Pipeline_CPU_0_Data_out_WB),
        .Imm_out_ID(Pipeline_CPU_0_Imm_out_ID),
        .MemRW_Ex(Pipeline_CPU_0_MemRW_EX),
        .MemRW_Mem(Pipeline_CPU_0_MemRW_Mem),
        .PC_Ex(Pipeline_CPU_0_PC_out_EX),
        .PC_ID(Pipeline_CPU_0_PC_out_ID),
        .PC_IF(Pipeline_CPU_0_PC_out_IF),
        .PC_Mem(Pipeline_CPU_0_PC_out_EXMem),
        .PC_WB(Pipeline_CPU_0_PC_out_MemWB),
        .Rd_addr_out_ID(Pipeline_CPU_0_Rd_addr_out_ID),
        .Rs1_addr_out_ID(Pipeline_CPU_0_Rs1_addr_ID),
        .Rs1_out_ID(Pipeline_CPU_0_Rs1_out_ID),
        .Rs2_addr_out_ID(Pipeline_CPU_0_Rs2_addr_ID),
        .Rs2_out_ID(Pipeline_CPU_0_Rs2_out_ID),
        .a0(Pipeline_CPU_0_a0),
        .a1(Pipeline_CPU_0_a1),
        .a2(Pipeline_CPU_0_a2),
        .a3(Pipeline_CPU_0_a3),
        .a4(Pipeline_CPU_0_a4),
        .a5(Pipeline_CPU_0_a5),
        .a6(Pipeline_CPU_0_a6),
        .a7(Pipeline_CPU_0_a7),
        .clk_100m(clk_0_1),
        .clk_25m(DIV1_Dout),
        .gp(Pipeline_CPU_0_gp),
        .hs(VGA_0_hs),
        .inst_EX(Pipeline_CPU_0_inst_out_IDEX),
        .inst_ID(Pipeline_CPU_0_inst_ID),
        .inst_IF(dist_mem_gen_0_spo),
        .inst_Mem(Pipeline_CPU_0_inst_out_EXMem),
        .inst_WB(Pipeline_CPU_0_inst_out_MemWB),
        .ra(Pipeline_CPU_0_ra),
        .rst(SAnti_jitter_0_rst),
        .s0(Pipeline_CPU_0_s0),
        .s1(Pipeline_CPU_0_s1),
        .s10(Pipeline_CPU_0_s10),
        .s11(Pipeline_CPU_0_s11),
        .s2(Pipeline_CPU_0_s2),
        .s3(Pipeline_CPU_0_s3),
        .s4(Pipeline_CPU_0_s4),
        .s5(Pipeline_CPU_0_s5),
        .s6(Pipeline_CPU_0_s6),
        .s7(Pipeline_CPU_0_s7),
        .s8(Pipeline_CPU_0_s8),
        .s9(Pipeline_CPU_0_s9),
        .sp(Pipeline_CPU_0_sp),
        .t0(Pipeline_CPU_0_t0),
        .t1(Pipeline_CPU_0_t1),
        .t2(Pipeline_CPU_0_t2),
        .t3(Pipeline_CPU_0_t3),
        .t4(Pipeline_CPU_0_t4),
        .t5(Pipeline_CPU_0_t5),
        .t6(Pipeline_CPU_0_t6),
        .tp(Pipeline_CPU_0_tp),
        .valid_EX(Pipeline_CPU_0_valid_out_IDEX),
        .valid_ID(Pipeline_CPU_0_valid_IFID),
        .valid_Mem(Pipeline_CPU_0_valid_out_EXMem),
        .valid_WB(Pipeline_CPU_0_valid_out_MemWB),
        .vga_b(VGA_0_vga_b),
        .vga_g(VGA_0_vga_g),
        .vga_r(VGA_0_vga_r),
        .vs(VGA_0_vs),
        .x0(Pipeline_CPU_0_x0));
  CSSTE_clk_div_0_0 clk_div_0
       (.Clk_CPU(clk_div_0_Clk_CPU),
        .STEP(SW9_Dout),
        .SW2(SW2_Dout),
        .SW8(SW8_Dout),
        .clk(clk_0_1),
        .clkdiv(DIV_31_31),
        .rst(SAnti_jitter_0_rst));
  CSSTE_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(clk_div_0_Clk_CPU),
        .Res(util_vector_logic_0_Res));
  CSSTE_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(clk_0_1),
        .Res(util_vector_logic_1_Res));
  CSSTE_xlconcat_0_0 xlconcat_0
       (.In0(PC31_2_Dout),
        .In1(B2_0_dout),
        .dout(xlconcat_0_dout));
endmodule
