
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:032default:default2
00:00:102default:default2
1109.7622default:default2
0.0002default:defaultZ17-268h px? 
>
Refreshing IP repositories
234*coregenZ19-234h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2C
/d:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/PCWrite2default:defaultZ19-1700h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2@
,d:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/3NOP2default:defaultZ19-1700h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2D
0d:/ISE/2020/OExp05/OExp5-Testbench/Pipeline_SCPU2default:defaultZ19-1700h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2I
5d:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/Pipeline_SCPU2default:defaultZ19-1700h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
D:/Vivado/Vivado/2020.2/data/ip2default:defaultZ19-2313h px? 
?
jDuplicate IP found for '%s'. The one found in IP location '%s' will take precedence over the same IP in %s1161*coregen24
 xilinx.com:user:Pipeline_CPU:1.02default:default2C
/d:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/PCWrite2default:default2?
?locations: 
   d:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/3NOP
   d:/ISE/2020/OExp05/OExp5-Testbench/Pipeline_SCPU
   d:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/Pipeline_SCPU
2default:defaultZ19-1663h px? 
{
Command: %s
53*	vivadotcl2J
6synth_design -top Pipeline_CPU -part xc7k160tffg676-2L2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7k160t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7k160t2default:defaultZ17-349h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
100282default:defaultZ8-7075h px? 
?
%s*synth2?
rStarting Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1109.762 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2 
Pipeline_CPU2default:default2
 2default:default2t
^D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/new/Pipeline_CPU.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
Pipeline_IF2default:default2
 2default:default2?
kD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Instruction_Fetch.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	MUX2T1_322default:default2
 2default:default2y
cD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/MUX2T1_32.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	MUX2T1_322default:default2
 2default:default2
12default:default2
12default:default2y
cD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/MUX2T1_32.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
REG322default:default2
 2default:default2u
_D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/REG32.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
REG322default:default2
 2default:default2
22default:default2
12default:default2u
_D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/REG32.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
add_322default:default2
 2default:default2v
`D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/add_32.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
add_322default:default2
 2default:default2
32default:default2
12default:default2v
`D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/add_32.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Pipeline_IF2default:default2
 2default:default2
42default:default2
12default:default2?
kD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Instruction_Fetch.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	IF_reg_ID2default:default2
 2default:default2y
cD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/IF_reg_ID.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	IF_reg_ID2default:default2
 2default:default2
52default:default2
12default:default2y
cD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/IF_reg_ID.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Pipeline_ID2default:default2
 2default:default2?
mD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Instruction Decoder.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
Regs2default:default2
 2default:default2t
^D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Regs.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Regs2default:default2
 2default:default2
62default:default2
12default:default2t
^D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Regs.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ImmGen2default:default2
 2default:default2v
`D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/ImmGen.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ImmGen2default:default2
 2default:default2
72default:default2
12default:default2v
`D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/ImmGen.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
SCPU_ctrl_more2default:default2
 2default:default2~
hD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/SCPU_ctrl_more.v2default:default2
232default:default8@Z8-6157h px? 
?
default block is never used226*oasys2~
hD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/SCPU_ctrl_more.v2default:default2
1102default:default8@Z8-226h px? 
?
default block is never used226*oasys2~
hD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/SCPU_ctrl_more.v2default:default2
1182default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
SCPU_ctrl_more2default:default2
 2default:default2
82default:default2
12default:default2~
hD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/SCPU_ctrl_more.v2default:default2
232default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	MIO_ready2default:default2"
SCPU_ctrl_more2default:default2

Controller2default:default2?
mD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Instruction Decoder.v2default:default2
1332default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CPU_MIO2default:default2"
SCPU_ctrl_more2default:default2

Controller2default:default2?
mD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Instruction Decoder.v2default:default2
1332default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

Controller2default:default2"
SCPU_ctrl_more2default:default2
162default:default2
142default:default2?
mD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Instruction Decoder.v2default:default2
1332default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Pipeline_ID2default:default2
 2default:default2
92default:default2
12default:default2?
mD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Instruction Decoder.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	ID_reg_Ex2default:default2
 2default:default2y
cD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/ID_reg_Ex.v2default:default2
212default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	ID_reg_Ex2default:default2
 2default:default2
102default:default2
12default:default2y
cD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/ID_reg_Ex.v2default:default2
212default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Pipeline_EX2default:default2
 2default:default2{
eD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Pipeline_EX.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2s
]D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Alu.v2default:default2
232default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter one bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter zero_0 bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
112default:default2
12default:default2s
]D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Alu.v2default:default2
232default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
overflow2default:default2
ALU2default:default2
ALU_02default:default2{
eD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Pipeline_EX.v2default:default2
562default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
ALU_02default:default2
ALU2default:default2
62default:default2
52default:default2{
eD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Pipeline_EX.v2default:default2
562default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Pipeline_EX2default:default2
 2default:default2
122default:default2
12default:default2{
eD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Pipeline_EX.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

Ex_reg_Mem2default:default2
 2default:default2z
dD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Ex_reg_Mem.v2default:default2
222default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Ex_reg_Mem2default:default2
 2default:default2
132default:default2
12default:default2z
dD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Ex_reg_Mem.v2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
Pipeline_Mem2default:default2
 2default:default2|
fD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Pipeline_Mem.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
AND2default:default2
 2default:default2s
]D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/AND.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND2default:default2
 2default:default2
142default:default2
12default:default2s
]D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/AND.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
OR2default:default2
 2default:default2r
\D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/OR.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OR2default:default2
 2default:default2
152default:default2
12default:default2r
\D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/OR.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
Pipeline_Mem2default:default2
 2default:default2
162default:default2
12default:default2|
fD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Pipeline_Mem.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

Mem_reg_WB2default:default2
 2default:default2z
dD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Mem_reg_WB.v2default:default2
222default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Mem_reg_WB2default:default2
 2default:default2
172default:default2
12default:default2z
dD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Mem_reg_WB.v2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Pipeline_WB2default:default2
 2default:default2{
eD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Pipeline_WB.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	MUX4T1_322default:default2
 2default:default2y
cD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/MUX4T1_32.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	MUX4T1_322default:default2
 2default:default2
182default:default2
12default:default2y
cD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/MUX4T1_32.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Pipeline_WB2default:default2
 2default:default2
192default:default2
12default:default2{
eD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/imports/new/Pipeline_WB.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
stall2default:default2
 2default:default2m
WD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/new/stall.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
stall2default:default2
 2default:default2
202default:default2
12default:default2m
WD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/new/stall.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
Pipeline_CPU2default:default2
 2default:default2
212default:default2
12default:default2t
^D:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.srcs/sources_1/new/Pipeline_CPU.v2default:default2
232default:default8@Z8-6155h px? 
?
%s*synth2?
rFinished Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1109.762 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 1109.762 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Loading part: xc7k160tffg676-2L
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
X
Loading part %s157*device2%
xc7k160tffg676-2L2default:defaultZ21-403h px? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 1109.762 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:11 . Memory (MB): peak = 1109.762 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 50    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 15    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 32    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  11 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2m
YPart Resources:
DSPs: 600 (col length:100)
BRAMs: 650 (col length: RAMB18 100 RAMB36 50)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:03:11 ; elapsed = 00:03:25 . Memory (MB): peak = 2079.629 ; gain = 969.867
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:03:12 ; elapsed = 00:03:26 . Memory (MB): peak = 2079.629 ; gain = 969.867
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:03:13 ; elapsed = 00:03:27 . Memory (MB): peak = 2079.629 ; gain = 969.867
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:03:17 ; elapsed = 00:03:31 . Memory (MB): peak = 2079.629 ; gain = 969.867
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:03:17 ; elapsed = 00:03:31 . Memory (MB): peak = 2079.629 ; gain = 969.867
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:03:17 ; elapsed = 00:03:31 . Memory (MB): peak = 2079.629 ; gain = 969.867
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:03:17 ; elapsed = 00:03:31 . Memory (MB): peak = 2079.629 ; gain = 969.867
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:03:17 ; elapsed = 00:03:31 . Memory (MB): peak = 2079.629 ; gain = 969.867
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:03:17 ; elapsed = 00:03:31 . Memory (MB): peak = 2079.629 ; gain = 969.867
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    48|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     1|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |   245|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    68|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    99|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |   212|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |   959|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |   256|
2default:defaulth px? 
D
%s*synth2,
|10    |FDCE   |  1608|
2default:defaulth px? 
D
%s*synth2,
|11    |FDPE   |     1|
2default:defaulth px? 
D
%s*synth2,
|12    |IBUF   |    66|
2default:defaulth px? 
D
%s*synth2,
|13    |OBUF   |  1572|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
X
%s
*synth2@
,+------+--------------+------------+------+
2default:defaulth p
x
? 
X
%s
*synth2@
,|      |Instance      |Module      |Cells |
2default:defaulth p
x
? 
X
%s
*synth2@
,+------+--------------+------------+------+
2default:defaulth p
x
? 
X
%s
*synth2@
,|1     |top           |            |  5136|
2default:defaulth p
x
? 
X
%s
*synth2@
,|2     |  Ex          |Pipeline_EX |    40|
2default:defaulth p
x
? 
X
%s
*synth2@
,|3     |    ALU_0     |ALU         |    24|
2default:defaulth p
x
? 
X
%s
*synth2@
,|4     |    add_32_1  |add_32      |     8|
2default:defaulth p
x
? 
X
%s
*synth2@
,|5     |    add_32_2  |add_32_0    |     8|
2default:defaulth p
x
? 
X
%s
*synth2@
,|6     |  Ex_REG_Mem  |Ex_reg_Mem  |   262|
2default:defaulth p
x
? 
X
%s
*synth2@
,|7     |  ID          |Pipeline_ID |  1824|
2default:defaulth p
x
? 
X
%s
*synth2@
,|8     |    Regs_0    |Regs        |  1824|
2default:defaulth p
x
? 
X
%s
*synth2@
,|9     |  ID_REG_EX   |ID_reg_Ex   |   771|
2default:defaulth p
x
? 
X
%s
*synth2@
,|10    |  IF          |Pipeline_IF |    64|
2default:defaulth p
x
? 
X
%s
*synth2@
,|11    |    PC        |REG32       |    64|
2default:defaulth p
x
? 
X
%s
*synth2@
,|12    |  IF_REG_ID   |IF_reg_ID   |   305|
2default:defaulth p
x
? 
X
%s
*synth2@
,|13    |  Mem_REG_WB  |Mem_reg_WB  |   199|
2default:defaulth p
x
? 
X
%s
*synth2@
,|14    |  WB          |Pipeline_WB |    32|
2default:defaulth p
x
? 
X
%s
*synth2@
,|15    |    MUX4T1_32 |MUX4T1_32   |    32|
2default:defaulth p
x
? 
X
%s
*synth2@
,+------+--------------+------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:03:17 ; elapsed = 00:03:31 . Memory (MB): peak = 2079.629 ; gain = 969.867
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 5 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:03:17 ; elapsed = 00:03:31 . Memory (MB): peak = 2079.629 ; gain = 969.867
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:03:17 ; elapsed = 00:03:31 . Memory (MB): peak = 2079.629 ; gain = 969.867
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1022default:default2
2079.6292default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
3042default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
2079.6292default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
622default:default2
62default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:03:252default:default2
00:03:452default:default2
2079.6292default:default2
969.8672default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2n
ZD:/ISE/2020/OExp05/OExp5_3-Pipeline_CPU/OExp5_3-Pipeline_CPU.runs/synth_1/Pipeline_CPU.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
nExecuting : report_utilization -file Pipeline_CPU_utilization_synth.rpt -pb Pipeline_CPU_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Jun  4 16:06:00 20212default:defaultZ17-206h px? 


End Record