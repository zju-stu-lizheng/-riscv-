`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/05 15:05:53
// Design Name: 
// Module Name: MUX2T1_32
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


module MUX2T1_32(input [31:0] I0,
                input [31:0] I1,
                input sel,
                output reg [31:0] o);
    always @(*) begin
        if(sel) begin
            o = I1;
        end
        else begin
            o = I0;
        end
    end
endmodule
