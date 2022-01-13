`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/04/08 08:57:00
// Design Name: 
// Module Name: fibonacci
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


module fibonacci(
    input  clk, rst, en,
    input  [6:0]  d,
    output reg[6:0]  f,
    output reg[1:0]cs
    );
    reg [1:0] ns;
    reg [6:0] pf,ppf;   //前两次的f
    parameter S0 = 0,S1 = 1,S2 = 2,S3 = 3;

    // 描述CS :current state
    always  @(posedge clk) begin
        if (rst)   cs <= S0;  //同步复位
        else   cs <= ns;
    end
        
    //计算f
    always @(posedge clk) begin
        case (cs)
        S0: begin
            f = 0;
            pf = 0;
            ppf = 0;
        end
        S1: begin
            f = d;
            ppf = pf;
            pf = f;
        end
        S2: begin
            f = d;
            ppf = pf;
            pf = f;
        end
        S3: begin
            f = pf + ppf;
            ppf = pf;
            pf = f;
        end
        endcase
    end

    // 描述NS:next state
    always  @* begin        
        ns = cs;	     //默认赋值
        if(en) begin
            case (cs)
            S0: begin
                ns = S1; 
            end
            S1: begin
                ns = S2;
            end
            S2: begin
                ns = S3;
            end     
            endcase
        end
    end

endmodule
