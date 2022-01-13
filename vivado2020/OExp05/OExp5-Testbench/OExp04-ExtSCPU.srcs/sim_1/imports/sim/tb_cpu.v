`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/15 16:19:45
// Design Name: 
// Module Name: tb_cpu
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


module tb_cpu(

    );
    reg clk;
    reg rst;
    scpu_sim_wrapper u(.clk(clk),.rst(rst));
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        rst = 1;
        #5;
        rst = 0;
    end
endmodule
