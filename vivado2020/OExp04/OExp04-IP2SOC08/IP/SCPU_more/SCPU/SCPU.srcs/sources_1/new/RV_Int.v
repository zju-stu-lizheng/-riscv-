`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/20 22:24:47
// Design Name: 
// Module Name: RV_Int
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


module RV_Int(
    input clk,
    input reset,
    input INT,
    input ecall,
    input mret,
    input ill_instr,
    input [31:0] pc_next,
    output [31:0] pc
    );
    reg [31:0] mtvec;       /*储存中断向量*/
    reg [31:0] mepc; 		/*暂存返回PC值*/

    always @(posedge clk or posedge reset) begin
        if (rst==1)  begin      /*置位*/
            pc <= 32'h00000000;
            mepc <= 32'h00000000;
        end
		else begin
            if(INT || ill_instr || ecall) begin
                case (1'b1)
                    INT     :   mtvec <= 32'h0c;
                    ecall   :   mtvec <= 32'h08;
                    ill_instr:  mtvec <= 32'h04;
                endcase
                mepc <= pc_next;
                pc <= mtvec;        /*此时pc的值是什么*/
            end 
            else begin
                if(mret) begin
                    pc <= mepc;
                end else begin
                    pc <= pc_next;
                end
            end
        end
    end
endmodule
