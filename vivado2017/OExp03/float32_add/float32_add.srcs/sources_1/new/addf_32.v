`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/28 19:04:13
// Design Name: 
// Module Name: addf_32
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


module addf_32(
        input  clk,
        input  rst,
        input  start,                                   //开始标志
        input[31:0] A,                          //被加数
        input[31:0] B,                           //加数
        output  [31:0] result,               //商
        output reg finish                           //结束标志
    );
    parameter [2:0]  
            S0 = 3'b000,//未开始
            S1 = 3'b001,//检查最开始的0,均非零
            S2 = 3'b010,//均非0，判断指数
            S3 = 3'b011,//指数相等
            S4 = 3'b100,//
            S5 = 3'b101,
            S6 = 3'b110,
            S7 = 3'b111;//结束
    reg [2:0] state;     //state machine
    //reg [2:0] next_state;     //state machine
    reg [7:0] Ae;
    reg [7:0] Be;
    reg [27:0]Am;
    reg [27:0]Bm;
    reg [7:0] Ze;
    reg Zsign;
    reg [27:0] Zm;
    //reg zeroA,zeroB;
    reg overflow;
    reg underflow;
    always @(posedge clk or negedge rst) begin
        if(rst == 1) begin
            state <= S0;
            Ae <= 0;
            Be <= 0;
            Am <= 0;
            Bm <= 0;
            overflow <= 0;
            underflow<= 0;
        end
        
        if(clk) begin
            if(start == 1) begin
                Ae <= A[30:23];
                Be <= B[30:23];
                Am <= {1'b0, 1'b1, A[22:0],3'b0};
                Bm <= {1'b0, 1'b1, B[22:0],3'b0};
                state <= S1;
            end
            else begin
                case(state)   //
                
                    S0: begin   //S0
                        if(A[30:0] == 0) begin
                            Zsign <= B[31];
                            Ze <= Be;
                            Zm <= Bm;
                            state <= S7;
                        end
                        
                        else if(B[30:0] == 0)begin
                            Zsign <= A[31];
                            Ze <= Ae;
                            Zm <= Am;
                            state <= S7;
                        end
                        
                        else begin
                            state <= S1;
                        end
                    end
                    
                    S1: begin  //S1
                        if(Ae > Be) begin
                            Be <= Be+1;
                            Bm <= Bm >> 1;
                            state <= state;
                        end
                        
                        else if(Ae < Be) begin
                            Ae <= Ae+1;
                            Am <= Am >> 1;
                            state <= state;
                        end
                        
                        else begin
                            Ze <= Ae;
                            state <= S2;
                        end
                    end
                    
                    S2: begin    //S2
                        if(A[31] == B[31]) begin
                            Zm <= Am + Bm;
                            Zsign <= A[31];
                            state <= S3;
                        end
                        
                        else begin
                            if(Am > Bm) begin
                                Zm <= Am -Bm;
                                Zsign = A[31];
                                state <= S3;
                            end
                            
                            else if(Am <Bm) begin
                                Zm <= Bm - Am;
                                Zsign <= B[31];
                                state <= S3;
                            end
                            
                            else begin
                                Zm <= 0;
                                Ze <= 0;
                                Zsign <= 0;
                                state <= S7;
                            end
                        end
                    end
                     
                    S3: begin  //S3
                        
                        if(Ze == 8'b1111_1111) begin
                            Zm <= 0;
                            overflow <= 1;
                            state <= S7;
                        end 
                        
                        else if(Ze == 8'b0000_0000 && Zm[27:26] == 2'b00) begin
                            Zm <= 0;
                            underflow <= 1;
                            state <= S7;
                        end
                        
                        else begin
                            if(Zm[27] == 1) begin
                                Zm <= Zm >> 1;
                                Ze <= Ze +1;
                                state <= S3;
                            end
                            else if (Zm[26] == 0)begin
                                Zm <= Zm << 1;
                                Ze <= Ze-1;
                                state <= S3;
                            end
                            else begin
                                state <= S4;
                            end
                        end
                        
                    end
                    
                    S4: begin //S4
                        if(Zm[2] == 0) begin   //0**
                            state <= S7;
                        end
                        
                        else if(Zm[1:0] == 2'b00)begin //100
                            if(Zm[3] == 0) begin
                                state <= S7;
                            end
                            else begin
                                Zm <= Zm + 4'b1000;
                                state <= S3;
                            end
                        end
                        
                        else begin  // 1**
                            Zm <= Zm + 4'b1000;
                            state <= S3;
                        end
                        
                    end
                    
                    S7: begin
                        state <= S7;
                    end
                    default: begin
                        state <= S0;
                    end
                    
                endcase
            end
        end

    end
    always @(*) finish <= (state == S7);
    assign result = {Zsign,Ze,Zm[25:3]};
endmodule
