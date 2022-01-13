`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/10 14:32:57
// Design Name: 
// Module Name: Regs
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


module regs( input clk, rst, RegWrite, 
            input [4:0] Rs1_addr, Rs2_addr, Wt_addr, 
            input [31:0] Wt_data,
            output [31:0] Rs1_data, Rs2_data,
            output wire [31:0] x0,
            output wire [31:0] ra,
            output wire [31:0] sp,
            output wire [31:0] gp,
            output wire [31:0] tp,
            output wire [31:0] t0,
            output wire [31:0] t1,
            output wire [31:0] t2,
            output wire [31:0] s0,
            output wire [31:0] s1,
            output wire [31:0] a0,
            output wire [31:0] a1,
            output wire [31:0] a2,
            output wire [31:0] a3,
            output wire [31:0] a4,
            output wire [31:0] a5,
            output wire [31:0] a6,
            output wire [31:0] a7,
            output wire [31:0] s2,
            output wire [31:0] s3,
            output wire [31:0] s4,
            output wire [31:0] s5,
            output wire [31:0] s6,
            output wire [31:0] s7,
            output wire [31:0] s8,
            output wire [31:0] s9,
            output wire [31:0] s10,
            output wire [31:0] s11,
            output wire [31:0] t3,
            output wire [31:0] t4,
            output wire [31:0] t5,
            output wire [31:0] t6
);
    reg [31:0] register [1:31]; // r1 - r31
    integer i;
    assign Rs1_data = (Rs1_addr== 0) ? 0 : register[Rs1_addr]; // read
    assign Rs2_data = (Rs2_addr== 0) ? 0 : register[Rs2_addr]; // read
    assign x0 = 0;
    assign ra = register[1];
    assign sp = register[2];
    assign gp = register[3];
    assign tp = register[4];
    assign t0 = register[5];
    assign t1 = register[6];
    assign t2 = register[7];
    assign s0 = register[8];
    assign s1 = register[9];
    assign a0 = register[10];
    assign a1 = register[11];
    assign a2 = register[12];
    assign a3 = register[13];
    assign a4 = register[14];
    assign a5 = register[15];
    assign a6 = register[16];
    assign a7 = register[17];
    assign s2 = register[18];
    assign s3 = register[19];
    assign s4 = register[20];
    assign s5 = register[21];
    assign s6 = register[22];
    assign s7 = register[23];
    assign s8 = register[24];
    assign s9 = register[25];
    assign s10 = register[26];
    assign s11 = register[27];
    assign t3 = register[28];
    assign t4 = register[29];
    assign t5 = register[30];
    assign t6 = register[31];
    always @(posedge clk or posedge rst) 
        begin if (rst==1) for (i=1; i<32; i=i+1) register[i] <= 0; // reset
            else if ((Wt_addr != 0) && (RegWrite == 1)) 
            register[Wt_addr] <= Wt_data; // write
        end
endmodule


