`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/24 16:18:19
// Design Name: 
// Module Name: float32_add_tb
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


module tb;

	// Inputs
	reg clk;
	reg rst;
	reg [31:0] A;
	reg [31:0] B;
	reg en;

	// Outputs
	wire [31:0] result;
	wire fin;


	// Instantiate the Unit Under Test (UUT)
	float32_add add (
		.clk(clk), 
		.rst(rst), 
		.A(A), 
		.B(B), 
		.en(en), 
		.result(result), 
		.fin(fin)
	);
	
	always #5 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		A = 32'hc0000000; 
        B = 32'hc0000000; 
        en = 0;
		#10;
		rst = 0; 
		A = 32'hc0a00000; //-5.0
		B = 32'hc0900000; //-4.5
		en = 1;           // c1180000 (-9.5)
		
		#200;		
		A = 32'h40a00000; //+5.0
		B = 32'h40900000; //+4.5
		en = 1;           //41180000 (+9.5)
		
		#200;
		
        en = 0;            
		$stop();
	end
endmodule
