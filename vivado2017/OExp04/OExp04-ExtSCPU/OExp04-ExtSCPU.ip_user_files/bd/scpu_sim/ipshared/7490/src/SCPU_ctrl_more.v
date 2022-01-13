`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/17 21:56:34
// Design Name: 
// Module Name: SCPU_ctrl_more
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


module SCPU_ctrl_more(
            input wire [4:0] OPcode,	        //OPcode
		        input wire [2:0] Fun3,	            //Function
            input wire       Fun7,	            //Function
		        input wire       MIO_ready,	        //CPU Wait
		        output reg [2:0] ImmSel,
		        output reg       ALUSrc_B,
		        output reg [1:0] MemtoReg,
		        output reg [1:0] Jump,
		        output reg       Branch,
		        output reg       BranchN,
		        output reg       RegWrite,
		        output reg       MemRW,
		        output reg [3:0] ALU_Control,
		        output reg       CPU_MIO
    );
  wire[3:0]Fun;
  assign Fun = {Fun3,Fun7};
  always @* begin
       ALUSrc_B    = 1'b0;
       MemtoReg    = 2'b00;
       RegWrite    = 1'b0;
       Branch      = 1'b0;
       BranchN     = 1'b0;
       Jump        = 2'b0;
       MemRW       = 1'b0;
       CPU_MIO     = 1'b0;
       ImmSel      = 3'b001;
       ALU_Control = 4'b0000;
       case(OPcode)                                                                               //����һ�����룬����ALUop����
          5'b01100: begin RegWrite=1'b1;ImmSel=3'b001;ALUSrc_B=1'b0;Branch=1'b0;BranchN=1'b0;Jump=2'b00;MemtoReg=2'b00;MemRW=1'b0;//ALU(R) ImmSel,MemRW not care
                      case(Fun)
                          4'b0000: ALU_Control=4'b0010;    //add
                          4'b0001: ALU_Control=4'b0110;    //sub
                          4'b1110: ALU_Control=4'b0000;    //and
                          4'b1100: ALU_Control=4'b0001;    //or
                          4'b0100: ALU_Control=4'b0111;    //slt
                          4'b0010: ALU_Control=4'b1110;    //sll
                          4'b1010: ALU_Control=4'b1101;    //srl
                          4'b1000: ALU_Control=4'b1100;    //xor
                          4'b1011: ALU_Control=4'b1111;    //sra
                          4'b0110: ALU_Control=4'b1001;    //sltu
                          default: ALU_Control=4'b0010;
                      endcase
                    end
          5'b00000: begin                                 //load
                          ALU_Control=4'b0010;            //add�����ַ
                          RegWrite=1'b1;ImmSel=3'b001;ALUSrc_B=1'b1;Branch=1'b0;BranchN=1'b0;Jump=2'b00;MemtoReg=2'b01; MemRW=1'b0;
                    end
          5'b01000: begin                                 //store
                          ALU_Control=4'b0010;            //add�����ַ          
                          RegWrite=1'b0;ImmSel=3'b010;ALUSrc_B=1'b1;Branch=1'b0;BranchN=1'b0;Jump=2'b00;MemtoReg=2'b00; MemRW=1'b1;//MemtoReg not care
                    end
          5'b11000: begin                                 //branch
                          ALU_Control=4'b0110;            //sub�о�zero
                          RegWrite=1'b0;ImmSel=3'b011;ALUSrc_B=1'b0;                         Jump=2'b00;MemtoReg=2'b00; MemRW=1'b0;//MemtoReg,MemRW not care  
                          case(Fun3)
                             3'b000: begin Branch =1'b1;BranchN=1'b0;end //beq
                             3'b001: begin Branch =1'b0;BranchN=1'b1;end //bne
                             default:begin Branch =1'b0;BranchN=1'b0;end
                          endcase
                    end
          5'b11011: begin                                 //jal
                          ALU_Control=4'b0010;
                          RegWrite=1'b1;ImmSel=3'b100;ALUSrc_B=1'b1;Branch=1'b0;BranchN=1'b0;Jump=2'b01;MemtoReg=2'b10; MemRW=1'b0;//ALU_Control,ALUSrc_B,Branch;BranchN;MemRW mot care
                    end
          5'b11001: begin                                 //jalr
                          ALU_Control=4'b0010;            //add                                   
                          RegWrite=1'b1;ImmSel=3'b001;ALUSrc_B=1'b1;Branch=1'b0;BranchN=1'b0;Jump=2'b10;MemtoReg=2'b10; MemRW=1'b0;//Branch;BranchN;MemRW mot care
                    end
          5'b01101: begin 
                          ALU_Control=4'b0010;           //lui
                          RegWrite=1'b1;ImmSel=3'b000;ALUSrc_B=1'b0;Branch=1'b0;BranchN=1'b0;Jump=2'b00;MemtoReg=2'b11; MemRW=1'b0;//ALU_Control,ALUSrc_B,MemRW mot care
                    end
          5'b00100: begin RegWrite=1'b1;ImmSel=3'b001;ALUSrc_B=1'b1;Branch=1'b0;BranchN=1'b0;Jump=2'b00;MemtoReg=2'b00; MemRW=1'b0;//ALU(I)       MemRW mot care
                      case(Fun3)
                        3'b000: ALU_Control=4'b0010;    //addi
                        3'b111: ALU_Control=4'b0000;    //andi
                        3'b110: ALU_Control=4'b0001;    //ori
                        3'b010: ALU_Control=4'b0111;    //slti
                        3'b011: ALU_Control=4'b1001;    //sltu
                        3'b100: ALU_Control=4'b1100;    //xori
                        3'b001: ALU_Control=4'b1110;    //slli
                        3'b101: case(Fun7)
                                  1'b0: ALU_Control=4'b1101; //srli
                                  1'b1: ALU_Control=4'b1111; //srai
                                  default:ALU_Control=4'b0010;
                                endcase
                        default:ALU_Control=4'b0010;
                      endcase
                    end
           default: begin ALU_Control=4'b0010;RegWrite=1'b0;ImmSel=3'b001;ALUSrc_B=1'b0;Branch=1'b0;BranchN=1'b0;Jump=2'b00;MemtoReg=2'b00;MemRW=1'b0; end      
       endcase
   end
   
endmodule
