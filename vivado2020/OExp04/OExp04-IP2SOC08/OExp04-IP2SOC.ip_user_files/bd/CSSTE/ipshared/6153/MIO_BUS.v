`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/02/20 15:39:10
// Design Name: 
// Module Name: MIO_BUS
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


module MIO_BUS(     input clk,
					input rst,
					input[3:0]BTN,
					input[15:0]SW,
					input mem_w,
					input[31:0]Cpu_data2bus,				//data from CPU
					input[31:0]addr_bus,
					input[31:0]ram_data_out,
					input[15:0]led_out,
					input[31:0]counter_out,
					input counter0_out,
					input counter1_out,
					input counter2_out,
					
					output reg[31:0]Cpu_data4bus,				//write to CPU
					output reg[31:0]ram_data_in,				//from CPU write to Memory
					output reg[9:0]ram_addr,						//Memory Address signals
					output reg data_ram_we,
					output reg GPIOf0000000_we,
					output reg GPIOe0000000_we,
					output reg counter_we,
					output reg[31:0]Peripheral_in
					);
															
reg data_ram_rd, GPIOf0000000_rd, GPIOe0000000_rd, counter_rd;
//wire [15:0]PIO;
wire counter_over;

//RAM & IO decode signals:	
	always @* begin
		data_ram_we = 0;
		data_ram_rd = 0;
		counter_we = 0;
		counter_rd = 0;
		GPIOf0000000_we = 0;
		GPIOe0000000_we = 0;
		GPIOf0000000_rd = 0;
		GPIOe0000000_rd = 0;
		ram_addr = 10'h0;
		ram_data_in = 32'h0;
		Peripheral_in=32'h0;
//		
			
		case(addr_bus[31:28])
			4'h0: begin 				// data_ram (00000000 - 00000ffc, actually lower 4KB RAM)
				data_ram_we = mem_w;
				ram_addr=addr_bus[11:2];
				ram_data_in=Cpu_data2bus;
//				Cpu_data4bus=ram_data_out;
				data_ram_rd = ~mem_w;
			end
			
			4'he: begin 				// 7 Segement LEDs (e0000000 - efffffff, 4 7-seg display)
				GPIOe0000000_we = mem_w;
				Peripheral_in = Cpu_data2bus;
//				Cpu_data4bus =counter_out;					//read from Counter
				GPIOe0000000_rd = ~mem_w;
			end
			4'hf: begin 				// LED   (f0000000 - ffffffff0, 8 LEDs & counter, f000004-fffffff4)
				if(addr_bus[2]) begin			//f0000004
					counter_we = mem_w;
					Peripheral_in = Cpu_data2bus;		//write Counter Value 
//					Cpu_data4bus = counter_out;			//read from Counter
					counter_rd = ~mem_w;
				end 
				else begin		//f0000000
					GPIOf0000000_we = mem_w;
					Peripheral_in =Cpu_data2bus;	//write Counter set & Initialization and light LED
//					Cpu_data4bus = {counter0_out,counter1_out,counter2_out,1'b0,led_out, BTN,SW};
					GPIOf0000000_rd = ~mem_w;
				end 
			end
			
		endcase
	end
	
	always @* begin 											//Data to CPU
	Cpu_data4bus = 32'h0;
		casex({data_ram_rd,GPIOe0000000_rd,counter_rd,GPIOf0000000_rd})
			4'b1xxx: Cpu_data4bus = ram_data_out;		//read from RAM
			4'bx1xx: Cpu_data4bus = counter_out;		//read from Counter
			4'bxx1x: Cpu_data4bus = counter_out;		//read from Counter
			4'bxxx1: Cpu_data4bus = {counter0_out,counter1_out,counter2_out,led_out[12:0], SW}; //read from SW & BTN
		endcase	
	end

endmodule

