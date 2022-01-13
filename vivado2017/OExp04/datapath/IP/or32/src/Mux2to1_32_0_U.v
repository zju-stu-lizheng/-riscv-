`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/05/2021 03:01:36 PM
// Design Name: 
// Module Name: Mux2to1_32_0_U
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


module Mux2to1_32_0_U;
    reg [31:0]I0;
    reg [31:0]I1;
    reg s;
    wire [31:0]o;
    
    MUX2T1_32 Mux2T1_32_ub(
                    .I0(I0),
                    .I1(I1),
                    .sel(s),
                    .o(o)
                    );
    initial begin
    I1=1;
    I0=0;
    s=0;
    #50;
    s=1;
    #50;
    s=0;
    end
endmodule
