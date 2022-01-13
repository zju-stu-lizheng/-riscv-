 `timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/17 15:01:11
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
		        output reg [2:0]ImmSel,       //立即数选择控制
		        output reg ALUSrc_B,          //源操作数2选择
		        output reg [1:0]MemtoReg,     //写回控制选择
		        output reg [1:0]Jump,         //跳转
		        output reg Branch,            //分支
                output reg BranchN,           //Bne - 跳转
		        output reg RegWrite,          //寄存器堆写使能
		        output reg MemRW,             //存储器读写使能
		        output reg [3:0]ALU_Control,  //ALU控制
		        output reg CPU_MIO,           //not use
                output reg [1:0]ALUop
    );

   wire[3:0] Fun;
   
   always @* begin
       ALUSrc_B=0;
       MemtoReg=0;
       RegWrite=0;
       Branch=0;
       BranchN=0;
       Jump=0;
       MemRW=0;
       CPU_MIO=0;
       ALUop=2'b10;
   
       case(OPcode)
          5'b01100: begin ALUop=2'b10;RegWrite=1;ImmSel=3'b000;ALUSrc_B=0;Branch=0;Jump=0;MemtoReg=2'b00; MemRW=0;end//ALU(R)  ImmSel,MemRW not care
          5'b00000: begin ALUop=2'b00;RegWrite=1;ImmSel=3'b001;ALUSrc_B=1;Branch=0;Jump=0;MemtoReg=2'b01; MemRW=0;end//load
          5'b01000: begin ALUop=2'b00;RegWrite=0;ImmSel=3'b010;ALUSrc_B=1;Branch=0;Jump=0;MemtoReg=2'b00; MemRW=1;end//store   MemtoReg not care
          5'b11000: begin ALUop=2'b01;RegWrite=0;ImmSel=3'b011;ALUSrc_B=0;Branch=0;Jump=0;MemtoReg=2'b00; MemRW=0;end//beq&bne MemtoReg,MemRW not care
          5'b11011: begin ALUop=2'b00;RegWrite=1;ImmSel=3'b100;ALUSrc_B=0;Branch=0;Jump=1;MemtoReg=2'b10; MemRW=0;end//jump    ALUop,ALUSrc_B,Branch,MemRW not care
          5'b00100: begin ALUop=2'b11;RegWrite=1;ImmSel=3'b001;ALUSrc_B=1;Branch=0;Jump=0;MemtoReg=2'b00; MemRW=0;end//ALU(I)  MemRW not care
          5'b01101: begin ALUop=2'b00;RegWrite=1;ImmSel=3'b000;ALUSrc_B=0;Branch=0;Jump=0;MemtoReg=2'b11; MemRW=0;end//lui(U)  ALU not care
          5'b11001: begin ALUop=2'b00;RegWrite=1;ImmSel=3'b001;ALUSrc_B=1;Branch=0;Jump=2;MemtoReg=2'b10; MemRW=0;end//jalr(I) 
          default:  begin ALUop=2'b00;RegWrite=0;ImmSel=3'b000;ALUSrc_B=0;Branch=0;Jump=0;MemtoReg=2'b00; MemRW=0;end
       endcase
  end
  
  assign Fun = {Fun3,Fun7};
  
  always @* begin
      case(ALUop)
           2'b00: ALU_Control=3'b010;             //add
           2'b11: 
                case(Fun3)
                   3'b000: ALU_Control=4'b0010;    //addi
                   3'b010: ALU_Control=4'b0111;    //slti
                   3'b011: ALU_Control=4'b1001;    //sltiu
                   3'b100: ALU_Control=4'b1100;    //xori
                   3'b110: ALU_Control=4'b0001;    //ori
                   3'b111: ALU_Control=4'b0000;    //andi
                   3'b001: ALU_Control=4'b1110;    //slli
                   3'b101: 
                        case(Fun7) 
                            1'b0: ALU_Control=4'b1101;    //srli
                            1'b1: ALU_Control=4'b1111;    //srai
                        endcase
                   default:   ALU_Control=4'bx;
               endcase
           2'b01: 
                begin ALU_Control=3'b110;         //sub
                    case(Fun3)
                        3'b000: Branch=1;       //beq
                        3'b001: BranchN=1;      //bne
                    endcase
                end
           2'b10: 
               case(Fun)
                   4'b0000: ALU_Control=4'b0010;    //add
                   4'b0001: ALU_Control=4'b0110;    //sub
                   4'b0010: ALU_Control=4'b1110;    //sll
                   4'b0100: ALU_Control=4'b0111;    //slt
                   4'b0110: ALU_Control=4'b1001;    //sltu
                   4'b1000: ALU_Control=4'b1100;    //xor
                   4'b1010: ALU_Control=4'b1101;    //srl
                   4'b1011: ALU_Control=4'b1111;    //sra
                   4'b1100: ALU_Control=4'b0001;    //or
                   4'b1110: ALU_Control=4'b0000;    //and
                   default:   ALU_Control=4'bx;
               endcase
           default:   ALU_Control=3'bx;
      endcase
 end
    
endmodule
