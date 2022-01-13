`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/23 18:51:20
// Design Name: 
// Module Name: mul32
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


module mul32(
    input clk,
    input rst,
    input [31:0]multiplicand,   //multiplicand
    input [31:0]multiplier,     //multiplier
    input start,                //the calculation begin
    output reg[64:0] product,   //final result
    output finish               //the calculation finishes
);
    reg [1:0]flag;
    reg [5:0]cnt;

    integer i;
    initial begin
        flag <= 0;
        cnt <= 6'b0;
        product <= 65'b0;
    end
    always@(posedge clk or posedge rst)begin
        if(rst == 1) begin
            cnt = 6'b0;
            product = 65'b0;
            flag <= 0;
        end
        if(clk) begin
            if(start == 1) begin    //read multiplier
                product [31:0] = multiplier;
                cnt = 0;
                flag[0] = 1;
                flag[1] = 0;
            end                     //start calculate
            else begin
                if(flag[0] == 1) begin
                    if(cnt == 31) begin //End the cycle
                        flag = 2'b10;
                        cnt = 0;
                    end
                    if(product[0] == 1) begin
                        product[64:32] = product[64:32] + multiplicand;
                    end
                    product = product >> 1;

                    cnt = cnt + 1;
                end
            end
        end

    end
    assign finish = flag[1];    //end flag
endmodule
