#系统时钟
set_property IOSTANDARD LVCMOS18  [get_ports  clk_100mhz]
set_property PACKAGE_PIN AC18     [get_ports  clk_100mhz]
set_property IOSTANDARD LVCMOS18  [get_ports  RSTN]
set_property PACKAGE_PIN W13      [get_ports  RSTN]

#LED串行接口
set_property IOSTANDARD LVCMOS33 [get_ports led_clk]				
set_property PACKAGE_PIN N26     [get_ports led_clk]  
set_property IOSTANDARD LVCMOS33 [get_ports led_clrn]				
set_property PACKAGE_PIN N24     [get_ports led_clrn]
set_property IOSTANDARD LVCMOS33 [get_ports led_sout]				
set_property PACKAGE_PIN M26     [get_ports led_sout]  
set_property IOSTANDARD LVCMOS33 [get_ports LED_PEN]				
set_property PACKAGE_PIN P18     [get_ports LED_PEN]       

#七段码串行接口
set_property IOSTANDARD LVCMOS33 [get_ports seg_clk]				
set_property PACKAGE_PIN M24     [get_ports seg_clk]  
set_property IOSTANDARD LVCMOS33 [get_ports seg_clrn]				
set_property PACKAGE_PIN M20     [get_ports seg_clrn]  
set_property IOSTANDARD LVCMOS33 [get_ports seg_sout]				
set_property PACKAGE_PIN L24     [get_ports seg_sout]  
set_property IOSTANDARD LVCMOS33 [get_ports SEG_PEN]				
set_property PACKAGE_PIN R18     [get_ports SEG_PEN]      

