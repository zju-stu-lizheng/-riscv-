#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
# 

echo "This script was generated under a different operating system."
echo "Please update the PATH and LD_LIBRARY_PATH variables below, before executing this script"
exit

if [ -z "$PATH" ]; then
  PATH=D:/ISE/Xilinx/SDK/2017.4/bin;D:/ISE/Xilinx/Vivado/2017.4/ids_lite/ISE/bin/nt64;D:/ISE/Xilinx/Vivado/2017.4/ids_lite/ISE/lib/nt64:D:/ISE/Xilinx/Vivado/2017.4/bin
else
  PATH=D:/ISE/Xilinx/SDK/2017.4/bin;D:/ISE/Xilinx/Vivado/2017.4/ids_lite/ISE/bin/nt64;D:/ISE/Xilinx/Vivado/2017.4/ids_lite/ISE/lib/nt64:D:/ISE/Xilinx/Vivado/2017.4/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='D:/ISE/vivado/OExp04/OExp02-IP2SOC/OExp02-IP2SOC.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .write_bitstream.begin.rst
EAStep vivado -log CSSTE_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source CSSTE_wrapper.tcl -notrace

