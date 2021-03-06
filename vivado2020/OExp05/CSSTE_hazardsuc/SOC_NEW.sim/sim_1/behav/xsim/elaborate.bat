@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Tue Jun 01 19:32:22 +0800 2021
REM SW Build 3064766 on Wed Nov 18 09:12:45 MST 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto a9dad49d401d41c6a87071758a78c593 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L xlslice_v1_0_2 -L util_vector_logic_v2_0_1 -L dist_mem_gen_v8_0_13 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot SCPU_tb_behav xil_defaultlib.SCPU_tb xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto a9dad49d401d41c6a87071758a78c593 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L xlslice_v1_0_2 -L util_vector_logic_v2_0_1 -L dist_mem_gen_v8_0_13 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot SCPU_tb_behav xil_defaultlib.SCPU_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
