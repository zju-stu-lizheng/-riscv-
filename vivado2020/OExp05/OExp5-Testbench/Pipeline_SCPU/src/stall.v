`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/31 16:09:37
// Design Name: 
// Module Name: stall
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


module stall(
    input rst_stall, //复位
    input RegWrite_out_IDEX, //执行阶段寄存器写控制
    input [4:0]Rd_addr_out_IDEX, //执行阶段寄存器写地址
    input RegWrite_out_EXMem, //访存阶段寄存器写控制
    input [4:0]Rd_addr_out_EXMem, //访存阶段寄存器写地址
    input [4:0]Rs1_addr_ID, //译码阶段寄存器读地址1
    input [4:0]Rs2_addr_ID, //译码阶段寄存器读地址2
    input Rs1_used, //Rs1被使用
    input Rs2_used, //Rs2被使用
    input Branch_ID, //译码阶段beq
    input BranchN_ID, //译码阶段bne
    input [1:0] Jump_ID, //译码阶段jal
    input Branch_out_IDEX, //执行阶段beq
    input BranchN_out_IDEX, //执行阶段bne
    input [1:0] Jump_out_IDEX, //执行阶段jal
    input Branch_out_EXMem, //访存阶段beq
    input BranchN_out_EXMem, //访存阶段bne
    input [1:0] Jump_out_EXMem, //访存阶段jal
    output reg en_IF, //流水线寄存器的使能及NOP信号
    output reg en_IFID,
    output reg NOP_IFID,
    output reg NOP_IDEX
    );
    /*data hazard*/
    reg Data_stall;
    always @(*) begin
        /*-----------Mem hazard-----------*/
        if(RegWrite_out_EXMem && Rs1_used && (Rs1_addr_ID!=0) && (Rd_addr_out_EXMem == Rs1_addr_ID)) begin
            Data_stall = 1;
        end else begin
            if(RegWrite_out_EXMem && Rs2_used && (Rs2_addr_ID!=0) && (Rd_addr_out_EXMem == Rs2_addr_ID)) begin
                Data_stall = 1;
            end
            /*-----------Ex hazard-----------*/
            else begin
                if(RegWrite_out_IDEX && Rs1_used && (Rs1_addr_ID!=0) && (Rd_addr_out_IDEX == Rs1_addr_ID)) begin
                    Data_stall = 1;
                end
                else begin
                    if(RegWrite_out_IDEX && Rs2_used && (Rs2_addr_ID!=0) && (Rd_addr_out_IDEX == Rs2_addr_ID)) begin
                        Data_stall = 1;
                    end
                    else begin
                        Data_stall = 0;
                    end
                end
            end
        end
    end
    /*Control hazard*/
    reg Control_stall;
    always @(*) begin
        if((Branch_ID || BranchN_ID || Jump_ID[0] || Jump_ID[1]) || (Branch_out_IDEX || BranchN_out_IDEX || Jump_out_IDEX[0] || Jump_out_IDEX[1]) || (Branch_out_EXMem || BranchN_out_EXMem || Jump_out_EXMem[0] || Jump_out_EXMem[1])) begin
            Control_stall = 1;
        end else begin
            Control_stall = 0;
        end
    end

    /*Insert stall*/
    always @(*) begin
        if(rst_stall) begin
            en_IF = 1;
            en_IFID = 1;
            NOP_IDEX = 0;
            NOP_IFID = 0;
        end else begin
            if (Control_stall) begin
                NOP_IFID = 1;
            end
            else begin
                NOP_IFID = 0;
            end

            if (Data_stall) begin
                en_IF= 0;
                en_IFID= 0;
                NOP_IDEX= 1;
            end
            else begin
                en_IF= 1;
                en_IFID= 1;
                NOP_IDEX=0;
            end
        end
    end
endmodule
