`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/03/23 23:02:56
// Design Name: 
// Module Name: float32_add
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
module float32_add(A, B, clk,rst, en, fin,result,state,over_underflow);
    //32位浮点加 A+B=result
    //最高位第31位为符号位，第30~23位为偏移码（阶码），第22~0位为尾数（23位）=32位浮点数
    //to implement round,尾数增加3位
    //A=xm*2^xe      B=ym*2^ye
    //rst:清零
    input A, B, clk,rst, en;        //clk--时钟；en---使能;
    output result, fin,state,over_underflow;       //fin为执行结束标志
    wire[31:0] A,B;
    reg[31:0] result;
    wire  clk,fin,en;
    reg[28:0]xm, ym, zm;            //尾数部分用29位：1位符号+2位进位标志+23位尾数+3位round标志
    reg[7:0] xe, ye, ze;            //指数部分8位：
    reg[2:0] state;                 //操作状态
    reg[1:0] over_underflow;        //溢出检测

    parameter WSIG = 28,WMAX = 27;  //28:尾数符号位,27:尾数最高位

    parameter start=3'b000,zerock=3'b001,exequal=3'b010,addm=3'b011,infifl=3'b100,round = 3'b101,flow = 3'b110,over =3'b111; 
    //添加round功能,增加3位尾数

    initial begin
        over_underflow <= 0;
        result <= 0;
        state <= start;
    end

    assign fin = (state == over) ? 1 : 0;
    always@(posedge fin) //如果执行结束
    begin
    if(en)
        result <= {zm[WSIG],ze[7:0],zm[25:3]};  // 将加法结果合成32位浮点，其中zm[WSIG]为符号位
    end

    always@(posedge clk or negedge rst)                //状态机：start->zerock->exequal->addm->infifl->round->over
                                                       //round -> infifl
    begin
        if(rst == 0) begin
            state <= start;
        end
        case(state)
        start:              //前端处理，分离尾数和指数，同时还原尾数
        begin 
            xe <= A[30:23];//A指数(8位)
            xm <= {A[31],1'b0,1'b1,A[22:0],3'b00};//A尾数=符号位+01+22位尾数(01.xxxxxx)+3位round
            ye <= B[30:23];//B指数
            ym <= {B[31],1'b0,1'b1,B[22:0],3'b00};//B尾数
            state <= zerock;//下一状态
            over_underflow <= 0;
        end
        zerock:             //0检测
        begin 
            if(A == 0)      //if A=0,then result=B
            begin   
                {ze, zm} <= {ye, ym};
                state <= over;//结束态
            end
            else if(B == 0)  //if B=0,then result=A
            begin
                {ze, zm} <= {xe, xm};
                state <= over;
            end
            else
                state <= exequal;
        end
        exequal:           //指数处理，使得指数相等
        begin
            if(xe == ye)//如果指数已经相等了，则直接相加
                state <= addm;  //进入加状态
            else 
            if(xe > ye)
            begin
                ye <= ye + 1;     //A的指数加一      
                ym[WMAX:0] <= {1'b0, ym[WMAX:1]}; //A尾数右移一位
                if(ym == 0)  //如果尾数ym为0，继续移位也还是0
                    begin
                    zm <= xm;
                    ze <= xe;
                    state <= over;
                    end
                else
                    state <= exequal;//继续移指数
            end
            else      //xe
            begin
                xe <= xe + 1;   //B的指数加一               
                xm[WMAX:0] <= {1'b0,xm[WMAX:1]};  //B尾数右移一位
                if(xm == 0)   //如果尾数xm为0，继续移位也还是0
                begin
                    zm <= ym;
                    ze <= ye;
                    state <= over;
                end
                else
                    state <= exequal;//继续移指数
            end
        end

        addm:        //带符号位和保留进位的尾数相加
        begin 
            if ((xm[WSIG]^ym[WSIG])==0) //第27位尾数相同（同号数相加）
            begin
                zm[WSIG] <= xm[WSIG];
                zm[WMAX:0] <= xm[WMAX:0]+ym[WMAX:0]; //尾数相加
            end
            else                   //异号数相加实际做尾数减法
            if(xm[WMAX:0]>ym[WMAX:0])  //xm>ym,
                begin
                    zm[WSIG] <= xm[WSIG]; 
                    zm[WMAX:0] <=xm[WMAX:0]-ym[WMAX:0];  //尾数相减
                end
            else             //xm<ym
                begin
                    zm[WSIG] <= ym[WSIG];
                    zm[WMAX:0] <=ym[WMAX:0]-xm[WMAX:0];           
                end
            ze <= xe;
            state <= infifl;
        end

        infifl:                   //尾数规格化处理
        begin 
            if(zm[WMAX]==1)    //和尾数最高位为1
            begin
                zm[27:0] <= {1'b0,zm[27:1]};     //和尾数右移一位，即小数点左移一位
                ze <= ze + 1;   //和指数增加一
                state <= round;
            end
            else
                if(zm[26]==0)   //和尾数的第26位为0(需要左移)
                begin
                    zm[26:0] <= {zm[25:0],1'b0};  //和尾数左移一位，即小数点右移一位
                    ze <= ze - 1;  //和指数减少一  
                    state <= infifl;    //继续执行尾数规格化状态
                end
                else
                    state <= round;
        end
        round:                  //"四舍五入"
        begin
            if(zm[2] == 1 && (zm[1] == 1 || zm[0] == 1)) begin
                zm[WMAX:3] = zm[WMAX:3] + 1;
                zm[2:0] = 0;
                state <= infifl;
            end else begin
                state <= over;
            end
        end
        flow:                   //overflow and underflow detect
        begin
            if(ze == 8'b11111111) begin //overflow
                zm <= 0;
                over_underflow <= 2'b01;
                state <= over;
            end else if(ze == 8'b00000000 && zm[27:26] == 2'b00) begin  //underflow
                zm <= 0;
                over_underflow <= 2'b10;
                state <= over;
            end
        end
        over:
        begin 
            state<= start; //回到初始状态 
        end
        default:
        begin
            state<= start;
        end
        endcase
    end
endmodule