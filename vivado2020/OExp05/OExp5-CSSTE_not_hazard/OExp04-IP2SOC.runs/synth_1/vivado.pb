
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:102default:default2
00:00:152default:default2
1074.2032default:default2
0.0002default:defaultZ17-268h px? 
>
Refreshing IP repositories
234*coregenZ19-234h px? 
|
 Loaded user IP repository '%s'.
1135*coregen25
!d:/ISE/2020/OExp05/OExp5-CSSTE/IP2default:defaultZ19-1700h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
D:/Vivado/Vivado/2020.2/data/ip2default:defaultZ19-2313h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2'
update_ip_catalog: 2default:default2
00:00:032default:default2
00:00:052default:default2
1074.2032default:default2
0.0002default:defaultZ17-268h px? 
|
Command: %s
53*	vivadotcl2K
7synth_design -top CSSTE_wrapper -part xc7k160tffg676-2L2default:defaultZ4-113h px? 
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
X
Loading part %s157*device2%
xc7k160tffg676-2L2default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
147762default:defaultZ8-7075h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:11 ; elapsed = 00:00:23 . Memory (MB): peak = 1144.543 ; gain = 70.340
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2!
CSSTE_wrapper2default:default2
 2default:default2n
XD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/hdl/CSSTE_wrapper.v2default:default2
122default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
CSSTE2default:default2
 2default:default2h
RD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/synth/CSSTE.v2default:default2
212default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2%
CSSTE_xlslice_0_32default:default2
 2default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_3/synth/CSSTE_xlslice_0_3.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2*
xlslice_v1_0_2_xlslice2default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIN_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIN_FROM bound to: 11 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DIN_TO bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
xlslice_v1_0_2_xlslice2default:default2
 2default:default2
12default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
CSSTE_xlslice_0_32default:default2
 2default:default2
22default:default2
12default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_3/synth/CSSTE_xlslice_0_3.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
CSSTE_xlslice_0_82default:default2
 2default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_8/synth/CSSTE_xlslice_0_8.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2:
&xlslice_v1_0_2_xlslice__parameterized02default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIN_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIN_FROM bound to: 31 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DIN_TO bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&xlslice_v1_0_2_xlslice__parameterized02default:default2
 2default:default2
22default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
CSSTE_xlslice_0_82default:default2
 2default:default2
32default:default2
12default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_8/synth/CSSTE_xlslice_0_8.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
CSSTE_Pipeline_CPU_0_02default:default2
 2default:default2?
}d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_Pipeline_CPU_0_0/synth/CSSTE_Pipeline_CPU_0_0.v2default:default2
582default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
Pipeline_CPU2default:default2
 2default:default2{
ed:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Pipeline_CPU.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2%
Instruction_Fetch2default:default2
 2default:default2?
jd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction_Fetch.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	MUX2T1_322default:default2
 2default:default2x
bd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/MUX2T1_32.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	MUX2T1_322default:default2
 2default:default2
42default:default2
12default:default2x
bd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/MUX2T1_32.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
REG322default:default2
 2default:default2t
^d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/REG32.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
REG322default:default2
 2default:default2
52default:default2
12default:default2t
^d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/REG32.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
add_322default:default2
 2default:default2u
_d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/add_32.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
add_322default:default2
 2default:default2
62default:default2
12default:default2u
_d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/add_32.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
Instruction_Fetch2default:default2
 2default:default2
72default:default2
12default:default2?
jd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction_Fetch.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	IF_reg_ID2default:default2
 2default:default2x
bd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/IF_reg_ID.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	IF_reg_ID2default:default2
 2default:default2
82default:default2
12default:default2x
bd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/IF_reg_ID.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2'
Instruction_Decoder2default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
Regs2default:default2
 2default:default2s
]d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Regs.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Regs2default:default2
 2default:default2
92default:default2
12default:default2s
]d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Regs.v2default:default2
232default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
x02default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
ra2default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
sp2default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
gp2default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
tp2default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
t02default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
t12default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
t22default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s02default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s12default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
a02default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
a12default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
a22default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
a32default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
a42default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
a52default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
a62default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
a72default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s22default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s32default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s42default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s52default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s62default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s72default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s82default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s92default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s102default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
s112default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
t32default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
t42default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
t52default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
t62default:default2
Regs2default:default2
Regs_02default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
Regs_02default:default2
Regs2default:default2
412default:default2
92default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
432default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2
ImmGen2default:default2
 2default:default2u
_d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/ImmGen.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ImmGen2default:default2
 2default:default2
102default:default2
12default:default2u
_d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/ImmGen.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
SCPU_ctrl_more2default:default2
 2default:default2}
gd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/SCPU_ctrl_more.v2default:default2
232default:default8@Z8-6157h px? 
?
default block is never used226*oasys2}
gd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/SCPU_ctrl_more.v2default:default2
982default:default8@Z8-226h px? 
?
default block is never used226*oasys2}
gd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/SCPU_ctrl_more.v2default:default2
1062default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
SCPU_ctrl_more2default:default2
 2default:default2
112default:default2
12default:default2}
gd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/SCPU_ctrl_more.v2default:default2
232default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	MIO_ready2default:default2"
SCPU_ctrl_more2default:default2

Controller2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
622default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CPU_MIO2default:default2"
SCPU_ctrl_more2default:default2

Controller2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
622default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

Controller2default:default2"
SCPU_ctrl_more2default:default2
142default:default2
122default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
622default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
Instruction_Decoder2default:default2
 2default:default2
122default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Instruction Decoder.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	ID_reg_Ex2default:default2
 2default:default2x
bd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/ID_reg_Ex.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	ID_reg_Ex2default:default2
 2default:default2
132default:default2
12default:default2x
bd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/ID_reg_Ex.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Pipeline_EX2default:default2
 2default:default2z
