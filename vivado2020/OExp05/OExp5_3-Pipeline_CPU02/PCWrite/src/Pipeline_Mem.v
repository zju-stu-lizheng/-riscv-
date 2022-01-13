`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/27 22:19:29
// Design Name: 
// Module Name: Pipeline_Mem
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


module Pipeline_Mem(
    input zero_in_Mem,
    input Branch_in_Mem,
    input BranchN_in_Mem,
    input [1:0] Jump_in_Mem,
    output PCSrc
    );
    /*isbne = ~zero & BranchN*/
    wire       AND2_Res;
    AND AND2
           (.Op1(~zero_in_Mem),
            .Op2(BranchN_in_Mem),
            .Res(AND2_Res));
    /*isbeq = zero & Branch*/
    wire       AND3_Res;            
    AND AND3
           (.Op1(Branch_in_Mem),
            .Op2(zero_in_Mem),
            .Res(AND3_Res));
    /*beq | bne*/
    wire       or0_Res;
    OR or0
           (.Op1(AND2_Res),
            .Op2(AND3_Res),
            .Res(or0_Res));
	/*PCSrc = beq | bne | jal | jalr*/
	assign PCSrc = Jump_in_Mem[0] | Jump_in_Mem[1] | or0_Res;
endmodule
