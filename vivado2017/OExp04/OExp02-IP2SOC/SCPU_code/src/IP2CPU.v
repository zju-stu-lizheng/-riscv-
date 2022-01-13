`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/20 09:19:26
// Design Name: 
// Module Name: IP2CPU
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


module IP2CPU(
        clk,
        rst,
        inst_in,
        Data_in,
        MIO_ready,
        MemRW,
        CPU_MIO,
        PC_out,
        Data_out,
        Addr_out,
        x0,
        ra,
        sp,
        gp,
        tp,
        t0,
        t1,
        t2,
        s0,
        s1,
        a0,
        a1,
        a2,
        a3,
        a4,
        a5,
        a6,
        a7,
        s2,
        s3,
        s4,
        s5,
        s6,
        s7,
        s8,
        s9,
        s10,
        s11,
        t3,
        t4,
        t5,
        t6
    );
    input clk;
    input rst;

    input MIO_ready;
    input [31:0]Data_in;
    input [31:0]inst_in;

    output [31:0]PC_out;
    output [31:0]Addr_out;
    output [31:0]Data_out;
    output MemRW;
    output CPU_MIO;
    output [31:0]a0;
    output [31:0]a1;
    output [31:0]a2;
    output [31:0]a3;
    output [31:0]a4;
    output [31:0]a5;
    output [31:0]a6;
    output [31:0]a7;
    output [31:0]gp;
    output [31:0]ra;
    output [31:0]s0;
    output [31:0]s1;
    output [31:0]s10;
    output [31:0]s11;
    output [31:0]s2;
    output [31:0]s3;
    output [31:0]s4;
    output [31:0]s5;
    output [31:0]s6;
    output [31:0]s7;
    output [31:0]s8;
    output [31:0]s9;
    output [31:0]sp;
    output [31:0]t0;
    output [31:0]t1;
    output [31:0]t2;
    output [31:0]t3;
    output [31:0]t4;
    output [31:0]t5;
    output [31:0]t6;
    output [31:0]tp;
    output [31:0]x0;

    wire [2:0] ImmSel;
    wire ALUSrc_B;
    wire [3:0]ALU_Control;
    wire Branch;
    wire BranchN;
    wire [1:0]Jump;
    wire [1:0] MemtoReg;
    wire RegWrite;

    wire [1:0] ALUop;

    SCPU_ctrl Controller(.OPcode(inst_in[6:2]),	        //OPcode;   --inst[6:2]
		        .Fun3(inst_in[14:12]),	                //Function  --inst[14:12]
                .Fun7(inst_in[30]),	                    //Function  --inst[30]
		        // .MIO_ready(),	                        //CPU Wait  not use
		        .ImmSel(ImmSel),              //立即数选择控制
		        .ALUSrc_B(ALUSrc_B),            //源操作数2选择
		        .MemtoReg(MemtoReg),            //写回控制选择
		        .Jump(Jump),                //跳转
		        .Branch(Branch),              //分支
                .BranchN(BranchN),             //Bne - 跳转
		        .RegWrite(RegWrite),            //寄存器堆写使能
		        .MemRW(MemRW),               //存储器读写使能
		        .ALU_Control(ALU_Control),         //ALU控制
		        // .CPU_MIO(),             //not use
                .ALUop(ALUop));

    datapath_code DataPath
    (
        clk,
        rst,
        ALUSrc_B,
        ALU_Control,
        ImmSel,
        Jump,
        MemtoReg,
        Branch,
        BranchN,
        RegWrite,
        inst_in,
        Data_in,
        PC_out,
        Addr_out,
        Data_out,
        x0,
        ra,
        sp,
        gp,
        tp,
        t0,
        t1,
        t2,
        s0,
        s1,
        a0,
        a1,
        a2,
        a3,
        a4,
        a5,
        a6,
        a7,
        s2,
        s3,
        s4,
        s5,
        s6,
        s7,
        s8,
        s9,
        s10,
        s11,
        t3,
        t4,
        t5,
        t6);

endmodule
