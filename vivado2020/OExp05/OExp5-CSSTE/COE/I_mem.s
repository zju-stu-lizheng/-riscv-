# Supported ISA:
# addi lw add xor sub ori and sw slt xori srl andi or srli jal

addi x1, zero, -1 # x1=FFFFFFFF
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
xori x3, x1, 1 # x3=FFFFFFFE
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFFFFFC
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFFFFF8
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFFFFF0
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFFFFE0
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFFFFC0
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
xor x20, x3, x1 # x20=0000003F
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFFFF80
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFFFF00
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFFFE00
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFFFC00
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFFF800
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFFF000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFFE000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFFC000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFF8000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFF0000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFE0000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFFC0000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFF80000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFF00000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFE00000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FFC00000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FF800000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FF000000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FE000000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x3, x3 # x3=FC000000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x6, x3, x3 # x6=F8000000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x3, x6, x6 # x3=F0000000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x4, x3, x3 # x4=E0000000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x13, x4, x4 # x13=C0000000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x8, x13, x13 # x8=80000000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
ori x26, zero, 1 # x26=00000001
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
andi x26, x26, 0xff
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
srl x27, x8, x26
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
slt x2, x1, zero # x2=00000001 针对ALU32位有符号数减
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x14, x2, x2
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x14, x14, x14 # x14=4
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
sub x19, x14, x14 # x19=0
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
srli x19, x19, 1
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
addi x10, x19, -1	#FFFFFFFF
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
or x10, x10, zero
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x10, x10, x10 # x10=FFFFFFFE
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero

loop1:
sw x6, 0x4(x3) # 计数器端口: F0000004, 送计数常数x6=F8000000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
lw x5, 0x0(x3) # 读GPIO端口F0000000状态: {counter0_out,counter1_out,counter2_out,led_out[12:0], SW}
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x5, x5, x5 # 左移
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x5, x5, x5 # 左移2位将SW与LED对齐, 同时D1D0置00, 选择计数器通道0
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
sw x5, 0x0(x3) # x5输出到GPIO端口F0000000, 设置计数器通道counter_set=00端口
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x9, x9, x2 # x9=x9+1
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
sw x9, 0x0(x4) # x9送x4=E0000000七段码端口
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
lw x13, 0x14(zero) # 取存储器20单元预存数据至x13, 程序计数延时常数
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero

loop2:
lw x5, 0x0(x3) # 读GPIO端口F0000000状态: {out0, out1, out2, D28-D20, LED7
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x5, x5, x5
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x5, x5, x5 # 左移2位将SW与LED对齐, 同时D1D0置00, 选择计数器通道0
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
sw x5, 0x0(x3) # x5输出到GPIO端口F0000000, 计数器通道counter_set=00端口不变
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
lw x5, 0x0(x3) # 再读GPIO端口F0000000状态
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
and x11, x5, x8 # 取最高位=out0, 屏蔽其余位送x11
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x13, x13, x2 # 程序计数延时
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
beq x13, zero, C_init # 程序计数x13=0, 转计数器初始化, 修改7段码显示: C_init
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero

l_next: # 判断7段码显示模式：SW[4: 3]控制
lw x5, 0x0(x3) # 再读GPIO端口F0000000开关SW状态
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x18, x14, x14 # x14=4, x18=00000008
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x22, x18, x18 # x22=00000010
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x18, x18, x22 # x18=00000018(00011000)
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
and x11, x5, x18 # 取SW[4: 3]
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
beq x11, zero, L20 # SW[4: 3]=00, 7段显示"点"循环移位：L20, SW0=0
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
beq x11, x18, L21 # SW[4: 3]=11, 显示七段图形, L21, SW0=0
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x18, x14, x14 # x18=8
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
beq x11, x18, L22 # SW[4: 3]=01, 七段显示预置数字, L22, SW0=1
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
sw x9, 0x0(x4) # SW[4: 3]=10, 显示x9, SW0=1
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
jal zero, loop2
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero

L20:
beq x10, x1, L4 # x10=ffffffff, 转移L4
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
jal zero, L3
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero

L4:
addi x10, zero, -1 # x10=ffffffff
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x10, x10, x10 # x10=fffffffe
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero

L3:
sw x10, 0x0(x4) # SW[4: 3]=00, 7段显示点移位后显示
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
jal zero, loop2
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero

L21:
lw x9, 0x60(x17) # SW[4: 3]=11, 从内存取预存七段图形
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
sw x9, 0x0(x4) # SW[4: 3]=11, 显示七段图形
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
jal zero, loop2
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero

L22:
lw x9, 0x20(x17) # SW[4: 3]=01, 从内存取预存数字
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
sw x9, 0x0(x4) # SW[4: 3]=01, 七段显示预置数字
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
jal zero, loop2
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero

C_init:
lw x13, 0x14(zero) # 取程序计数延时初始化常数
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x10, x10, x10 # x10=fffffffc, 7段图形点左移121 or x10, x10, x2 # x10末位置1, 对应右上角不显示
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x17, x17, x14 # x17=00000004, LED图形访存地址+4
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
and x17, x17, x20 # x17=000000XX, 屏蔽地址高位, 只取6位
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x9, x9, x2 # x9+1
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
beq x9, x1, L6 # 若x9=ffffffff, 重置x9=5
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
jal zero, L7
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero

L6:
add x9, zero, x14 # x9=4
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x9, x9, x2 # 重置x9=5
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero

L7:
lw x5, 0x0(x3) # 读GPIO端口F0000000状态
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x11, x5, x5
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
add x11, x11, x11 # 左移2位将SW与LED对齐, 同时D1D0置00, 选择计数器通道0
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
sw x11, 0x0(x3) # x5输出到GPIO端口F0000000, 计数器通道counter_set=00端口不变
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
sw x6, 0x4(x3) # 计数器端口: F0000004, 送计数常数x6=F8000000
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
jal zero, l_next
add zero, zero, zero
add zero, zero, zero
add zero, zero, zero
