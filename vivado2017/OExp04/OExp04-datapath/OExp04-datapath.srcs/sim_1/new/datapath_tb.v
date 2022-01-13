`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/05/26 17:10:15
// Design Name: 
// Module Name: datapath_tb
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


module datapath_tb(

    );
    reg ALUSrc_B;
    reg [2:0]ALU_operation;
    reg [0:0]Branch;
    reg [31:0]Data_in;
    reg [1:0]ImmSel;
    reg Jump;
    reg [1:0]MemtoReg;
    reg RegWrite;
    reg clk;
    reg [31:0]inst_field;
    reg rst;
    wire [31:0]ALU_out;
    wire [31:0]PC_out;
    wire [31:0]Data_out;
    wire [31:0]x0;
    wire [31:0]ra;
    wire [31:0]sp;
    wire [31:0]gp;
    wire [31:0]tp;
    wire [31:0]t0;
    wire [31:0]t1;
    wire [31:0]t2;
    wire [31:0]s0;
    wire [31:0]s1;
    wire [31:0]a0;
    wire [31:0]a1;
    wire [31:0]a2;
    wire [31:0]a3;
    wire [31:0]a4;
    wire [31:0]a5;
    wire [31:0]a6;
    wire [31:0]a7;
    wire [31:0]s2;
    wire [31:0]s3;
    wire [31:0]s4;
    wire [31:0]s5;
    wire [31:0]s6;
    wire [31:0]s7;
    wire [31:0]s8;
    wire [31:0]s9;
    wire [31:0]s10;
    wire [31:0]s11;
    wire [31:0]t3;
    wire [31:0]t4;
    wire [31:0]t5;
    wire [31:0]t6;
    DataPath_wrapper Datapath_U(
    .ALUSrc_B(ALUSrc_B),
    .ALU_operation(ALU_operation),
    .ALU_out(ALU_out),
    .Branch(Branch),
    .Data_in(Data_in),
    .Data_out(Data_out),
    .ImmSel(ImmSel),
    .Jump(Jump),
    .MemtoReg(MemtoReg),
    .PC_out(PC_out),
    .RegWrite(RegWrite),
    .clk(clk),
    .inst_field(inst_field),
    .rst(rst),
    .x0(x0),.ra(ra),.sp(sp),.gp(gp),.tp(tp),.t0(t0),.t1(t1),.t2(t2),.s0(s0),.s1(s1),.a0(a0),.a1(a1),.a2(a2),.a3(a3),.a4(a4),.a5(a5),.a6(a6),.a7(a7),
    .s2(s2),.s3(s3),.s4(s4),.s5(s5),.s6(s6),.s7(s7),.s8(s8),.s9(s9),.s10(s10),.s11(s11),.t3(t3),.t4(t4),.t5(t5),.t6(t6));
always #5 clk=~clk;
    initial begin
    clk = 0;
    rst = 1;
    /*****I-TYPE*****/
    ALUSrc_B = 1;
    MemtoReg = 0;
    Jump = 0;
    Branch = 0;
    RegWrite = 1;
    Data_in = 32'h5a5a5a5a;
    ImmSel = 0;
    //ori x5,x0,10
    inst_field = 32'h00A06293;
    ALU_operation = 3'b001;//or
    #50;
    //andi x6,x0,12
    inst_field = 32'h00C07313;
    ALU_operation = 3'b000;//and
    #50;
    rst = 0;
    //ALU_out = 0, x6 <- 0
    #50;
    //addi x20,x5,0
    inst_field = 32'h00028A13;
    ALU_operation = 3'b010;
    #50;
    //ALU_out = 0 + 10 = 10,x20<-10
    //srli x6,x20,1
    inst_field = 32'h001A5313;
    ALU_operation = 3'b101;
    #50;
    /*****R-TYPE*****/
    ALUSrc_B = 0;
    //add x6,x5,x20
    inst_field = 32'h01428333;
    ALU_operation = 3'b010;
    #50;
    //sub x20,x6,x5
    inst_field = 32'h40530A33;
    ALU_operation = 3'b110;
    #50;
    //xor x20,x6,x5
    inst_field = 32'h00534A33;
    ALU_operation = 3'b011;
    //ALU_out=10100^01010=11110=1E
    #50;
    //slt x20,x6,x5
    inst_field = 32'h00532A33;
    ALU_operation = 3'b111;
    #50;
    //ALU_out=1->x20
    /*****S-TYPE*****/
    ALUSrc_B = 1;
    RegWrite = 0;
    ImmSel = 2'b01;
    //sw x5(10),0(x0)
    inst_field = 32'h00532023;
    ALU_operation = 3'b010;
    #50;
    /*****I-TYPE*****/
    ALUSrc_B = 1;//0-read regdata2;1-immgen
    MemtoReg = 1;//->=1
    RegWrite = 1;
    ImmSel = 0;//00:I;01:S;10:B;11:J
    // x5,0(x0)
    inst_field = 32'h00032283;
    ALU_operation = 3'b010;
    #50;
    /*****B-TYPE*****/
    //beq x5,x5,L1
    ALUSrc_B = 0;
    MemtoReg = 0;
    Branch = 1;
    RegWrite = 0;
    ALU_operation = 6;//sub
    ImmSel = 2;//B
    inst_field = 32'h00528263;
    #50;
    /*****J-TYPE*****/
    Branch = 0;
    Jump = 1;
    RegWrite = 1;
    ALU_operation = 2;
    ImmSel = 3;//J
    //jal x0,L2
    inst_field = 32'hFFDFF06F;
    #50;
    end
endmodule
