`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/17 15:01:11
// Design Name: 
// Module Name: SCPU_ctrl
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


module SCPU_ctrl(
                input[4:0]OPcode,	          //OPcode;   --inst[6:2]
		        input[2:0]Fun3,	              //Function  --inst[14:12]
                input     Fun7,	              //Function  --inst[30]
		        input MIO_ready,	          //CPU Wait  not use
		        output reg [1:0]ImmSel,       //立即数选择控制
		        output reg ALUSrc_B,          //源操作数2选择
		        output reg [1:0]MemtoReg,     //写回控制选择
		        output reg Jump,              //跳转
		        output reg Branch,            //分支
		        output reg RegWrite,          //寄存器堆写使能
		        output reg MemRW,             //存储器读写使能
		        output reg [2:0]ALU_Control,  //ALU控制
		        output reg CPU_MIO            //not use
    );
    
   reg [1:0] ALUop;
   wire[3:0] Fun;
   
   always @* begin
       ALUSrc_B=0;
       MemtoReg=0;
       RegWrite=0;
       Branch=0;
       Jump=0;
       MemRW=0;
       CPU_MIO=0;
       ALUop=2'b10;
   
       case(OPcode)
          5'b01100: begin ALUop=2'b00;RegWrite=1;ImmSel=00;ALUSrc_B=0;Branch=0;Jump=0;MemtoReg=2'b00; MemRW=0;end//ALU(R) ImmSel,MemRW not care
          5'b00000: begin ALUop=2'b10;RegWrite=1;ImmSel=00;ALUSrc_B=1;Branch=0;Jump=0;MemtoReg=2'b01; MemRW=0;end//load
          5'b01000: begin ALUop=2'b10;RegWrite=0;ImmSel=01;ALUSrc_B=1;Branch=0;Jump=0;MemtoReg=2'b00; MemRW=1;end//store  MemtoReg not care
          5'b11000: begin ALUop=2'b11;RegWrite=0;ImmSel=10;ALUSrc_B=0;Branch=1;Jump=0;MemtoReg=2'b00; MemRW=0;end//beq    MemtoReg,MemRW not care
          5'b11011: begin ALUop=2'b00;RegWrite=1;ImmSel=11;ALUSrc_B=0;Branch=0;Jump=1;MemtoReg=2'b10; MemRW=0;end//jump   ALUop,ALUSrc_B,Branch,MemRW not care
          5'b00100: begin ALUop=2'b01;RegWrite=1;ImmSel=00;ALUSrc_B=1;Branch=0;Jump=0;MemtoReg=2'b00; MemRW=0;end//ALU(I) MemRW not care
          default:  begin ALUop=2'b00;RegWrite=0;ImmSel=00;ALUSrc_B=0;Branch=0;Jump=0;MemtoReg=2'b00; MemRW=0;end
       endcase
  end
  
  assign Fun = {Fun3,Fun7};
  
  always @* begin
      case(ALUop)
           2'b10: ALU_Control=3'b010;             //add
           2'b01: 
                case(Fun3)
                   3'b000: ALU_Control=3'b010;    //addi
                   3'b111: ALU_Control=3'b000;    //andi
                   3'b110: ALU_Control=3'b001;    //ori
                   3'b010: ALU_Control=3'b111;    //slti
                   3'b101: ALU_Control=3'b101;    //srli
                   3'b100: ALU_Control=3'b011;    //xori
                   default:   ALU_Control=3'bx;
               endcase
           2'b11: ALU_Control=3'b110;             //sub
           2'b00: 
               case(Fun)
                   4'b0000: ALU_Control=3'b010;    //add
                   4'b0001: ALU_Control=3'b110;    //sub
                   4'b1110: ALU_Control=3'b000;    //and
                   4'b1100: ALU_Control=3'b001;    //or
                   4'b0100: ALU_Control=3'b111;    //slt
                   4'b1010: ALU_Control=3'b101;    //srl
                   4'b1000: ALU_Control=3'b011;    //xor
                   default:   ALU_Control=3'bx;
               endcase
           default:   ALU_Control=3'bx;
      endcase
 end
    
endmodule
