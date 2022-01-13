`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/12/19 14:49:38
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


module Regs(    
	input clk,
	input rst,
	input [4:0] Rs1_addr, 
	input [4:0] Rs2_addr, 
	input [4:0] Wt_addr, 
	input [31:0]Wt_data, 
	input RegWrite, 
	output [31:0] Rs1_data, 
	output [31:0] Rs2_data,
	output [31:0] x0,
	output [31:0] ra,
	output [31:0] sp,
	output [31:0] gp,
	output [31:0] tp,
	output [31:0] t0,
	output [31:0] t1,
	output [31:0] t2,
	output [31:0] s0,
	output [31:0] s1,
	output [31:0] a0,
	output [31:0] a1,
	output [31:0] a2,
	output [31:0] a3,
	output [31:0] a4,
	output [31:0] a5,
	output [31:0] a6,
	output [31:0] a7,
	output [31:0] s2,
	output [31:0] s3,
	output [31:0] s4,
	output [31:0] s5,
	output [31:0] s6,
	output [31:0] s7,
	output [31:0] s8,
	output [31:0] s9,
	output [31:0] s10,
	output [31:0] s11,
	output [31:0] t3,
	output [31:0] t4,
	output [31:0] t5,
	output [31:0] t6  
	);
	reg [31:0] register [1:31]; 				// r1 - r31
	integer i;
	
	assign Rs1_data = (Rs1_addr == 0)? 0 : register[Rs1_addr];      // read
	assign Rs2_data = (Rs2_addr == 0)? 0 : register[Rs2_addr];      // read
	
	// //Read
	// always @(negedge clk) begin
	// 	if(Rs1_addr == 0) begin
	// 		Rs1_data = 0;
	// 	end
	// 	else begin
	// 		Rs1_data = register[Rs1_addr];
	// 	end
	// 	if(Rs2_addr == 0) begin
	// 		Rs2_data = 0;
	// 	end
	// 	else begin
	// 		Rs2_data = register[Rs2_addr];
	// 	end
	// end

	//write
	always @(negedge clk or posedge rst) 
	begin
		if (rst==1)      begin              // reset
			for (i=1; i<32; i=i+1)
			register[i] <= 0;    //i;
		end 
		else begin
			if ((Wt_addr != 0) && (RegWrite == 1))     // write
			register[Wt_addr] <= Wt_data;
		end
	end
	assign x0  = 32'b0;
	assign ra  = register[5'b00001];
	assign sp  = register[5'b00010];
	assign gp  = register[5'b00011];
	assign tp  = register[5'b00100];
	assign t0  = register[5'b00101];
	assign t1  = register[5'b00110];
	assign t2  = register[5'b00111];
	
	assign s0  = register[5'b01000];
	assign s1  = register[5'b01001];
	assign a0  = register[5'b01010];
	assign a1  = register[5'b01011];
	assign a2  = register[5'b01100];
	assign a3  = register[5'b01101];
	assign a4  = register[5'b01110];
	assign a5  = register[5'b01111];
	
	assign a6  = register[5'b10000];
	assign a7  = register[5'b10001];
	assign s2  = register[5'b10010];
	assign s3  = register[5'b10011];
	assign s4  = register[5'b10100];
	assign s5  = register[5'b10101];
	assign s6  = register[5'b10110];
	assign s7  = register[5'b10111];
		
	assign s8  = register[5'b11000];
	assign s9  = register[5'b11001];
	assign s10 = register[5'b11010];
	assign s11 = register[5'b11011];
	assign t3  = register[5'b11100];
	assign t4  = register[5'b11101];
	assign t5  = register[5'b11110];
	assign t6  = register[5'b11111];
endmodule