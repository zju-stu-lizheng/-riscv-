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
        assign Key_x = {SW[15:11]};                                //K_ROW �����"0"
        
        always @(posedge clk) begin
            btn_temp <= button;                                        //������ֵ
            sw_temp <= SW;                                             //��������
            if(btn_temp != button || sw_temp !=SW) begin        //�м����»��ͷţ���ʼ����
                counter <= 32'h00000000;
                rst_counter <= 0;
                pulse <= 0;
                end
            else if(counter < 50)                                 //ȥ������������ʱ100000
                    counter<=counter+1;
                  else begin                                            //��ʱ����
                        BTN_OK <= button[3:0];                    //����ȶ�����
                        CR <= ~RSTN;                                    //�̰�����ȶ�CR
                        SW_OK <= SW;                                     //����ȶ���������
                        pulse <= 1;                                        //�������
                        if(!pulse)pulse_out <= button;        //�������
                        else pulse_out <= 0;    
                        if(button[4] && rst_counter<100)    //������λ��ʱ 200000000
                            rst_counter <= rst_counter + 1;
                        else rst <= ~RSTN;                            //������λ���
                  end
         end 
endmodule
