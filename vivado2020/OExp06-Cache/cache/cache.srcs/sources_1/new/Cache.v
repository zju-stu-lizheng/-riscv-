`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/06/14 17:29:42
// Design Name: 
// Module Name: Cache
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


module Cache(
    input sys_clk,
    input rst,

    //cpu <-> cache
    input [31:0] data_cpu_write,//data write in
    input [31:0] addr_out,      //cpu addr
    input wr_cpu,       //cpu write enable
    input rd_cpu,       //cpu read enable
    output reg [31:0] data_cpu_read,     //data to cpu
    output reg cpu_ready,                //ready for cpu

    //cache <-> memory
    input ready_mem,            //memory enable
    input [31:0] data_mem_read, //data read in
    output reg wr_mem,          //memory write enable
    output reg rd_mem,          //memory read enable
    output reg [31:0] mem_req_addr,    //mem require address
    output reg [31:0] data_mem_write   //data to mem
    );
    //定义状态变量
    `define IDLE 0
    `define Compare 1
    `define Allocate 2
    `define WB 3
    integer state;
    integer next_state;

    //时钟分频模块
    reg [1:0]counter;
    always @(posedge sys_clk or posedge rst) begin
        if (rst) begin
            // reset
            counter = 0;
        end
        else if (counter == 1) begin
            counter = 0;
        end
        else begin
            counter = counter + 1;
        end
    end

    reg clk;
    always @(posedge sys_clk or posedge rst) begin
        if (rst) begin
            // reset
            clk = 0;
        end
        else if (counter == 1) begin
            clk = !clk;
        end
    end

    wire [6:0] cpu_req_index;
    wire [22:0] cpu_req_tag;
    wire [1:0] cpu_req_offset;
    //cpu需要访问的地址:tag//index//offset
    assign cpu_req_tag = addr_out[31:9];
    assign cpu_req_index = addr_out[8:2];
    assign cpu_req_offset = addr_out[1:0];

    wire [6:0] index;
    assign index = cpu_req_index;   //对应的index

    reg [31:0] wdata;
    reg [25:0] wtag0;
    reg [25:0] wtag1;
    reg en0;
    reg en1;
    reg ent0;
    reg ent1;
    wire [31:0] rdata0;
    wire [31:0] rdata1;
    wire [25:0] rtag0;
    wire [25:0] rtag1;

    wire Valid0,Valid1;//V U D Tag
    assign Valid0 = rtag0[25];
    assign Valid1 = rtag1[25];

    wire LRU0,LRU1;
    assign LRU0 = rtag0[24];
    assign LRU1 = rtag1[24];

    wire Dir0,Dir1;
    assign Dir0 = rtag0[23];
    assign Dir1 = rtag1[23];

    wire [22:0] Tag0,Tag1;
    assign Tag0 = rtag0[22:0];
    assign Tag1 = rtag1[22:0];

    wire hit;   //命中
    reg hit0,hit1;
    assign hit = hit0 | hit1;

    always @(*) begin                                   //Compare步骤:hit detection
        if(Valid0 == 1 && Tag0 == cpu_req_tag) hit0 = 1; else hit0 = 0;
        if(Valid1 == 1 && Tag1 == cpu_req_tag) hit1 = 1; else hit1 = 0;
    end

    //Cache Controller State Machine and Logic
    always @(posedge clk or posedge rst) begin
        if(rst) begin 
            state = `IDLE;

            //输出初始化为0
            data_cpu_read = 0;
            cpu_ready = 0;
            wr_mem = 0;
            rd_mem = 0;
            mem_req_addr = 0;
            data_mem_write = 0;
            next_state = 0;
            wtag0 = 0;
            wtag1 = 0;
            wdata = 0;
        end
        else state = next_state;
    end

    always @(posedge clk) begin    
        if(state == `IDLE) begin
            cpu_ready = 0;
            en0 = 0;
            en1 = 0;
            ent0 = 0;
            ent1 = 0;
        end else                    //Compare步骤:write hit or read hit
            if(state == `Compare && hit) begin
                if(rd_cpu == 1)         //read hit
                begin
                    cpu_ready = 1;
                    en0 = 0;
                    en1 = 0;
                    ent0 = 1;
                    ent1 = 1;
                    if(hit0 == 1) begin                     //组内第一块hit
                        data_cpu_read = rdata0;
                        wtag0 = {wtag0[25],1'b0,wtag0[23],wtag0[22:0]};    //V=1,U=0,D=0
                        wtag1 = {wtag1[25],1'b1,wtag1[23],wtag1[22:0]};    //V=1,U=1,D=0
                    end
                    else begin                              //组内第二块hit
                        data_cpu_read = rdata1;
                        wtag0 = {wtag0[25],1'b1,wtag0[23],wtag0[22:0]};    //V=1,U=1,D=0
                        wtag1 = {wtag1[25],1'b0,wtag1[23],wtag1[22:0]};    //V=1,U=0,D=0
                    end
                end else begin          //write hit
                    cpu_ready = 1;
                    ent0 = 1;
                    ent1 = 1;
                    wdata = data_cpu_write;
                    if(hit0 == 1) begin                     //组内第一块hit
                        en0 = 1;
                        en1 = 0;
                        wtag0 = {wtag0[25],1'b0,1'b1,wtag0[22:0]};    //V=1,U=0,D=1
                        wtag1 = {wtag1[25],1'b1,wtag1[23],wtag1[22:0]};    //V=1,U=1,D=0
                    end
                    else begin                              //组内第二块hit
                        en0 = 0;
                        en1 = 1;
                        wtag0 = {wtag0[25],1'b1,wtag0[23],wtag0[22:0]};    //V=1,U=1,D=0
                        wtag1 = {wtag1[25],1'b0,1'b1,wtag1[22:0]};    //V=1,U=0,D=1
                    end
                end
            end else begin
                cpu_ready = 0;
            end
    end

    always @(posedge clk) begin             //Allocate步骤
        if(state == `Allocate) begin
            if(!ready_mem) begin
                mem_req_addr = {cpu_req_tag,cpu_req_index,2'b00};
                wr_mem = 1'b0;
                rd_mem = 1'b1;
                en0 = 0;
                en1 = 0;
                ent0 = 0;
                ent1 = 0;
            end else
            begin
                wr_mem = 1'b0;
                rd_mem = 1'b0;
                //通过LRU位来判断选择组中的哪一块？
                if(LRU1 == 0) begin
                    //选择替换第1块
                    en0 = 1;
                    en1 = 0;
                    ent0 = 1;
                    ent1 = 1;
                    wdata = data_mem_read;
                    wtag0 = {1'b1,1'b0,1'b0,cpu_req_tag};    //V=1,U=0,D=0
                    wtag1 = {wtag1[25],1'b1,wtag1[23],wtag1[22:0]};    //V=1,U=0,D=0
                end else begin
                    //选择替换第2块
                    en0 = 0;
                    en1 = 1;
                    ent0 = 1;
                    ent1 = 1;
                    wdata = data_mem_read;
                    wtag0 = {wtag0[25],1'b1,wtag0[23],wtag0[22:0]};    //V=1,U=1,D=0
                    wtag1 = {1'b1,1'b0,1'b0,cpu_req_tag};    //V=1,U=0,D=0
                end
            end
        end else 
        if(state == `WB) begin                              //Write dirty block to memory
            if(!ready_mem) begin
                mem_req_addr = {cpu_req_tag,cpu_req_index,2'b00};
                wr_mem = 1'b1;
                rd_mem = 1'b0;
                if(Dir0 == 1)
                    data_mem_write = rdata0;
                else if (Dir1 == 1)
                    data_mem_write = rdata1;
            end else
            begin
                wr_mem = 1'b0;
                rd_mem = 1'b0;
            end
        end else 
        begin
            wr_mem = 1'b0;
            rd_mem = 1'b0;
        end
    end

    //状态转移
    always @(posedge clk) begin
        case(state)
        `IDLE: begin
            if(rd_cpu | wr_cpu) begin
                next_state = `Compare;
            end else begin
                next_state = `IDLE;
            end
        end
        `Compare: if(hit)    //若hit
                next_state = `IDLE;
            else if({Valid0,LRU0,Dir0} == 3'b111 || {Valid1,LRU1,Dir1} == 3'b111) //若dir
                next_state = `WB;
            else
                next_state = `Allocate;
        `Allocate: if(ready_mem)
                next_state = `Compare;
            else 
                next_state = `Allocate;
        `WB: if(ready_mem)
                next_state = `Allocate;
            else
                next_state = `WB;
        default:next_state = `IDLE;
        endcase
    end

    //instantiation Data RAM for Way 0
    Data_ram0 d0(.clk(sys_clk),
                 .a(index),
                 .d(wdata),
                 .we(en0),
                 .spo(rdata0));

    //instantiation Data RAM for Way 1
    Data_ram1 d1(.clk(sys_clk),
                 .a(index),
                 .d(wdata),
                 .we(en1),
                 .spo(rdata1));

    //instantiation Tag RAM for Way 0:tag,V,U,D
    Tag_ram0 t0(.clk(sys_clk),
                 .a(index),
                 .d(wtag0),
                 .we(ent0),
                 .spo(rtag0));
    
    //instantiation Tag RAM for Way 1
    Tag_ram1 t1(.clk(sys_clk),
                 .a(index),
                 .d(wtag1),
                 .we(ent1),
                 .spo(rtag1));
endmodule
