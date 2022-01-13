//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Fri Jun 25 15:12:24 2021
//Host        : LAPTOP-VIEPELG3 running 64-bit major release  (build 9200)
//Command     : generate_target CSSTE.bd
//Design      : CSSTE
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

/* Data_out[31:0]
Data_in[31:0]
sw[7:5]]
.
.
. */
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

  wire [3:0]BTN_y_1;
  wire [31:0]Multi_8CH32_0_Disp_num;
  wire [7:0]Multi_8CH32_0_LE_out;
  wire [7:0]Multi_8CH32_0_point_out;
  wire [9:0]PC11_2_Dout;
  wire [29:0]PC31_2_Dout;
  wire [31:0]Pipeline_CPU_0_Addr_out;
  wire [31:0]Pipeline_CPU_0_Data_out;
  wire [31:0]Pipeline_CPU_0_Data_out_WB;
  wire Pipeline_CPU_0_MemRW_EX;
  wire Pipeline_CPU_0_MemRW_Mem;
  wire [31:0]Pipeline_CPU_0_PC_out_EX;
  wire [31:0]Pipeline_CPU_0_PC_out_ID;
  wire [31:0]Pipeline_CPU_0_PC_out_IF;
  wire [31:0]Pipeline_CPU_0_inst_ID;
  wire [31:0]RAM_B_0_douta;
  wire RSTN_1;
  wire [15:0]SW_1;
  wire U10_counter0_OUT;
  wire U10_counter1_OUT;
  wire U10_counter2_OUT;
  wire [31:0]U10_counter_out;
  wire [31:0]U2_spo;
  wire [31:0]U4_Cpu_data4bus;
  wire [31:0]U4_Cpu_data4bus1;
  wire U4_GPIOe0000000_we;
  wire U4_GPIOf0000000_we;
  wire [31:0]U4_Peripheral_in;
  wire U4_counter_we;
  wire U4_data_ram_we;
  wire [9:0]U4_ram_addr;
  wire U6_SEG_PEN;
  wire U6_seg_clk;
  wire U6_seg_clrn;
  wire U6_seg_sout;
  wire U7_LED_PEN;
  wire [15:0]U7_LED_out;
  wire [1:0]U7_counter_set;
  wire U7_led_clk;
  wire U7_led_clrn;
  wire U7_led_sout;
  wire U8_Clk_CPU;
  wire [31:0]U8_clkdiv;
  wire [3:0]U9_BTN_OK;
  wire [15:0]U9_SW_OK;
  wire U9_rst;
  wire VGA_0_hs;
  wire [3:0]VGA_0_vga_b;
  wire [3:0]VGA_0_vga_g;
  wire [3:0]VGA_0_vga_r;
  wire VGA_0_vs;
  wire [1:0]b2_0_dout;
  wire clk_100mhz_1;
  wire [0:0]div11_Dout;
  wire [0:0]div1_Dout;
  wire [0:0]div20_Dout;
  wire [0:0]div25_Dout;
  wire [63:0]div31_31_dout;
  wire [0:0]div6_Dout;
  wire [0:0]div9_Dout;
  wire [0:0]sw0_Dout;
  wire [0:0]sw2_Dout;
  wire [2:0]sw7_5_Dout;
  wire [0:0]sw8_Dout;
  wire [0:0]sw9_Dout1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [31:0]xlconcat_1_dout;
  wire [63:0]xlconstant_0_dout;

  assign BTN_y_1 = BTN_y[3:0];
  assign Blue[3:0] = VGA_0_vga_b;
  assign Green[3:0] = VGA_0_vga_g;
  assign HSYNC = VGA_0_hs;
  assign LED_PEN = U7_LED_PEN;
  assign RSTN_1 = RSTN;
  assign Red[3:0] = VGA_0_vga_r;
  assign SEG_PEN = U6_SEG_PEN;
  assign SW_1 = SW[15:0];
  assign VSYNC = VGA_0_vs;
  assign clk_100mhz_1 = clk_100mhz;
  assign led_clk = U7_led_clk;
  assign led_clrn = U7_led_clrn;
  assign led_sout = U7_led_sout;
  assign seg_clk = U6_seg_clk;
  assign seg_clrn = U6_seg_clrn;
  assign seg_sout = U6_seg_sout;
  CSSTE_xlslice_0_3 PC11_2
       (.Din(Pipeline_CPU_0_PC_out_IF),
        .Dout(PC11_2_Dout));
  CSSTE_xlslice_0_8 PC31_2
       (.Din(Pipeline_CPU_0_PC_out_IF),
        .Dout(PC31_2_Dout));
  CSSTE_Pipeline_CPU_0_0 Pipeline_CPU_0
       (.Addr_out(Pipeline_CPU_0_Addr_out),
        .Data_in(U4_Cpu_data4bus1),
        .Data_out(Pipeline_CPU_0_Data_out),
        .Data_out_WB(Pipeline_CPU_0_Data_out_WB),
        .MemRW_EX(Pipeline_CPU_0_MemRW_EX),
        .MemRW_Mem(Pipeline_CPU_0_MemRW_Mem),
        .PC_out_EX(Pipeline_CPU_0_PC_out_EX),
        .PC_out_ID(Pipeline_CPU_0_PC_out_ID),
        .PC_out_IF(Pipeline_CPU_0_PC_out_IF),
        .clk(U8_Clk_CPU),
        .inst_ID(Pipeline_CPU_0_inst_ID),
        .inst_IF(U2_spo),
        .rst(U9_rst));
  CSSTE_Counter_x_0_0 U10
       (.clk(util_vector_logic_0_Res),
        .clk0(div6_Dout),
        .clk1(div9_Dout),
        .clk2(div11_Dout),
        .counter0_OUT(U10_counter0_OUT),
        .counter1_OUT(U10_counter1_OUT),
        .counter2_OUT(U10_counter2_OUT),
        .counter_ch(U7_counter_set),
        .counter_out(U10_counter_out),
        .counter_val(U4_Peripheral_in),
        .counter_we(U4_counter_we),
        .rst(U9_rst));
  CSSTE_VGA_0_0 U11
       (.Addr_out(Pipeline_CPU_0_Addr_out),
        .Data_out(Pipeline_CPU_0_Data_out),
        .Data_out_WB(Pipeline_CPU_0_Data_out_WB),
        .MemRW_Ex(Pipeline_CPU_0_MemRW_EX),
        .MemRW_Mem(Pipeline_CPU_0_MemRW_Mem),
        .PC_Ex(Pipeline_CPU_0_PC_out_EX),
        .PC_ID(Pipeline_CPU_0_PC_out_ID),
        .PC_IF(Pipeline_CPU_0_PC_out_IF),
        .clk_100m(clk_100mhz_1),
        .clk_25m(div1_Dout),
        .hs(VGA_0_hs),
        .inst_ID(Pipeline_CPU_0_inst_ID),
        .inst_IF(U2_spo),
        .rst(U9_rst),
        .vga_b(VGA_0_vga_b),
        .vga_g(VGA_0_vga_g),
        .vga_r(VGA_0_vga_r),
        .vs(VGA_0_vs));
  CSSTE_dist_mem_gen_0_0 U2
       (.a(PC11_2_Dout),
        .spo(U2_spo));
  CSSTE_MIO_BUS_0_0 U4
       (.BTN(U9_BTN_OK),
        .Cpu_data2bus(Pipeline_CPU_0_Data_out),
        .Cpu_data4bus(U4_Cpu_data4bus1),
        .GPIOe0000000_we(U4_GPIOe0000000_we),
        .GPIOf0000000_we(U4_GPIOf0000000_we),
        .Peripheral_in(U4_Peripheral_in),
        .SW(U9_SW_OK),
        .addr_bus(Pipeline_CPU_0_Addr_out),
        .clk(clk_100mhz_1),
        .counter0_out(U10_counter0_OUT),
        .counter1_out(U10_counter1_OUT),
        .counter2_out(U10_counter2_OUT),
        .counter_out(U10_counter_out),
        .counter_we(U4_counter_we),
        .data_ram_we(U4_data_ram_we),
        .led_out(U7_LED_out),
        .mem_w(Pipeline_CPU_0_MemRW_Mem),
        .ram_addr(U4_ram_addr),
        .ram_data_in(U4_Cpu_data4bus),
        .ram_data_out(RAM_B_0_douta),
        .rst(U9_rst));
  CSSTE_Multi_8CH32_0_0 U5
       (.Data0(U4_Peripheral_in),
        .Disp_num(Multi_8CH32_0_Disp_num),
        .EN(U4_GPIOe0000000_we),
        .LES(xlconstant_0_dout),
        .LE_out(Multi_8CH32_0_LE_out),
        .Test(sw7_5_Dout),
        .clk(util_vector_logic_0_Res),
        .data1(xlconcat_1_dout),
        .data2(U2_spo),
        .data3(U10_counter_out),
        .data4(Pipeline_CPU_0_Addr_out),
        .data5(Pipeline_CPU_0_Data_out),
        .data6(U4_Cpu_data4bus1),
        .data7(Pipeline_CPU_0_PC_out_IF),
        .point_in(div31_31_dout),
        .point_out(Multi_8CH32_0_point_out),
        .rst(U9_rst));
  CSSTE_SSeg7_Dev_0_0 U6
       (.Hexs(Multi_8CH32_0_Disp_num),
        .LES(Multi_8CH32_0_LE_out),
        .SEG_PEN(U6_SEG_PEN),
        .SW0(sw0_Dout),
        .Start(div20_Dout),
        .clk(clk_100mhz_1),
        .flash(div25_Dout),
        .point(Multi_8CH32_0_point_out),
        .rst(U9_rst),
        .seg_clk(U6_seg_clk),
        .seg_clrn(U6_seg_clrn),
        .seg_sout(U6_seg_sout));
  CSSTE_SPIO_0_0 U7
       (.EN(U4_GPIOf0000000_we),
        .LED_PEN(U7_LED_PEN),
        .LED_out(U7_LED_out),
        .P_Data(U4_Peripheral_in),
        .Start(div20_Dout),
        .clk(util_vector_logic_0_Res),
        .counter_set(U7_counter_set),
        .led_clk(U7_led_clk),
        .led_clrn(U7_led_clrn),
        .led_sout(U7_led_sout),
        .rst(U9_rst));
  CSSTE_clk_div_0_0 U8
       (.Clk_CPU(U8_Clk_CPU),
        .STEP(sw9_Dout1),
        .SW2(sw2_Dout),
        .SW8(sw8_Dout),
        .clk(clk_100mhz_1),
        .clkdiv(U8_clkdiv),
        .rst(U9_rst));
  CSSTE_SAnti_jitter_0_0 U9
       (.BTN_OK(U9_BTN_OK),
        .Key_y(BTN_y_1),
        .RSTN(RSTN_1),
        .SW(SW_1),
        .SW_OK(U9_SW_OK),
        .clk(clk_100mhz_1),
        .readn(1'b0),
        .rst(U9_rst));
  CSSTE_xlconstant_0_1 b2_0
       (.dout(b2_0_dout));
  CSSTE_xlconstant_0_0 b64_0
       (.dout(xlconstant_0_dout));
  CSSTE_dist_mem_gen_0_1 dist_mem_gen_0
       (.a(U4_ram_addr),
        .clk(util_vector_logic_1_Res),
        .d(U4_Cpu_data4bus),
        .spo(RAM_B_0_douta),
        .we(U4_data_ram_we));
  CSSTE_div20_0 div1
       (.Din(U8_clkdiv),
        .Dout(div1_Dout));
  CSSTE_xlslice_0_6 div11
       (.Din(U8_clkdiv),
        .Dout(div11_Dout));
  CSSTE_xlslice_0_9 div20
       (.Din(U8_clkdiv),
        .Dout(div20_Dout));
  CSSTE_div20_1 div25
       (.Din(U8_clkdiv),
        .Dout(div25_Dout));
  CSSTE_xlconcat_0_0 div31_31
       (.In0(U8_clkdiv),
        .In1(U8_clkdiv),
        .dout(div31_31_dout));
  CSSTE_xlslice_0_4 div6
       (.Din(U8_clkdiv),
        .Dout(div6_Dout));
  CSSTE_xlslice_0_5 div9
       (.Din(U8_clkdiv),
        .Dout(div9_Dout));
  CSSTE_sw7_5_0 sw0
       (.Din(U9_SW_OK),
        .Dout(sw0_Dout));
  CSSTE_xlslice_0_1 sw2
       (.Din(U9_SW_OK),
        .Dout(sw2_Dout));
  CSSTE_xlslice_0_7 sw7_5
       (.Din(U9_SW_OK),
        .Dout(sw7_5_Dout));
  CSSTE_xlslice_0_2 sw8
       (.Din(U9_SW_OK),
        .Dout(sw8_Dout));
  CSSTE_sw8_1 sw9
       (.Din(U9_SW_OK),
        .Dout(sw9_Dout1));
  CSSTE_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(U8_Clk_CPU),
        .Res(util_vector_logic_0_Res));
  CSSTE_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(clk_100mhz_1),
        .Res(util_vector_logic_1_Res));
  CSSTE_xlconcat_0_1 xlconcat_1
       (.In0(PC31_2_Dout),
        .In1(b2_0_dout),
        .dout(xlconcat_1_dout));
endmodule
