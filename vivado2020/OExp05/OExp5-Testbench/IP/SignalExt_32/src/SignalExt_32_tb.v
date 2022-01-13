`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/05 16:36:04
// Design Name: 
// Module Name: SignalExt_32_tb
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


module SignalExt_32_tb(

    );
    reg S;
    wire [31:0] So;
    SignalExt_32 SignalExt_32_ub(S,So);
    initial begin
        S = 0;#100;
        S = 1;#100;
    end
endmodule
