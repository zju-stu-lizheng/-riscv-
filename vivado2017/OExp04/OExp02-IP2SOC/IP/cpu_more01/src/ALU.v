`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/08 13:48:16
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


module ALU(
    input [31:0] A,
    input [31:0] B,
    input [3:0] ALU_operation,
    output reg [31:0] res,
    output wire zero,
    output reg overflow
    );
    wire signed [31:0] sA;
    wire signed [31:0] sB;
    assign sA = A;
    assign sB = B; 
    reg [31:0] tmp;
    always @(*) begin
        case (ALU_operation)
			4'b0000: res = A & B;   //and
			4'b0001: res = A | B;   //or
			4'b0010: res = A + B;   //add
			4'b1100: res = A ^ B;   //xor
			4'b1101: res = A >> B[4:0];  //srl
			4'b0110: res = A - B;   //sub
			4'b0111: 
                begin               //slt
                    res = (sA < sB);
                end
			4'b1001: 
                begin               //sltu
                    res = (A < B);
                end
            4'b1111:                //sra
                begin
                    res = sA >>> B[4:0];
                end
            4'b1110:                //sll
                begin
                    res = A << B[4:0];
                end
            default: res = 1;
            // '1 is a special literal syntax for a number with all bits set to 1.
		endcase
    end
    assign zero = ~(|res);
endmodule
