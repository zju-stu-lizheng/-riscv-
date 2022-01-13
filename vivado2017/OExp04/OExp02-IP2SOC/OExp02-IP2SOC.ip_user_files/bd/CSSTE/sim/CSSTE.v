//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Thu May 20 14:10:03 2021
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RSTN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RSTN, POLARITY ACTIVE_HIGH" *) input RSTN;
  output [3:0]Red;
  output SEG_PEN;
  input [15:0]SW;
  output VSYNC;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, ASSOCIATED_RESET RSTN, CLK_DOMAIN CSSTE_clk_0, FREQ_HZ 100000000, PHASE 0.000" *) input clk_100mhz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.LED_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.LED_CLK, CLK_DOMAIN CSSTE_SPIO_0_0_led_clk, FREQ_HZ 100000000, PHASE 0.000" *) output led_clk;
  output led_clrn;
  output led_sout;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SEG_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SEG_CLK, CLK_DOMAIN CSSTE_SSeg7_Dev_0_0_seg_clk, FREQ_HZ 100000000, PHASE 0.000" *) output seg_clk;
  output seg_clrn;
  output seg_sout;

  wire [0:0]BTN_OK0_Dout;
  wire Counter_x_0_counter0_OUT;
  wire Counter_x_0_counter1_OUT;
  wire Counter_x_0_counter2_OUT;
  wire [31:0]Counter_x_0_counter_out;
  wire [31:0]IP2CPU_0_a0;
  wire [31:0]IP2CPU_0_a1;
  wire [31:0]IP2CPU_0_a2;
  wire [31:0]IP2CPU_0_a3;
  wire [31:0]IP2CPU_0_a4;
  wire [31:0]IP2CPU_0_a5;
  wire [31:0]IP2CPU_0_a6;
  wire [31:0]IP2CPU_0_a7;
  wire [31:0]IP2CPU_0_gp;
  wire [31:0]IP2CPU_0_ra;
  wire [31:0]IP2CPU_0_s0;
  wire [31:0]IP2CPU_0_s1;
  wire [31:0]IP2CPU_0_s10;
  wire [31:0]IP2CPU_0_s11;
  wire [31:0]IP2CPU_0_s2;
  wire [31:0]IP2CPU_0_s3;
  wire [31:0]IP2CPU_0_s4;
  wire [31:0]IP2CPU_0_s5;
  wire [31:0]IP2CPU_0_s6;
  wire [31:0]IP2CPU_0_s7;
  wire [31:0]IP2CPU_0_s8;
  wire [31:0]IP2CPU_0_s9;
  wire [31:0]IP2CPU_0_sp;
  wire [31:0]IP2CPU_0_t0;
  wire [31:0]IP2CPU_0_t1;
  wire [31:0]IP2CPU_0_t2;
  wire [31:0]IP2CPU_0_t3;
  wire [31:0]IP2CPU_0_t4;
  wire [31:0]IP2CPU_0_t5;
  wire [31:0]IP2CPU_0_t6;
  wire [31:0]IP2CPU_0_tp;
  wire [31:0]IP2CPU_0_x0;
  wire [3:0]Key_y_0_1;
  wire MIO_BUS_0_GPIOe0000000_we;
  wire [31:0]MIO_BUS_0_Peripheral_in;
  wire MIO_BUS_0_counter_we;
  wire [31:0]Net1;
  wire [31:0]Net2;
  wire [29:0]PC31_2_Dout;
  wire RSTN_0_1;
  wire [15:0]SAnti_jitter_0_SW_OK;
  wire [15:0]SW_0_1;
  wire U11_hs;
  wire [3:0]U11_vga_b;
  wire [3:0]U11_vga_g;
  wire [3:0]U11_vga_r;
  wire U11_vs;
  wire [31:0]U1_Addr_out;
  wire [31:0]U1_Data_out;
  wire U1_MemRW;
  wire [31:0]U1_PC_out;
  wire [31:0]U2_spo;
  wire [31:0]U3_douta;
  wire U4_GPIOf0000000_we;
  wire U4_data_ram_we;
  wire [9:0]U4_ram_addr;
  wire [31:0]U5_Disp_num;
  wire [7:0]U5_LE_out;
  wire [7:0]U5_point_out;
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
  wire U9_rst;
  wire [1:0]b2_0_dout;
  wire [63:0]b64_0_dout;
  wire clk_0_1;
  wire [0:0]div11_Dout;
  wire [0:0]div1_Dout;
  wire [0:0]div20_Dout;
  wire [0:0]div25_Dout;
  wire [0:0]div6_Dout;
  wire [0:0]div9_Dout;
  wire [0:0]sw0_Dout;
  wire [0:0]sw2_Dout;
  wire [2:0]sw7_5_Dout;
  wire [0:0]sw8_Dout;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [63:0]xlconcat_0_dout;
  wire [31:0]xlconcat_1_dout;
  wire [9:0]xlslice_0_Dout;

  assign Blue[3:0] = U11_vga_b;
  assign Green[3:0] = U11_vga_g;
  assign HSYNC = U11_hs;
  assign Key_y_0_1 = BTN_y[3:0];
  assign LED_PEN = U7_LED_PEN;
  assign RSTN_0_1 = RSTN;
  assign Red[3:0] = U11_vga_r;
  assign SEG_PEN = U6_SEG_PEN;
  assign SW_0_1 = SW[15:0];
  assign VSYNC = U11_vs;
  assign clk_0_1 = clk_100mhz;
  assign led_clk = U7_led_clk;
  assign led_clrn = U7_led_clrn;
  assign led_sout = U7_led_sout;
  assign seg_clk = U6_seg_clk;
  assign seg_clrn = U6_seg_clrn;
  assign seg_sout = U6_seg_sout;
  CSSTE_IP2CPU_0_0 IP2CPU_0
       (.Addr_out(U1_Addr_out),
        .Data_in(U3_douta),
        .Data_out(U1_Data_out),
        .MIO_ready(1'b0),
        .MemRW(U1_MemRW),
        .PC_out(U1_PC_out),
        .a0(IP2CPU_0_a0),
        .a1(IP2CPU_0_a1),
        .a2(IP2CPU_0_a2),
        .a3(IP2CPU_0_a3),
        .a4(IP2CPU_0_a4),
        .a5(IP2CPU_0_a5),
        .a6(IP2CPU_0_a6),
        .a7(IP2CPU_0_a7),
        .clk(U8_Clk_CPU),
        .gp(IP2CPU_0_gp),
        .inst_in(U2_spo),
        .ra(IP2CPU_0_ra),
        .rst(U9_rst),
        .s0(IP2CPU_0_s0),
        .s1(IP2CPU_0_s1),
        .s10(IP2CPU_0_s10),
        .s11(IP2CPU_0_s11),
        .s2(IP2CPU_0_s2),
        .s3(IP2CPU_0_s3),
        .s4(IP2CPU_0_s4),
        .s5(IP2CPU_0_s5),
        .s6(IP2CPU_0_s6),
        .s7(IP2CPU_0_s7),
        .s8(IP2CPU_0_s8),
        .s9(IP2CPU_0_s9),
        .sp(IP2CPU_0_sp),
        .t0(IP2CPU_0_t0),
        .t1(IP2CPU_0_t1),
        .t2(IP2CPU_0_t2),
        .t3(IP2CPU_0_t3),
        .t4(IP2CPU_0_t4),
        .t5(IP2CPU_0_t5),
        .t6(IP2CPU_0_t6),
        .tp(IP2CPU_0_tp),
        .x0(IP2CPU_0_x0));
  CSSTE_xlslice_0_6 PC11_2
       (.Din(U1_PC_out),
        .Dout(xlslice_0_Dout));
  CSSTE_xlslice_1_2 PC31_2
       (.Din(U1_PC_out),
        .Dout(PC31_2_Dout));
  CSSTE_Counter_x_0_0 U10
       (.clk(util_vector_logic_0_Res),
        .clk0(div6_Dout),
        .clk1(div9_Dout),
        .clk2(div11_Dout),
        .counter0_OUT(Counter_x_0_counter0_OUT),
        .counter1_OUT(Counter_x_0_counter1_OUT),
        .counter2_OUT(Counter_x_0_counter2_OUT),
        .counter_ch(U7_counter_set),
        .counter_out(Counter_x_0_counter_out),
        .counter_val(MIO_BUS_0_Peripheral_in),
        .counter_we(MIO_BUS_0_counter_we),
        .rst(U9_rst));
  CSSTE_VGA_0_0 U11
       (.a0(IP2CPU_0_a0),
        .a1(IP2CPU_0_a1),
        .a2(IP2CPU_0_a2),
        .a3(IP2CPU_0_a3),
        .a4(IP2CPU_0_a4),
        .a5(IP2CPU_0_a5),
        .a6(IP2CPU_0_a6),
        .a7(IP2CPU_0_a7),
        .alu_res(U1_Addr_out),
        .clk_100m(clk_0_1),
        .clk_25m(div1_Dout),
        .dmem_addr(U1_Addr_out),
        .dmem_i_data(Net2),
        .dmem_o_data(U3_douta),
        .gp(IP2CPU_0_gp),
        .hs(U11_hs),
        .inst(U2_spo),
        .mem_wen(U1_MemRW),
        .pc(U1_PC_out),
        .ra(IP2CPU_0_ra),
        .rst(U9_rst),
        .s0(IP2CPU_0_s0),
        .s1(IP2CPU_0_s1),
        .s10(IP2CPU_0_s10),
        .s11(IP2CPU_0_s11),
        .s2(IP2CPU_0_s2),
        .s3(IP2CPU_0_s3),
        .s4(IP2CPU_0_s4),
        .s5(IP2CPU_0_s5),
        .s6(IP2CPU_0_s6),
        .s7(IP2CPU_0_s7),
        .s8(IP2CPU_0_s8),
        .s9(IP2CPU_0_s9),
        .sp(IP2CPU_0_sp),
        .t0(IP2CPU_0_t0),
        .t1(IP2CPU_0_t1),
        .t2(IP2CPU_0_t2),
        .t3(IP2CPU_0_t3),
        .t4(IP2CPU_0_t4),
        .t5(IP2CPU_0_t5),
        .t6(IP2CPU_0_t6),
        .tp(IP2CPU_0_tp),
        .vga_b(U11_vga_b),
        .vga_g(U11_vga_g),
        .vga_r(U11_vga_r),
        .vs(U11_vs),
        .x0(IP2CPU_0_x0));
  CSSTE_dist_mem_gen_0_0 U2
       (.a(xlslice_0_Dout),
        .spo(U2_spo));
  CSSTE_dist_mem_gen_0_1 U3
       (.a(U4_ram_addr),
        .clk(util_vector_logic_1_Res),
        .d(Net2),
        .spo(U3_douta),
        .we(U4_data_ram_we));
  CSSTE_MIO_BUS_0_0 U4
       (.BTN(U9_BTN_OK),
        .Cpu_data2bus(U1_Data_out),
        .Cpu_data4bus(Net1),
        .GPIOe0000000_we(MIO_BUS_0_GPIOe0000000_we),
        .GPIOf0000000_we(U4_GPIOf0000000_we),
        .Peripheral_in(MIO_BUS_0_Peripheral_in),
        .SW(SAnti_jitter_0_SW_OK),
        .addr_bus(U1_Addr_out),
        .clk(clk_0_1),
        .counter0_out(Counter_x_0_counter0_OUT),
        .counter1_out(Counter_x_0_counter1_OUT),
        .counter2_out(Counter_x_0_counter2_OUT),
        .counter_out(Counter_x_0_counter_out),
        .counter_we(MIO_BUS_0_counter_we),
        .data_ram_we(U4_data_ram_we),
        .led_out(U7_LED_out),
        .mem_w(U1_MemRW),
        .ram_addr(U4_ram_addr),
        .ram_data_in(Net2),
        .ram_data_out(U3_douta),
        .rst(U9_rst));
  CSSTE_Multi_8CH32_0_0 U5
       (.Data0(MIO_BUS_0_Peripheral_in),
        .Disp_num(U5_Disp_num),
        .EN(MIO_BUS_0_GPIOe0000000_we),
        .LES(b64_0_dout),
        .LE_out(U5_LE_out),
        .Test(sw7_5_Dout),
        .clk(util_vector_logic_0_Res),
        .data1(xlconcat_1_dout),
        .data2(U2_spo),
        .data3(Counter_x_0_counter_out),
        .data4(U1_Addr_out),
        .data5(U1_Data_out),
        .data6(Net1),
        .data7(U1_PC_out),
        .point_in(xlconcat_0_dout),
        .point_out(U5_point_out),
        .rst(U9_rst));
  CSSTE_SSeg7_Dev_0_0 U6
       (.Hexs(U5_Disp_num),
        .LES(U5_LE_out),
        .SEG_PEN(U6_SEG_PEN),
        .SW0(sw0_Dout),
        .Start(div20_Dout),
        .clk(clk_0_1),
        .flash(div25_Dout),
        .point(U5_point_out),
        .rst(U9_rst),
        .seg_clk(U6_seg_clk),
        .seg_clrn(U6_seg_clrn),
        .seg_sout(U6_seg_sout));
  CSSTE_SPIO_0_0 U7
       (.EN(U4_GPIOf0000000_we),
        .LED_PEN(U7_LED_PEN),
        .LED_out(U7_LED_out),
        .P_Data(MIO_BUS_0_Peripheral_in),
        .Start(div20_Dout),
        .clk(util_vector_logic_0_Res),
        .counter_set(U7_counter_set),
        .led_clk(U7_led_clk),
        .led_clrn(U7_led_clrn),
        .led_sout(U7_led_sout),
        .rst(U9_rst));
  CSSTE_clk_div_0_0 U8
       (.Clk_CPU(U8_Clk_CPU),
        .STEP(BTN_OK0_Dout),
        .SW2(sw2_Dout),
        .SW8(sw8_Dout),
        .clk(clk_0_1),
        .clkdiv(U8_clkdiv),
        .rst(U9_rst));
  CSSTE_SAnti_jitter_0_0 U9
       (.BTN_OK(U9_BTN_OK),
        .Key_y(Key_y_0_1),
        .RSTN(RSTN_0_1),
        .SW(SW_0_1),
        .SW_OK(SAnti_jitter_0_SW_OK),
        .clk(clk_0_1),
        .readn(1'b0),
        .rst(U9_rst));
  CSSTE_b64_0_0 b2_0
       (.dout(b2_0_dout));
  CSSTE_xlconstant_0_0 b64_0
       (.dout(b64_0_dout));
  CSSTE_xlslice_1_1 div1
       (.Din(U8_clkdiv),
        .Dout(div1_Dout));
  CSSTE_xlslice_0_5 div11
       (.Din(U8_clkdiv),
        .Dout(div11_Dout));
  CSSTE_xlslice_1_0 div20
       (.Din(U8_clkdiv),
        .Dout(div20_Dout));
  CSSTE_div20_0 div25
       (.Din(U8_clkdiv),
        .Dout(div25_Dout));
  CSSTE_xlconcat_0_0 div31_31
       (.In0(U8_clkdiv),
        .In1(U8_clkdiv),
        .dout(xlconcat_0_dout));
  CSSTE_xlslice_0_3 div6
       (.Din(U8_clkdiv),
        .Dout(div6_Dout));
  CSSTE_xlslice_0_4 div9
       (.Din(U8_clkdiv),
        .Dout(div9_Dout));
  CSSTE_div25_1 sw0
       (.Din(SAnti_jitter_0_SW_OK),
        .Dout(sw0_Dout));
  CSSTE_xlslice_0_1 sw2
       (.Din(SAnti_jitter_0_SW_OK),
        .Dout(sw2_Dout));
  CSSTE_div25_0 sw7_5
       (.Din(SAnti_jitter_0_SW_OK),
        .Dout(sw7_5_Dout));
  CSSTE_xlslice_0_2 sw8
       (.Din(SAnti_jitter_0_SW_OK),
        .Dout(sw8_Dout));
  CSSTE_xlslice_0_0 sw9
       (.Din(SAnti_jitter_0_SW_OK),
        .Dout(BTN_OK0_Dout));
  CSSTE_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(U8_Clk_CPU),
        .Res(util_vector_logic_0_Res));
  CSSTE_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(clk_0_1),
        .Res(util_vector_logic_1_Res));
  CSSTE_xlconcat_1_0 xlconcat_1
       (.In0(PC31_2_Dout),
        .In1(b2_0_dout),
        .dout(xlconcat_1_dout));
endmodule
