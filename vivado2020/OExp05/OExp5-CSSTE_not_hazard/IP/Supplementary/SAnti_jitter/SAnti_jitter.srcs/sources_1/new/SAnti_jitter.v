`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/19 09:26:42
// Design Name: 
// Module Name: SAnti_jitter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SAnti_jitter(             input wire clk, 
								 input wire RSTN,
								 input wire readn,
								 input wire [3:0]Key_y,
								 output      [4:0] Key_x,
								 input wire[15:0]SW, 
								 output reg[4:0] Key_out,
								 output reg      Key_ready,
								 output reg[3:0] pulse_out,
								 output reg[3:0] BTN_OK,
								 output reg[15:0]SW_OK,
								 output reg 	  CR,
								 output reg 	  rst

    );
    reg [31:0] counter, rst_counter;
    reg [5:0]  btn_temp;
    reg [15:0] sw_temp;
    reg pulse;
    initial begin
    BTN_OK=0;
    pulse_out=0;
    SW_OK=0;
    counter=0;
    CR=0; rst=0;
    end
    
        wire [4:0] button = {~RSTN,~Key_y[3:0]};
        assign Key_x = {SW[15:11]};                                //K_ROW 恒等于"0"
        
        always @(posedge clk) begin
            btn_temp <= button;                                        //采样键值
            sw_temp <= SW;                                             //采样开关
            if(btn_temp != button || sw_temp !=SW) begin        //有键按下或释放，开始计数
                counter <= 32'h00000000;
                rst_counter <= 0;
                pulse <= 0;
                end
            else if(counter < 50)                                 //去抖动，计数定时100000
                    counter<=counter+1;
                  else begin                                            //定时结束
                        BTN_OK <= button[3:0];                    //输出稳定按键
                        CR <= ~RSTN;                                    //短按输出稳定CR
                        SW_OK <= SW;                                     //输出稳定滑动开关
                        pulse <= 1;                                        //输出脉冲
                        if(!pulse)pulse_out <= button;        //脉冲结束
                        else pulse_out <= 0;    
                        if(button[4] && rst_counter<100)    //长按复位定时 200000000
                            rst_counter <= rst_counter + 1;
                        else rst <= ~RSTN;                            //长按复位输出
                  end
         end 
endmodule
