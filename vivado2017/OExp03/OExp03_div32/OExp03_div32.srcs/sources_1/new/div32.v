`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/23 19:56:58
// Design Name: 
// Module Name: div32
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


module div32(
    input clk,
    input rst,
    input start,
    input [31:0] dividend,
    input [31:0] divisor,
    output [31:0] quotient,
    output [31:0] remainder,
    output finish,
    output reg [5:0]cnt
    );
    reg [1:0]flag;
    // reg [5:0]cnt;
    reg [64:0] res;

    integer i;
    initial begin
        flag <= 0;
        cnt <= 6'b0;
        res <= 64'b0;
    end
    always@(posedge clk or posedge rst)begin
        if(rst == 1) begin
            cnt = 6'b0;
            res = 64'b0;
            flag <= 0;
        end
        if(clk) begin
            if(start == 1) begin    //read dividend
                res [31:0] = dividend;
                res = res << 1;
                cnt = 0;
                flag[0] = 1;
                flag[1] = 0;
            end                     //start calculate
            else begin
                if(flag[0] == 1) begin
                    if(res[63:32] >= divisor) begin
                        res[63:32] = res[63:32] - divisor;
                        res = res << 1;
                        res[0] = 1;
                    end else
                    begin
                        res = res << 1;
                        res[0] = 0;
                    end

                    if(cnt == 31) begin //End the cycle
                        res[63:32] = res[63:32] >> 1;
                        flag = 2'b10;
                        cnt = 0;
                    end
                    cnt = cnt + 1;
                end
            end
        end

    end
    assign quotient = res[31:0];
    assign remainder = res[63:32];
    assign finish = flag[1];    //end flag

endmodule
