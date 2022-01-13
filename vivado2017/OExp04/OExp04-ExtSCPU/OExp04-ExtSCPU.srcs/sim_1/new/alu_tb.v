`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/08 14:21:24
// Design Name: 
// Module Name: alu_tb
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


module alu_tb(

    );
    reg [31:0] A,B;
    reg [3:0] ALU_operation;
    wire [31:0] res;
    wire zero;

    ALU alu_ins(.A(A),
                .B(B),
                .res(res),
                .ALU_operation(ALU_operation),
                .zero(zero));
    /*
    仿真目标：
    对于ALU的八个基本的运算做一个初步的仿真
    */
    initial begin
        A=32'hA5A5A5A5;
        B=32'h5A5A5A5A;
        ALU_operation =4'b1000;	//set on less than: 预期结果 0(A<B == false)
        #100;
        ALU_operation =3'b111;	//set on less than: 预期结果 0(A<B == false)
        #100;
        ALU_operation =3'b110;	//Sub:				预期结果 4b4b4b4b
        #100;
        // ALU_operation =3'b101;	//srl:				预期结果 52d2d2(a5a5a5a5右移5'b01001(位)，
        //                         //					结果为   52d2d2)
        // #100;
        ALU_operation =3'b100;	//nor:或非			预期结果 00000000				
        #100;
        ALU_operation =3'b011;	//xor:异或			预期结果 ffffffff
        #100;
        ALU_operation =3'b010;	//Add:加法			预期结果 ffffffff
        #100;
        ALU_operation =3'b001;	//Or:按位或			预期结果 ffffffff
        #100;
        ALU_operation =3'b000;	//And:按位与			预期结果 00000000
        #100;
        A = 32'h00000011;
        B = 32'h00000003;
        #100;
        ALU_operation =3'b101;	//srl:				预期结果 2
                                //					结果为   2)
        #100;
        ALU_operation =4'b1001;	//sra:				预期结果 44
                                //					结果为   44)
        #100;
        ALU_operation =4'b1010;	//sll:				预期结果 44
                                //					结果为   44)
        #100;
        A = 32'h80000011;
        ALU_operation =4'b1001;	//sra:				预期结果 
                                //					结果为   )
        #100;
    end
    //实际结果与预期结果一致
endmodule
