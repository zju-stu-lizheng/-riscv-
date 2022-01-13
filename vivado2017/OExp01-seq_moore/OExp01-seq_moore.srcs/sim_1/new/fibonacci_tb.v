`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/08 09:13:31
// Design Name: 
// Module Name: fibonacci_tb
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


module fibonacci_tb(

    );
    wire [6:0] f;
    wire [1:0]cs;
    reg clk,rst,en;
    reg [6:0] d;

    fibonacci inst1(clk,rst,en,d,f,cs);

    initial
    begin
	    clk = 0;
		rst = 0;
		#20;
	end

    initial begin
        rst = 1;
        en = 0;
        d = 2;
        #20;
        rst = 0;
        en = 1;
        #50;
        d = 3;
        #20;
    end

    always #10 clk = ~clk;
endmodule