dd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Pipeline_EX.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2r
\d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Alu.v2default:default2
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
142default:default2
12default:default2r
\d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Alu.v2default:default2
232default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
overflow2default:default2
ALU2default:default2
ALU_02default:default2z
dd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Pipeline_EX.v2default:default2
562default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
ALU_02default:default2
ALU2default:default2
62default:default2
52default:default2z
dd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Pipeline_EX.v2default:default2
562default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Pipeline_EX2default:default2
 2default:default2
152default:default2
12default:default2z
dd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Pipeline_EX.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

Ex_reg_Mem2default:default2
 2default:default2y
cd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Ex_reg_Mem.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Ex_reg_Mem2default:default2
 2default:default2
162default:default2
12default:default2y
cd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Ex_reg_Mem.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
Pipeline_Mem2default:default2
 2default:default2{
ed:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Pipeline_Mem.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
AND2default:default2
 2default:default2r
\d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/AND.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND2default:default2
 2default:default2
172default:default2
12default:default2r
\d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/AND.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
OR2default:default2
 2default:default2q
[d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/OR.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OR2default:default2
 2default:default2
182default:default2
12default:default2q
[d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/OR.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
Pipeline_Mem2default:default2
 2default:default2
192default:default2
12default:default2{
ed:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Pipeline_Mem.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

Mem_reg_WB2default:default2
 2default:default2y
cd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Mem_reg_WB.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Mem_reg_WB2default:default2
 2default:default2
202default:default2
12default:default2y
cd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Mem_reg_WB.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
Pipeline_WB2default:default2
 2default:default2z
dd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Pipeline_WB.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	MUX4T1_322default:default2
 2default:default2x
bd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/MUX4T1_32.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	MUX4T1_322default:default2
 2default:default2
212default:default2
12default:default2x
bd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/MUX4T1_32.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Pipeline_WB2default:default2
 2default:default2
222default:default2
12default:default2z
dd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Pipeline_WB.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
Pipeline_CPU2default:default2
 2default:default2
232default:default2
12default:default2{
ed:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3fd5/src/Pipeline_CPU.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
CSSTE_Pipeline_CPU_0_02default:default2
 2default:default2
242default:default2
12default:default2?
}d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_Pipeline_CPU_0_0/synth/CSSTE_Pipeline_CPU_0_0.v2default:default2
582default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2'
CSSTE_Counter_x_0_02default:default2
 2default:default2?
wd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_Counter_x_0_0/synth/CSSTE_Counter_x_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	Counter_x2default:default2
 2default:default2t
^d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/22cf/Counter_x.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Counter_x2default:default2
 2default:default2
252default:default2
12default:default2t
^d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/22cf/Counter_x.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
CSSTE_Counter_x_0_02default:default2
 2default:default2
262default:default2
12default:default2?
wd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_Counter_x_0_0/synth/CSSTE_Counter_x_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
CSSTE_VGA_0_02default:default2
 2default:default2?
kd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_VGA_0_0/synth/CSSTE_VGA_0_0.v2default:default2
582default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
VGA2default:default2
 2default:default2?
jd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/5c73/imports/Framework/VGA.v2default:default2
22default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
VgaController2default:default2
 2default:default2?
td:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/5c73/imports/Framework/VgaController.v2default:default2
12default:default8@Z8-6157h px? 
Z
%s
*synth2B
.	Parameter HS_1 bound to: 96 - type: integer 
2default:defaulth p
x
? 
Y
%s
*synth2A
-	Parameter VS_1 bound to: 2 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter HS_2 bound to: 157 - type: integer 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	Parameter VS_2 bound to: 57 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter WIDTH bound to: 640 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter HEIGHT bound to: 480 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
VgaController2default:default2
 2default:default2
272default:default2
12default:default2?
td:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/5c73/imports/Framework/VgaController.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

VgaDisplay2default:default2
 2default:default2?
qd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/5c73/imports/Framework/VgaDisplay.v2default:default2
12default:default8@Z8-6157h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2'
D:\vga_debugger.mem2default:default2?
qd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/5c73/imports/Framework/VgaDisplay.v2default:default2
152default:default8@Z8-3876h px? 
?
,$readmem data file '%s' is read successfully3426*oasys2$
D:\font_8x16.mem2default:default2?
qd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/5c73/imports/Framework/VgaDisplay.v2default:default2
252default:default8@Z8-3876h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

VgaDisplay2default:default2
 2default:default2
282default:default2
12default:default2?
qd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/5c73/imports/Framework/VgaDisplay.v2default:default2
12default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
VgaDebugger2default:default2
 2default:default2?
rd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/5c73/imports/Framework/VgaDebugger.v2default:default2
312default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	Hex2Ascii2default:default2
 2default:default2?
rd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/5c73/imports/Framework/VgaDebugger.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	Hex2Ascii2default:default2
 2default:default2
292default:default2
12default:default2?
rd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/5c73/imports/Framework/VgaDebugger.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VgaDebugger2default:default2
 2default:default2
302default:default2
12default:default2?
rd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/5c73/imports/Framework/VgaDebugger.v2default:default2
312default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
VGA2default:default2
 2default:default2
312default:default2
12default:default2?
jd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/5c73/imports/Framework/VGA.v2default:default2
22default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
CSSTE_VGA_0_02default:default2
 2default:default2
322default:default2
12default:default2?
kd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_VGA_0_0/synth/CSSTE_VGA_0_0.v2default:default2
582default:default8@Z8-6155h px? 
?
synthesizing module '%s'638*oasys2*
CSSTE_dist_mem_gen_0_02default:default2?
d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_dist_mem_gen_0_0/synth/CSSTE_dist_mem_gen_0_0.vhd2default:default2
662default:default8@Z8-638h px? 
b
%s
*synth2J
6	Parameter C_FAMILY bound to: kintex7 - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_ADDR_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_DEPTH bound to: 1024 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_CLK bound to: 0 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_HAS_D bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_DPO bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_DPRA bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_I_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_QDPO bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_QDPO_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_QDPO_CLK bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_QDPO_RST bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_HAS_QDPO_SRST bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_QSPO bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_QSPO_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_QSPO_RST bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_HAS_QSPO_SRST bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_SPO bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_HAS_WE bound to: 0 - type: integer 
2default:defaulth p
x
? 
|
%s
*synth2d
P	Parameter C_MEM_INIT_FILE bound to: CSSTE_dist_mem_gen_0_0.mif - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_MEM_TYPE bound to: 0 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_PIPELINE_STAGES bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_QCE_JOINED bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_QUALIFY_WE bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_READ_MIF bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_REG_A_D_INPUTS bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_REG_DPRA_INPUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_SYNC_ENABLE bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_PARSER_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
dist_mem_gen_v8_0_132default:default2?
vd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/0bf5/hdl/dist_mem_gen_v8_0_vhsyn_rfs.vhd2default:default2
32372default:default2
U02default:default2(
dist_mem_gen_v8_0_132default:default2?
d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_dist_mem_gen_0_0/synth/CSSTE_dist_mem_gen_0_0.vhd2default:default2
1322default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2*
CSSTE_dist_mem_gen_0_02default:default2
362default:default2
12default:default2?
d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_dist_mem_gen_0_0/synth/CSSTE_dist_mem_gen_0_0.vhd2default:default2
662default:default8@Z8-256h px? 
?
synthesizing module '%s'%s4497*oasys2%
CSSTE_MIO_BUS_0_02default:default2
 2default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_MIO_BUS_0_0/synth/CSSTE_MIO_BUS_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
MIO_BUS2default:default2
 2default:default2r
\d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/6153/MIO_BUS.v2default:default2
232default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2r
\d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/6153/MIO_BUS.v2default:default2
662default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2r
\d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/6153/MIO_BUS.v2default:default2
1012default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MIO_BUS2default:default2
 2default:default2
372default:default2
12default:default2r
\d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/6153/MIO_BUS.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
CSSTE_MIO_BUS_0_02default:default2
 2default:default2
382default:default2
12default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_MIO_BUS_0_0/synth/CSSTE_MIO_BUS_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2)
CSSTE_Multi_8CH32_0_02default:default2
 2default:default2?
{d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_Multi_8CH32_0_0/synth/CSSTE_Multi_8CH32_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
Multi_8CH322default:default2
 2default:default2z
dd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/1191/new/Multi_8CH32.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	MUX8T1_322default:default2
 2default:default2?
jd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/1191/imports/new/MUX8T1_32.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	MUX8T1_322default:default2
 2default:default2
392default:default2
12default:default2?
jd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/1191/imports/new/MUX8T1_32.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
MUX8T1_82default:default2
 2default:default2
id:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/1191/imports/new/MUX8T1_8.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MUX8T1_82default:default2
 2default:default2
402default:default2
12default:default2
id:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/1191/imports/new/MUX8T1_8.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Multi_8CH322default:default2
 2default:default2
412default:default2
12default:default2z
dd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/1191/new/Multi_8CH32.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
CSSTE_Multi_8CH32_0_02default:default2
 2default:default2
422default:default2
12default:default2?
{d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_Multi_8CH32_0_0/synth/CSSTE_Multi_8CH32_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2'
CSSTE_SSeg7_Dev_0_02default:default2
 2default:default2?
wd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_SSeg7_Dev_0_0/synth/CSSTE_SSeg7_Dev_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	SSeg7_Dev2default:default2
 2default:default2t
^d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/SSeg7_Dev.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	MUX2T1_642default:default2
 2default:default2t
^d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/MUX2T1_64.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	MUX2T1_642default:default2
 2default:default2
432default:default2
12default:default2t
^d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/MUX2T1_64.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
P2S2default:default2
 2default:default2n
Xd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/P2S.v2default:default2
232default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_BITS bound to: 64 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter DATA_COUNT_BITS bound to: 6 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter S_IDLE bound to: 0 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter S_TRAN bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter S_CLKN bound to: 2 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter S_DONE bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2n
Xd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/P2S.v2default:default2
632default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
P2S2default:default2
 2default:default2
442default:default2
12default:default2n
Xd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/P2S.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	HexTo8SEG2default:default2
 2default:default2t
^d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/HexTo8SEG.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
Hex2Seg2default:default2
 2default:default2t
^d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/HexTo8SEG.v2default:default2
432default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
MC14495_ZJU2default:default2
 2default:default2v
`d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/MC14495_ZJU.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
INV2default:default2
 2default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
361642default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
INV2default:default2
 2default:default2
452default:default2
12default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
361642default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
AND42default:default2
 2default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
5702default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND42default:default2
 2default:default2
462default:default2
12default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
5702default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
OR42default:default2
 2default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
501162default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OR42default:default2
 2default:default2
472default:default2
12default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
501162default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
AND32default:default2
 2default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
5222default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND32default:default2
 2default:default2
482default:default2
12default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
5222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
OR32default:default2
 2default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
500682default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OR32default:default2
 2default:default2
492default:default2
12default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
500682default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
AND22default:default2
 2default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
4742default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
AND22default:default2
 2default:default2
502default:default2
12default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
4742default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
OR22default:default2
 2default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
500222default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
OR22default:default2
 2default:default2
512default:default2
12default:default2K
5D:/Vivado/Vivado/2020.2/scripts/rt/data/unisim_comp.v2default:default2
500222default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MC14495_ZJU2default:default2
 2default:default2
522default:default2
12default:default2v
`d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/MC14495_ZJU.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Hex2Seg2default:default2
 2default:default2
532default:default2
12default:default2t
^d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/HexTo8SEG.v2default:default2
432default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	HexTo8SEG2default:default2
 2default:default2
542default:default2
12default:default2t
^d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/HexTo8SEG.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
SSeg_map2default:default2
 2default:default2s
]d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/SSeg_map.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SSeg_map2default:default2
 2default:default2
552default:default2
12default:default2s
]d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/SSeg_map.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	SSeg7_Dev2default:default2
 2default:default2
562default:default2
12default:default2t
^d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/67de/SSeg7_Dev.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
CSSTE_SSeg7_Dev_0_02default:default2
 2default:default2
572default:default2
12default:default2?
wd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_SSeg7_Dev_0_0/synth/CSSTE_SSeg7_Dev_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2"
CSSTE_SPIO_0_02default:default2
 2default:default2?
md:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_SPIO_0_0/synth/CSSTE_SPIO_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
SPIO2default:default2
 2default:default2}
gd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/fd22/sources_1/new/SPIO.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
LED_P2S2default:default2
 2default:default2?
jd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/fd22/sources_1/new/LED_P2S.v2default:default2
232default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DATA_BITS bound to: 16 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter DATA_COUNT_BITS bound to: 4 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter S_IDLE bound to: 0 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter S_TRAN bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter S_CLKN bound to: 2 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter S_DONE bound to: 3 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2?
jd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/fd22/sources_1/new/LED_P2S.v2default:default2
592default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LED_P2S2default:default2
 2default:default2
582default:default2
12default:default2?
jd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/fd22/sources_1/new/LED_P2S.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SPIO2default:default2
 2default:default2
592default:default2
12default:default2}
gd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/fd22/sources_1/new/SPIO.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
CSSTE_SPIO_0_02default:default2
 2default:default2
602default:default2
12default:default2?
md:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_SPIO_0_0/synth/CSSTE_SPIO_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
GPIOf02default:default2"
CSSTE_SPIO_0_02default:default2
U72default:default2h
RD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/synth/CSSTE.v2default:default2
2522default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
U72default:default2"
CSSTE_SPIO_0_02default:default2
122default:default2
112default:default2h
RD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/synth/CSSTE.v2default:default2
2522default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2%
CSSTE_clk_div_0_02default:default2
 2default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_clk_div_0_0/synth/CSSTE_clk_div_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
clk_div2default:default2
 2default:default2?
jd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/0ee6/sources_1/new/clk_div.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_div2default:default2
 2default:default2
612default:default2
12default:default2?
jd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/0ee6/sources_1/new/clk_div.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
CSSTE_clk_div_0_02default:default2
 2default:default2
622default:default2
12default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_clk_div_0_0/synth/CSSTE_clk_div_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2*
CSSTE_SAnti_jitter_0_02default:default2
 2default:default2?
}d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_SAnti_jitter_0_0/synth/CSSTE_SAnti_jitter_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
SAnti_jitter2default:default2
 2default:default2w
ad:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/d1b1/SAnti_jitter.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
SAnti_jitter2default:default2
 2default:default2
632default:default2
12default:default2w
ad:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/d1b1/SAnti_jitter.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2*
CSSTE_SAnti_jitter_0_02default:default2
 2default:default2
642default:default2
12default:default2?
}d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_SAnti_jitter_0_0/synth/CSSTE_SAnti_jitter_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
Key_x2default:default2*
CSSTE_SAnti_jitter_0_02default:default2
U92default:default2h
RD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/synth/CSSTE.v2default:default2
2722default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
Key_out2default:default2*
CSSTE_SAnti_jitter_0_02default:default2
U92default:default2h
RD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/synth/CSSTE.v2default:default2
2722default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	Key_ready2default:default2*
CSSTE_SAnti_jitter_0_02default:default2
U92default:default2h
RD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/synth/CSSTE.v2default:default2
2722default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	pulse_out2default:default2*
CSSTE_SAnti_jitter_0_02default:default2
U92default:default2h
RD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/synth/CSSTE.v2default:default2
2722default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
CR2default:default2*
CSSTE_SAnti_jitter_0_02default:default2
U92default:default2h
RD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/synth/CSSTE.v2default:default2
2722default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
U92default:default2*
CSSTE_SAnti_jitter_0_02default:default2
132default:default2
82default:default2h
RD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/synth/CSSTE.v2default:default2
2722default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2(
CSSTE_xlconstant_0_12default:default2
 2default:default2?
yd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlconstant_0_1/synth/CSSTE_xlconstant_0_1.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys20
xlconstant_v1_1_7_xlconstant2default:default2
 2default:default2?
od:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6157h px? 
R
%s
*synth2:
&	Parameter CONST_VAL bound to: 2'b00 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter CONST_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
xlconstant_v1_1_7_xlconstant2default:default2
 2default:default2
652default:default2
12default:default2?
od:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
CSSTE_xlconstant_0_12default:default2
 2default:default2
662default:default2
12default:default2?
yd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlconstant_0_1/synth/CSSTE_xlconstant_0_1.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
CSSTE_xlconstant_0_02default:default2
 2default:default2?
yd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlconstant_0_0/synth/CSSTE_xlconstant_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2@
,xlconstant_v1_1_7_xlconstant__parameterized02default:default2
 2default:default2?
od:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6157h px? 
?
%s
*synth2y
e	Parameter CONST_VAL bound to: 64'b0000000000000000000000000000000000000000000000000000000000000000 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter CONST_WIDTH bound to: 64 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,xlconstant_v1_1_7_xlconstant__parameterized02default:default2
 2default:default2
662default:default2
12default:default2?
od:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
CSSTE_xlconstant_0_02default:default2
 2default:default2
672default:default2
12default:default2?
yd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlconstant_0_0/synth/CSSTE_xlconstant_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'638*oasys2*
CSSTE_dist_mem_gen_0_12default:default2?
d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_dist_mem_gen_0_1/synth/CSSTE_dist_mem_gen_0_1.vhd2default:default2
692default:default8@Z8-638h px? 
b
%s
*synth2J
6	Parameter C_FAMILY bound to: kintex7 - type: string 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_ADDR_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_DEFAULT_DATA bound to: 0 - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_DEPTH bound to: 1024 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_CLK bound to: 1 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter C_HAS_D bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_DPO bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_DPRA bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_I_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_QDPO bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_QDPO_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_QDPO_CLK bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_QDPO_RST bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_HAS_QDPO_SRST bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_HAS_QSPO bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_HAS_QSPO_CE bound to: 0 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_HAS_QSPO_RST bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_HAS_QSPO_SRST bound to: 0 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_HAS_SPO bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_HAS_WE bound to: 1 - type: integer 
2default:defaulth p
x
? 
|
%s
*synth2d
P	Parameter C_MEM_INIT_FILE bound to: CSSTE_dist_mem_gen_0_1.mif - type: string 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_ELABORATION_DIR bound to: ./ - type: string 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_MEM_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter C_PIPELINE_STAGES bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_QCE_JOINED bound to: 0 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_QUALIFY_WE bound to: 0 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter C_READ_MIF bound to: 1 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_REG_A_D_INPUTS bound to: 0 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter C_REG_DPRA_INPUT bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_SYNC_ENABLE bound to: 1 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter C_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_PARSER_TYPE bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2(
dist_mem_gen_v8_0_132default:default2?
vd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/0bf5/hdl/dist_mem_gen_v8_0_vhsyn_rfs.vhd2default:default2
32372default:default2
U02default:default2(
dist_mem_gen_v8_0_132default:default2?
d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_dist_mem_gen_0_1/synth/CSSTE_dist_mem_gen_0_1.vhd2default:default2
1352default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2*
CSSTE_dist_mem_gen_0_12default:default2
692default:default2
12default:default2?
d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_dist_mem_gen_0_1/synth/CSSTE_dist_mem_gen_0_1.vhd2default:default2
692default:default8@Z8-256h px? 
?
synthesizing module '%s'%s4497*oasys2!
CSSTE_div20_02default:default2
 2default:default2?
kd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_div20_0/synth/CSSTE_div20_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2:
&xlslice_v1_0_2_xlslice__parameterized12default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIN_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIN_FROM bound to: 1 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DIN_TO bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&xlslice_v1_0_2_xlslice__parameterized12default:default2
 2default:default2
692default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
CSSTE_div20_02default:default2
 2default:default2
702default:default2
12default:default2?
kd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_div20_0/synth/CSSTE_div20_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
CSSTE_xlslice_0_62default:default2
 2default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_6/synth/CSSTE_xlslice_0_6.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2:
&xlslice_v1_0_2_xlslice__parameterized22default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIN_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIN_FROM bound to: 11 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DIN_TO bound to: 11 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&xlslice_v1_0_2_xlslice__parameterized22default:default2
 2default:default2
702default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
CSSTE_xlslice_0_62default:default2
 2default:default2
712default:default2
12default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_6/synth/CSSTE_xlslice_0_6.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
CSSTE_xlslice_0_92default:default2
 2default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_9/synth/CSSTE_xlslice_0_9.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2:
&xlslice_v1_0_2_xlslice__parameterized32default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIN_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIN_FROM bound to: 20 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DIN_TO bound to: 20 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&xlslice_v1_0_2_xlslice__parameterized32default:default2
 2default:default2
712default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
CSSTE_xlslice_0_92default:default2
 2default:default2
722default:default2
12default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_9/synth/CSSTE_xlslice_0_9.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
CSSTE_div20_12default:default2
 2default:default2?
kd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_div20_1/synth/CSSTE_div20_1.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2:
&xlslice_v1_0_2_xlslice__parameterized42default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIN_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter DIN_FROM bound to: 25 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter DIN_TO bound to: 25 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&xlslice_v1_0_2_xlslice__parameterized42default:default2
 2default:default2
722default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
CSSTE_div20_12default:default2
 2default:default2
732default:default2
12default:default2?
kd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_div20_1/synth/CSSTE_div20_1.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
CSSTE_xlconcat_0_02default:default2
 2default:default2?
ud:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlconcat_0_0/synth/CSSTE_xlconcat_0_0.v2default:default2
602default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2,
xlconcat_v2_1_4_xlconcat2default:default2
 2default:default2?
md:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v2default:default2
142default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter IN0_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN1_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN2_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN3_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN4_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN5_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN6_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN7_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN8_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN9_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN10_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN11_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN12_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN13_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN14_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN15_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN16_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN17_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN18_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN19_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN20_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN21_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN22_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN23_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN24_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN25_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN26_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN27_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN28_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN29_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN30_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN31_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN32_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN33_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN34_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN35_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN36_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN37_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN38_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN39_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN40_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN41_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN42_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN43_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN44_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN45_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN46_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN47_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN48_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN49_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN50_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN51_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN52_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN53_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN54_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN55_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN56_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN57_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN58_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN59_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN60_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN61_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN62_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN63_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN64_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN65_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN66_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN67_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN68_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN69_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN70_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN71_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN72_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN73_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN74_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN75_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN76_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN77_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN78_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN79_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN80_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN81_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN82_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN83_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN84_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN85_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN86_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN87_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN88_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN89_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN90_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN91_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN92_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN93_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN94_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN95_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN96_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN97_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN98_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN99_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN100_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN101_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN102_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN103_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN104_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN105_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN106_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN107_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN108_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN109_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN110_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN111_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN112_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN113_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN114_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN115_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN116_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN117_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN118_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN119_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN120_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN121_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN122_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN123_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN124_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN125_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN126_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN127_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter dout_width bound to: 64 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter NUM_PORTS bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
xlconcat_v2_1_4_xlconcat2default:default2
 2default:default2
742default:default2
12default:default2?
md:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v2default:default2
142default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
CSSTE_xlconcat_0_02default:default2
 2default:default2
752default:default2
12default:default2?
ud:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlconcat_0_0/synth/CSSTE_xlconcat_0_0.v2default:default2
602default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
CSSTE_xlslice_0_42default:default2
 2default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_4/synth/CSSTE_xlslice_0_4.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2:
&xlslice_v1_0_2_xlslice__parameterized52default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIN_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIN_FROM bound to: 6 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DIN_TO bound to: 6 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&xlslice_v1_0_2_xlslice__parameterized52default:default2
 2default:default2
752default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
CSSTE_xlslice_0_42default:default2
 2default:default2
762default:default2
12default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_4/synth/CSSTE_xlslice_0_4.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
CSSTE_xlslice_0_52default:default2
 2default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_5/synth/CSSTE_xlslice_0_5.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2:
&xlslice_v1_0_2_xlslice__parameterized62default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIN_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIN_FROM bound to: 9 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DIN_TO bound to: 9 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&xlslice_v1_0_2_xlslice__parameterized62default:default2
 2default:default2
762default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
CSSTE_xlslice_0_52default:default2
 2default:default2
772default:default2
12default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_5/synth/CSSTE_xlslice_0_5.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
CSSTE_sw7_5_02default:default2
 2default:default2?
kd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_sw7_5_0/synth/CSSTE_sw7_5_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2:
&xlslice_v1_0_2_xlslice__parameterized72default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIN_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIN_FROM bound to: 0 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DIN_TO bound to: 0 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&xlslice_v1_0_2_xlslice__parameterized72default:default2
 2default:default2
772default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
CSSTE_sw7_5_02default:default2
 2default:default2
782default:default2
12default:default2?
kd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_sw7_5_0/synth/CSSTE_sw7_5_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
CSSTE_xlslice_0_12default:default2
 2default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_1/synth/CSSTE_xlslice_0_1.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2:
&xlslice_v1_0_2_xlslice__parameterized82default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIN_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIN_FROM bound to: 2 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DIN_TO bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&xlslice_v1_0_2_xlslice__parameterized82default:default2
 2default:default2
782default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
CSSTE_xlslice_0_12default:default2
 2default:default2
792default:default2
12default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_1/synth/CSSTE_xlslice_0_1.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
CSSTE_xlslice_0_72default:default2
 2default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_7/synth/CSSTE_xlslice_0_7.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2:
&xlslice_v1_0_2_xlslice__parameterized92default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIN_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIN_FROM bound to: 7 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DIN_TO bound to: 5 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&xlslice_v1_0_2_xlslice__parameterized92default:default2
 2default:default2
792default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
CSSTE_xlslice_0_72default:default2
 2default:default2
802default:default2
12default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_7/synth/CSSTE_xlslice_0_7.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2%
CSSTE_xlslice_0_22default:default2
 2default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_2/synth/CSSTE_xlslice_0_2.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2;
'xlslice_v1_0_2_xlslice__parameterized102default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIN_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIN_FROM bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DIN_TO bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2;
'xlslice_v1_0_2_xlslice__parameterized102default:default2
 2default:default2
802default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
CSSTE_xlslice_0_22default:default2
 2default:default2
812default:default2
12default:default2?
sd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlslice_0_2/synth/CSSTE_xlslice_0_2.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
CSSTE_sw8_12default:default2
 2default:default2}
gd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_sw8_1/synth/CSSTE_sw8_1.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2;
'xlslice_v1_0_2_xlslice__parameterized112default:default2
 2default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter DIN_WIDTH bound to: 16 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DIN_FROM bound to: 9 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DIN_TO bound to: 9 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2;
'xlslice_v1_0_2_xlslice__parameterized112default:default2
 2default:default2
812default:default2
12default:default2?
ld:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v2default:default2
132default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CSSTE_sw8_12default:default2
 2default:default2
822default:default2
12default:default2}
gd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_sw8_1/synth/CSSTE_sw8_1.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2/
CSSTE_util_vector_logic_0_02default:default2
 2default:default2?
?d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_util_vector_logic_0_0/synth/CSSTE_util_vector_logic_0_0.v2default:default2
572default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2>
*util_vector_logic_v2_0_1_util_vector_logic2default:default2
 2default:default2?
vd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v2default:default2
452default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter C_OPERATION bound to: not - type: string 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter C_SIZE bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2>
*util_vector_logic_v2_0_1_util_vector_logic2default:default2
 2default:default2
832default:default2
12default:default2?
vd:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v2default:default2
452default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
CSSTE_util_vector_logic_0_02default:default2
 2default:default2
842default:default2
12default:default2?
?d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_util_vector_logic_0_0/synth/CSSTE_util_vector_logic_0_0.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2/
CSSTE_util_vector_logic_0_12default:default2
 2default:default2?
?d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_util_vector_logic_0_1/synth/CSSTE_util_vector_logic_0_1.v2default:default2
572default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2/
CSSTE_util_vector_logic_0_12default:default2
 2default:default2
852default:default2
12default:default2?
?d:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_util_vector_logic_0_1/synth/CSSTE_util_vector_logic_0_1.v2default:default2
572default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
CSSTE_xlconcat_0_12default:default2
 2default:default2?
ud:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlconcat_0_1/synth/CSSTE_xlconcat_0_1.v2default:default2
602default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:default2
 2default:default2?
md:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v2default:default2
142default:default8@Z8-6157h px? 
_
%s
*synth2G
3	Parameter IN0_WIDTH bound to: 30 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN1_WIDTH bound to: 2 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN2_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN3_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN4_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN5_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN6_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN7_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN8_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter IN9_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN10_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN11_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN12_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN13_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN14_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN15_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN16_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN17_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN18_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN19_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN20_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN21_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN22_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN23_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN24_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN25_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN26_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN27_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN28_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN29_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN30_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN31_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN32_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN33_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN34_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN35_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN36_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN37_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN38_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN39_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN40_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN41_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN42_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN43_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN44_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN45_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN46_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN47_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN48_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN49_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN50_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN51_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN52_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN53_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN54_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN55_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN56_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN57_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN58_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN59_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN60_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN61_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN62_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN63_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN64_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN65_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN66_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN67_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN68_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN69_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN70_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN71_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN72_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN73_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN74_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN75_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN76_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN77_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN78_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN79_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN80_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN81_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN82_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN83_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN84_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN85_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN86_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN87_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN88_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN89_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN90_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN91_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN92_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN93_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN94_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN95_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN96_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN97_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN98_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter IN99_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN100_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN101_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN102_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN103_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN104_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN105_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN106_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN107_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN108_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN109_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN110_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN111_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN112_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN113_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN114_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN115_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN116_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN117_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN118_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN119_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN120_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN121_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN122_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN123_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN124_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN125_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN126_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter IN127_WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter dout_width bound to: 32 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter NUM_PORTS bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:default2
 2default:default2
852default:default2
12default:default2?
md:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v2default:default2
142default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
CSSTE_xlconcat_0_12default:default2
 2default:default2
862default:default2
12default:default2?
ud:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/ip/CSSTE_xlconcat_0_1/synth/CSSTE_xlconcat_0_1.v2default:default2
602default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CSSTE2default:default2
 2default:default2
872default:default2
12default:default2h
RD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/synth/CSSTE.v2default:default2
212default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
CSSTE_wrapper2default:default2
 2default:default2
882default:default2
12default:default2n
XD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/sources_1/bd/CSSTE/hdl/CSSTE_wrapper.v2default:default2
122default:default8@Z8-6155h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:36 ; elapsed = 00:00:58 . Memory (MB): peak = 1269.164 ; gain = 194.961
2default:defaulth px? 
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:38 ; elapsed = 00:01:01 . Memory (MB): peak = 1291.008 ; gain = 216.805
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:38 ; elapsed = 00:01:01 . Memory (MB): peak = 1291.008 ; gain = 216.805
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:012default:default2 
00:00:00.3462default:default2
1291.0082default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
3202default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2u
_D:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/constrs_1/imports/OExp02-IP2SOC/Org-Sword.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2u
_D:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/constrs_1/imports/OExp02-IP2SOC/Org-Sword.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2s
_D:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.srcs/constrs_1/imports/OExp02-IP2SOC/Org-Sword.xdc2default:default23
.Xil/CSSTE_wrapper_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2^
HD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2^
HD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0052default:default2
1379.5702default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 320 instances were transformed.
  AND2 => LUT2: 8 instances
  AND3 => LUT3: 88 instances
  AND4 => LUT4: 72 instances
  INV => LUT1: 40 instances
  OR2 => LUT2: 56 instances
  OR3 => LUT3: 24 instances
  OR4 => LUT4: 32 instances
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:012default:default2 
00:00:00.2712default:default2
1379.5702default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:01:02 ; elapsed = 00:01:31 . Memory (MB): peak = 1379.570 ; gain = 305.367
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
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:01:02 ; elapsed = 00:01:31 . Memory (MB): peak = 1379.570 ; gain = 305.367
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
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:01:03 ; elapsed = 00:01:32 . Memory (MB): peak = 1379.570 ; gain = 305.367
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
P2S2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
LED_P2S2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  S_IDLE |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                  S_TRAN |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                  S_DONE |                               10 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
P2S2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                  S_IDLE |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                  S_TRAN |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                  S_DONE |                               10 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
LED_P2S2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:01:21 ; elapsed = 00:01:51 . Memory (MB): peak = 1379.570 ; gain = 305.367
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
,	   2 Input   33 Bit       Adders := 3     
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
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    8 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 1     
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
.	               64 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               33 Bit    Registers := 3     
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
.	               24 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 29    
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
,	   2 Input   64 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   64 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input   33 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   33 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   33 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    6 Bit        Muxes := 1     
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
,	 416 Input    4 Bit        Muxes := 1     
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
,	   3 Input    4 Bit        Muxes := 1     
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
,	   3 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 54    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    1 Bit        Muxes := 3     
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
,	   4 Input    1 Bit        Muxes := 20    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	 416 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 10    
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
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:02:36 ; elapsed = 00:03:10 . Memory (MB): peak = 1379.570 ; gain = 305.367
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
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
M
%s*synth25
!
ROM: Preliminary Mapping	Report
2default:defaulth px? 
k
%s*synth2S
?+--------------+------------+---------------+----------------+
2default:defaulth px? 
l
%s*synth2T
@|Module Name   | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px? 
k
%s*synth2S
?+--------------+------------+---------------+----------------+
2default:defaulth px? 
l
%s*synth2T
@|VgaDisplay    | p_0_out    | 4096x8        | LUT            | 
2default:defaulth px? 
l
%s*synth2T
@|rom           | rom[1023]  | 1024x30       | LUT            | 
2default:defaulth px? 
l
%s*synth2T
@|CSSTE_VGA_0_0 | p_0_out    | 4096x8        | LUT            | 
2default:defaulth px? 
l
%s*synth2T
@+--------------+------------+---------------+----------------+

2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping	Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+--------------------------+-----------------------------------------------------------+-----------+----------------------+------------------------------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name               | RTL Object                                                | Inference | Size (Depth x Width) | Primitives                   | 
2default:defaulth px? 
?
%s*synth2?
?+--------------------------+-----------------------------------------------------------+-----------+----------------------+------------------------------+
2default:defaulth px? 
?
%s*synth2?
?|CSSTE_i/U11               | inst/vga_display/display_data_reg                         | Implied   | 4 K x 7              | RAM64X1D x 128	RAM64M x 128	 | 
2default:defaulth px? 
?
%s*synth2?
?|CSSTE_i/dist_mem_gen_0/U0 | synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram_reg | Implied   | 1 K x 32             | RAM256X1S x 128	             | 
2default:defaulth px? 
?
%s*synth2?
?+--------------------------+-----------------------------------------------------------+-----------+----------------------+------------------------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:02:53 ; elapsed = 00:03:27 . Memory (MB): peak = 1379.570 ; gain = 305.367
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
}Finished Timing Optimization : Time (s): cpu = 00:02:56 ; elapsed = 00:03:30 . Memory (MB): peak = 1379.570 ; gain = 305.367
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
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
S
%s
*synth2;
'
Distributed RAM: Final Mapping	Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+--------------------------+-----------------------------------------------------------+-----------+----------------------+------------------------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name               | RTL Object                                                | Inference | Size (Depth x Width) | Primitives                   | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+--------------------------+-----------------------------------------------------------+-----------+----------------------+------------------------------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|CSSTE_i/U11               | inst/vga_display/display_data_reg                         | Implied   | 4 K x 7              | RAM64X1D x 128	RAM64M x 128	 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|CSSTE_i/dist_mem_gen_0/U0 | synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram_reg | Implied   | 1 K x 32             | RAM256X1S x 128	             | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+--------------------------+-----------------------------------------------------------+-----------+----------------------+------------------------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
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
|Finished Technology Mapping : Time (s): cpu = 00:03:01 ; elapsed = 00:03:36 . Memory (MB): peak = 1379.570 ; gain = 305.367
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
vFinished IO Insertion : Time (s): cpu = 00:03:10 ; elapsed = 00:03:45 . Memory (MB): peak = 1388.859 ; gain = 314.656
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:03:10 ; elapsed = 00:03:45 . Memory (MB): peak = 1388.859 ; gain = 314.656
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:03:11 ; elapsed = 00:03:46 . Memory (MB): peak = 1388.859 ; gain = 314.656
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:03:11 ; elapsed = 00:03:46 . Memory (MB): peak = 1388.859 ; gain = 314.656
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:03:11 ; elapsed = 00:03:46 . Memory (MB): peak = 1388.859 ; gain = 314.656
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:03:11 ; elapsed = 00:03:46 . Memory (MB): peak = 1388.859 ; gain = 314.656
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
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
G
%s*synth2/
|      |Cell      |Count |
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
G
%s*synth2/
|1     |AND2      |     8|
2default:defaulth px? 
G
%s*synth2/
|2     |AND3      |    88|
2default:defaulth px? 
G
%s*synth2/
|3     |AND4      |    72|
2default:defaulth px? 
G
%s*synth2/
|4     |BUFG      |     1|
2default:defaulth px? 
G
%s*synth2/
|5     |CARRY4    |   101|
2default:defaulth px? 
G
%s*synth2/
|6     |INV       |    40|
2default:defaulth px? 
G
%s*synth2/
|7     |LUT1      |   110|
2default:defaulth px? 
G
%s*synth2/
|8     |LUT2      |   118|
2default:defaulth px? 
G
%s*synth2/
|9     |LUT3      |   122|
2default:defaulth px? 
G
%s*synth2/
|10    |LUT4      |   236|
2default:defaulth px? 
G
%s*synth2/
|11    |LUT5      |   379|
2default:defaulth px? 
G
%s*synth2/
|12    |LUT6      |  2145|
2default:defaulth px? 
G
%s*synth2/
|13    |MUXF7     |   539|
2default:defaulth px? 
G
%s*synth2/
|14    |MUXF8     |   120|
2default:defaulth px? 
G
%s*synth2/
|15    |OR2       |    56|
2default:defaulth px? 
G
%s*synth2/
|16    |OR3       |    24|
2default:defaulth px? 
G
%s*synth2/
|17    |OR4       |    32|
2default:defaulth px? 
G
%s*synth2/
|18    |RAM256X1S |   128|
2default:defaulth px? 
G
%s*synth2/
|19    |RAM64M    |   128|
2default:defaulth px? 
G
%s*synth2/
|20    |RAM64X1D  |    64|
2default:defaulth px? 
G
%s*synth2/
|21    |FDCE      |  1755|
2default:defaulth px? 
G
%s*synth2/
|22    |FDPE      |     3|
2default:defaulth px? 
G
%s*synth2/
|23    |FDRE      |   276|
2default:defaulth px? 
G
%s*synth2/
|24    |FDSE      |     2|
2default:defaulth px? 
G
%s*synth2/
|25    |IBUF      |    22|
2default:defaulth px? 
G
%s*synth2/
|26    |OBUF      |    22|
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:03:11 ; elapsed = 00:03:46 . Memory (MB): peak = 1388.859 ; gain = 314.656
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
FSynthesis finished with 0 errors, 0 critical warnings and 0 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:02:22 ; elapsed = 00:03:31 . Memory (MB): peak = 1388.859 ; gain = 226.094
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:03:11 ; elapsed = 00:03:47 . Memory (MB): peak = 1388.859 ; gain = 314.656
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
00:00:00.3872default:default2
1396.9182default:default2
0.0002default:defaultZ17-268h px? 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
14002default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
w
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
12default:default2
1282default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
1402.0822default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 640 instances were transformed.
  AND2 => LUT2: 8 instances
  AND3 => LUT3: 88 instances
  AND4 => LUT4: 72 instances
  INV => LUT1: 40 instances
  OR2 => LUT2: 56 instances
  OR3 => LUT3: 24 instances
  OR4 => LUT4: 32 instances
  RAM256X1S => RAM256X1S (inverted pins: WCLK) (MUXF7(x2), MUXF8, RAMS64E(x4)): 128 instances
  RAM64M => RAM64M (RAMD64E(x4)): 128 instances
  RAM64X1D => RAM64X1D (RAMD64E(x2)): 64 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2302default:default2
462default:default2
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
00:03:422default:default2
00:04:342default:default2
1402.0822default:default2
327.8792default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2_
KD:/ISE/2020/OExp05/OExp5-CSSTE/OExp04-IP2SOC.runs/synth_1/CSSTE_wrapper.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
pExecuting : report_utilization -file CSSTE_wrapper_utilization_synth.rpt -pb CSSTE_wrapper_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon May 31 08:49:13 20212default:defaultZ17-206h px? 


End Record