#三色信号灯
set_property IOSTANDARD LVCMOS33 [get_ports RDY]			
set_property PACKAGE_PIN U21     [get_ports RDY  
set_property IOSTANDARD LVCMOS33 [get_ports readn]			
set_property PACKAGE_PIN U22     [get_ports readn]  
set_property IOSTANDARD LVCMOS33 [get_ports CR]				
set_property PACKAGE_PIN V22     [get_ports CR]  

#阵列式按键
set_property IOSTANDARD LVCMOS18 [get_ports {BTN_x[0]}] 			
set_property PACKAGE_PIN V17     [get_ports {BTN_x[0]}]	        
set_property IOSTANDARD LVCMOS18 [get_ports {BTN_x[1]}]				
set_property PACKAGE_PIN W18     [get_ports {BTN_x[1]}]           
set_property IOSTANDARD LVCMOS18 [get_ports {BTN_x[2]}]				
set_property PACKAGE_PIN W19     [get_ports {BTN_x[2]}]           
set_property IOSTANDARD LVCMOS18 [get_ports {BTN_x[3]}]				
set_property PACKAGE_PIN W15     [get_ports {BTN_x[3]}]           
set_property IOSTANDARD LVCMOS18 [get_ports {BTN_x[4]}]				
set_property PACKAGE_PIN W16     [get_ports {BTN_x[4]}]  
set_property IOSTANDARD LVCMOS18 [get_ports {BTN_y[0]}]				
set_property PACKAGE_PIN V18     [get_ports {BTN_y[0]}]           
set_property IOSTANDARD LVCMOS18 [get_ports {BTN_y[1]}]				
set_property PACKAGE_PIN V19     [get_ports {BTN_y[1]}]           
set_property IOSTANDARD LVCMOS18 [get_ports {BTN_y[2]}]				
set_property PACKAGE_PIN V14     [get_ports {BTN_y[2]}]           
set_property IOSTANDARD LVCMOS18 [get_ports {BTN_y[3]}]				
set_property PACKAGE_PIN W14     [get_ports {BTN_y[3]}]  

#switch
set_property IOSTANDARD LVCMOS15 [get_ports {SW[0]}]				
set_property PACKAGE_PIN AA10    [get_ports {SW[0]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[1]}]				
set_property PACKAGE_PIN AB10    [get_ports {SW[1]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[2]}]				
set_property PACKAGE_PIN AA13    [get_ports {SW[2]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[3]}]				
set_property PACKAGE_PIN AA12    [get_ports {SW[3]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[4]}]				
set_property PACKAGE_PIN Y13     [get_ports {SW[4]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[5]}]				
set_property PACKAGE_PIN Y12     [get_ports {SW[5]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[6]}]				
set_property PACKAGE_PIN AD11    [get_ports {SW[6]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[7]}]				
set_property PACKAGE_PIN AD10    [get_ports {SW[7]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[8]}]				
set_property PACKAGE_PIN AE10    [get_ports {SW[8]}]                  
set_property IOSTANDARD LVCMOS15 [get_ports {SW[9]}]				
set_property PACKAGE_PIN AE12    [get_ports {SW[9]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[10]}]			
set_property PACKAGE_PIN AF12    [get_ports {SW[10]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[11]}]			
set_property PACKAGE_PIN AE8     [get_ports {SW[11]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[12]}]			
set_property PACKAGE_PIN AF8     [get_ports {SW[12]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[13]}]			
set_property PACKAGE_PIN AE13    [get_ports {SW[13]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[14]}]			
set_property PACKAGE_PIN AF13    [get_ports {SW[14]}]                 
set_property IOSTANDARD LVCMOS15 [get_ports {SW[15]}]			
set_property PACKAGE_PIN AF10    [get_ports {SW[15]}]  

#ArDUNIO-IO
set_property IOSTANDARD LVCMOS33 [get_ports Buzzer]			
set_property PACKAGE_PIN AF24    [get_ports Buzzer]  
set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENT[0]}]		
set_property PACKAGE_PIN AB22    [get_ports {SEGMENT[0]}]           
set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENT[1]}] 		
set_property PACKAGE_PIN AD24	 [get_ports {SEGMENT[1]}]	        
set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENT[2]}] 		
set_property PACKAGE_PIN AD23	 [get_ports {SEGMENT[2]}]	        
set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENT[3]}] 		
set_property PACKAGE_PIN Y21	 [get_ports {SEGMENT[3]}]	        
set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENT[4]}] 		
set_property PACKAGE_PIN W20	 [get_ports {SEGMENT[4]}]	        
set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENT[5]}] 		
set_property PACKAGE_PIN AC24	 [get_ports {SEGMENT[5]}]	        
set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENT[6]}] 		
set_property PACKAGE_PIN AC23	 [get_ports {SEGMENT[6]}]	        
set_property IOSTANDARD LVCMOS33 [get_ports {SEGMENT[7]}] 		
set_property PACKAGE_PIN AA22	 [get_ports {SEGMENT[7]}]	 

set_property IOSTANDARD LVCMOS33 [get_ports {AN[0]}] 			
set_property PACKAGE_PIN AD21    [get_ports {AN[0]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {AN[1]}] 			
set_property PACKAGE_PIN AC21    [get_ports {AN[1]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {AN[2]}] 			
set_property PACKAGE_PIN AB21    [get_ports {AN[2]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {AN[3]}] 			
set_property PACKAGE_PIN AC22    [get_ports {AN[3]}]   

set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}] 			
set_property PACKAGE_PIN AB26    [get_ports {LED[0]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}] 			
set_property PACKAGE_PIN W24     [get_ports {LED[1]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}] 			
set_property PACKAGE_PIN W23     [get_ports {LED[2]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}] 			
set_property PACKAGE_PIN AB25    [get_ports {LED[3]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {LED[4]}] 			
set_property PACKAGE_PIN AA25    [get_ports {LED[4]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {LED[5]}] 			
set_property PACKAGE_PIN W21     [get_ports {LED[5]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {LED[6]}] 			
set_property PACKAGE_PIN V21     [get_ports {LED[6]}]  
set_property IOSTANDARD LVCMOS33 [get_ports {LED[7]}] 			
set_property PACKAGE_PIN W26     [get_ports {LED[7]}]  



