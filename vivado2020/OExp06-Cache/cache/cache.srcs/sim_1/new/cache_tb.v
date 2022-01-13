`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/15 18:20:43
// Design Name: 
// Module Name: cache_tb
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


module cache_tb(

    );
    reg clk,rst;

    //cpu <-> cache
    reg [31:0] data_cpu_write;//data write in
    reg [31:0] addr_out;      //cpu addr
    reg wr_cpu;       //cpu write enable
    reg rd_cpu;       //cpu read enable
    wire [31:0] data_cpu_read;     //data to cpu
    wire cpu_ready;                //ready for cpu

    //cache <-> memory
    reg ready_mem;            //memory enable
    reg [31:0] data_mem_read; //data read in
    wire wr_mem;          //memory write enable
    wire rd_mem;          //memory read enable
    wire [31:0] mem_req_addr;    //mem require address
    wire [31:0] data_mem_write;   //data to mem

    //信号初始化，必须有这一步，容易被忽略
    initial begin
        clk = 1'b0; 
        rst = 1'b1;
        rd_cpu = 0;
        wr_cpu = 0;
        addr_out = 0;
        data_cpu_write = 0;
        ready_mem = 0;
        data_mem_read = 0;
        #40  //延时40ns
        rst = 1'b0;
        //read miss
        rd_cpu = 1'b1;
        addr_out = 32'h00000207;
        #160
        ready_mem = 1;
        data_mem_read = 32;
        #60;
        ready_mem = 0;
        rd_cpu = 1'b0;
        #200;
        //Write hit
        wr_cpu = 1'b1;
        addr_out = 32'h00000207;
        data_cpu_write = 16;
        #60
        wr_cpu = 1'b0;
        #90
        //read hit
        rd_cpu = 1'b1;
        addr_out = 32'h00000207;
        #80
        rd_cpu = 1'b0;
        #100
        //write miss
        wr_cpu = 1'b1;
        addr_out = 32'h00000407;
        data_cpu_write = 18;
        #100
        ready_mem = 1;
        data_mem_read = 20;
        #40;
        ready_mem = 0;
        #60;
        wr_cpu = 1'b0;
        #200;
        //read miss(LRU replace)
        rd_cpu = 1'b1;
        addr_out = 32'h00000807;
        #160
        ready_mem = 1;
        data_mem_read = 31;
        #100;
        ready_mem = 0;
        rd_cpu = 1'b0;
        #400;
    end

    //生成时钟
    always #5 clk = ~clk; //每10ns,clk进行翻转，达到模拟晶振周期为20ns

    Cache cache(
                .sys_clk(clk),
                .rst(rst),

                //cpu <-> cache
                .data_cpu_write(data_cpu_write),//data write in
                .addr_out(addr_out),      //cpu addr
                .wr_cpu(wr_cpu),       //cpu write enable
                .rd_cpu(rd_cpu),       //cpu read enable
                .data_cpu_read(data_cpu_read),     //data to cpu
                .cpu_ready(cpu_ready),                //ready for cpu

                //cache <-> memory
                .ready_mem(ready_mem),            //memory enable
                .data_mem_read(data_mem_read), //data read in
                .wr_mem(wr_mem),          //memory write enable
                .rd_mem(rd_mem),          //memory read enable
                .mem_req_addr(mem_req_addr),    //mem require address
                .data_mem_write(data_mem_write)   //data to mem
                );
endmodule
