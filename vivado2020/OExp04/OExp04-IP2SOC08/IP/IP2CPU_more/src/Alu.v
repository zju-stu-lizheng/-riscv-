`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/25 15:39:58
// Design Name: 
// Module Name: ALU
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


module ALU(input [31:0]A, B, 
 		  input[3:0] ALU_operation, 
		  output reg[31:0]   res, 
		  output zero, overflow
    );
     parameter one = 32'h00000001, zero_0 = 32'h00000000;
     
always @ (*)
         case (ALU_operation)
                         4'b0000: res=A&B;    
                         4'b0001: res=A|B;    
                         4'b0010: res=A+B;    
                         4'b1100: res=A^B;
                         4'b0110: res=A-B;    
                         4'b1101: res=A>>B[4:0];
                         4'b1111: res=$signed(A)>>>$signed(B[4:0]);
                         4'b1001: res=(A < B) ? one : zero_0;
                         4'b0111: res=($signed(A) < $signed(B)) ? one : zero_0;
                         4'b1110: res=A<<B[4:0];
                         default: res=32'h00000000;
         endcase
 assign zero = (res==0)? 1: 0;
    
endmodule
