#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2017.4 (64-bit)
#
# Filename    : CSSTE.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Thu May 20 14:10:05 +0800 2021
# SW Build 2086221 on Fri Dec 15 20:55:39 MST 2017
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved. 
#
# usage: CSSTE.sh [-help]
# usage: CSSTE.sh [-lib_map_path]
# usage: CSSTE.sh [-noclean_files]
# usage: CSSTE.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'CSSTE.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xlslice_v1_0_1 xil_defaultlib util_vector_logic_v2_0_1 xlconcat_v2_1_1 dist_mem_gen_v8_0_12 xlconstant_v1_1_3)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "CSSTE.sh - Script generated by export_simulation (Vivado v2017.4 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  # Compile design files
  vlogan -work xlslice_v1_0_1 $vlogan_opts +v2k \
    "$ref_dir/../../../../OExp02-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_xlslice_0_0/sim/CSSTE_xlslice_0_0.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_xlslice_0_1/sim/CSSTE_xlslice_0_1.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_xlslice_0_2/sim/CSSTE_xlslice_0_2.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/0ee6/sources_1/new/clk_div.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_clk_div_0_0/sim/CSSTE_clk_div_0_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work util_vector_logic_v2_0_1 $vlogan_opts +v2k \
    "$ref_dir/../../../../OExp02-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_util_vector_logic_0_0/sim/CSSTE_util_vector_logic_0_0.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_xlslice_0_3/sim/CSSTE_xlslice_0_3.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_xlslice_0_4/sim/CSSTE_xlslice_0_4.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_xlslice_0_5/sim/CSSTE_xlslice_0_5.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xlconcat_v2_1_1 $vlogan_opts +v2k \
    "$ref_dir/../../../../OExp02-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_xlconcat_0_0/sim/CSSTE_xlconcat_0_0.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_util_vector_logic_1_0/sim/CSSTE_util_vector_logic_1_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work dist_mem_gen_v8_0_12 $vlogan_opts +v2k \
    "$ref_dir/../../../../OExp02-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_dist_mem_gen_0_0/sim/CSSTE_dist_mem_gen_0_0.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_xlslice_0_6/sim/CSSTE_xlslice_0_6.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/67de/HexTo8SEG.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/67de/MC14495_ZJU.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/67de/MUX2T1_64.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/67de/P2S.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/67de/SSeg_map.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/67de/SSeg7_Dev.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_SSeg7_Dev_0_0/sim/CSSTE_SSeg7_Dev_0_0.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/2990/Hex2Ascii.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/2990/VgaController.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/2990/VgaDebugger.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/2990/VgaDisplay.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/2990/VGA.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_VGA_0_0/sim/CSSTE_VGA_0_0.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_xlslice_1_0/sim/CSSTE_xlslice_1_0.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_xlslice_1_1/sim/CSSTE_xlslice_1_1.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_div20_0/sim/CSSTE_div20_0.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_div25_0/sim/CSSTE_div25_0.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_div25_1/sim/CSSTE_div25_1.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xlconstant_v1_1_3 $vlogan_opts +v2k \
    "$ref_dir/../../../../OExp02-IP2SOC.srcs/sources_1/bd/CSSTE/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_xlconstant_0_0/sim/CSSTE_xlconstant_0_0.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_b64_0_0/sim/CSSTE_b64_0_0.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_xlconcat_1_0/sim/CSSTE_xlconcat_1_0.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_xlslice_1_2/sim/CSSTE_xlslice_1_2.v" \
    "$ref_dir/../../../bd/CSSTE/sim/CSSTE.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_dist_mem_gen_0_1/sim/CSSTE_dist_mem_gen_0_1.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/36c8/src/ALU.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/36c8/src/ImmGen.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/36c8/src/MUX2T1_32.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/36c8/src/MUX4T1_32.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/36c8/src/REG32.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/36c8/src/Regs.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/36c8/src/SCPU_ctrl.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/36c8/src/datapath_code.v" \
    "$ref_dir/../../../bd/CSSTE/ipshared/36c8/src/IP2CPU.v" \
    "$ref_dir/../../../bd/CSSTE/ip/CSSTE_IP2CPU_0_0/sim/CSSTE_IP2CPU_0_0.v" \
  2>&1 | tee -a vlogan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.CSSTE xil_defaultlib.glbl -o CSSTE_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./CSSTE_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./CSSTE.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key CSSTE_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc CSSTE_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./CSSTE.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: CSSTE.sh [-help]\n\
Usage: CSSTE.sh [-lib_map_path]\n\
Usage: CSSTE.sh [-reset_run]\n\
Usage: CSSTE.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2