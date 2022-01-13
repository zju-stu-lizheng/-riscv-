`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/19 15:59:32
// Design Name: 
// Module Name: IP2CPU_tb
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


module SCPU_tb();
  wire [31:0]Addr_out;
  wire CPU_MIO;
  reg [31:0]Data_in;
  wire [31:0]Data_out;
  reg MIO_ready;
  wire MemRW;
  wire [31:0]PC_out;
  reg clk;
  reg [31:0]inst_in;
  reg rst;
  
  always #10 clk = ~clk;
  initial begin
     rst           = 1;
     clk           = 0;
     MIO_ready     = 0;
     Data_in       = 32'b0;
     inst_in       = 32'h00000033;//add x0,x0,x0
     #20;
     rst           = 0;
     
     #10;            //addi  x15,x1,-50
     Data_in       = 32'b0;
     
     inst_in       = 32'hFCE08793;//111111001110_00001_000_01111_0010011;
     
     #20;            //sw  x15,8(x2)
     Data_in       = 32'b0;
     inst_in    = 32'h00F12423;//0000000_01111_00010_010_01000_0100011;  
     
     #20;            //lw  x9,240(x10)                            
     Data_in       = 32'd100;                                                                    
     inst_in    = 32'h0F052483;//000011110000_01010_010_01001_0000011; 
     
     #20;            //beq x5,x6,-12                                                                                 
     Data_in       = 32'b0;                                                                                               
     inst_in    = 32'hFE628AE3;//1111111_00110_00101_000_00100_1100011;
     
     #20;            //addi  x15,x1,-50                                   
     Data_in       = 32'b0;                                                                                                             
     inst_in       = 32'hFCE08793;//111111001110_00001_000_01111_0010011; 
                                                                          
     #20;            //sw  x15,8(x2)                                      
     Data_in       = 32'b0;                                               
     inst_in    = 32'h00F12423;//0000000_01111_00010_010_01000_0100011;   
                                                                          
     #20;            //lw  x9,240(x10)                                    
     Data_in       = 32'd100;                                             
     inst_in    = 32'h0F052483;//000011110000_01010_010_01001_0000011;    
     
     #200;
     $stop();
  end
  SCPU SCPU_u
         (.Addr_out(Addr_out),
          .CPU_MIO(CPU_MIO),
          .Data_in(Data_in),
          .Data_out(Data_out),
          .MIO_ready(MIO_ready),
          .MemRW(MemRW),
          .PC_out(PC_out),
          .clk(clk),
          .inst_in(inst_in),
          .rst(rst));
endmodule
