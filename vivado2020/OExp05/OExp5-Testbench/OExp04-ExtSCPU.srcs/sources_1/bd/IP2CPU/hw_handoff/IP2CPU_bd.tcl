
################################################################
# This is a generated script based on design: IP2CPU
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source IP2CPU_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k160tffg676-2L
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name IP2CPU

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set Addr_out [ create_bd_port -dir O -from 31 -to 0 Addr_out ]
  set CPU_MIO [ create_bd_port -dir O CPU_MIO ]
  set Data_in [ create_bd_port -dir I -from 31 -to 0 Data_in ]
  set Data_out [ create_bd_port -dir O -from 31 -to 0 Data_out ]
  set MIO_ready [ create_bd_port -dir I MIO_ready ]
  set MemRW [ create_bd_port -dir O MemRW ]
  set PC_out [ create_bd_port -dir O -from 31 -to 0 PC_out ]
  set a0 [ create_bd_port -dir O -from 31 -to 0 a0 ]
  set a1 [ create_bd_port -dir O -from 31 -to 0 a1 ]
  set a2 [ create_bd_port -dir O -from 31 -to 0 a2 ]
  set a3 [ create_bd_port -dir O -from 31 -to 0 a3 ]
  set a4 [ create_bd_port -dir O -from 31 -to 0 a4 ]
  set a5 [ create_bd_port -dir O -from 31 -to 0 a5 ]
  set a6 [ create_bd_port -dir O -from 31 -to 0 a6 ]
  set a7 [ create_bd_port -dir O -from 31 -to 0 a7 ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set gp [ create_bd_port -dir O -from 31 -to 0 gp ]
  set inst_in [ create_bd_port -dir I -from 31 -to 0 inst_in ]
  set ra [ create_bd_port -dir O -from 31 -to 0 ra ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set s0 [ create_bd_port -dir O -from 31 -to 0 s0 ]
  set s1 [ create_bd_port -dir O -from 31 -to 0 s1 ]
  set s2 [ create_bd_port -dir O -from 31 -to 0 s2 ]
  set s3 [ create_bd_port -dir O -from 31 -to 0 s3 ]
  set s4 [ create_bd_port -dir O -from 31 -to 0 s4 ]
  set s5 [ create_bd_port -dir O -from 31 -to 0 s5 ]
  set s6 [ create_bd_port -dir O -from 31 -to 0 s6 ]
  set s7 [ create_bd_port -dir O -from 31 -to 0 s7 ]
  set s8 [ create_bd_port -dir O -from 31 -to 0 s8 ]
  set s9 [ create_bd_port -dir O -from 31 -to 0 s9 ]
  set s10 [ create_bd_port -dir O -from 31 -to 0 s10 ]
  set s11 [ create_bd_port -dir O -from 31 -to 0 s11 ]
  set sp [ create_bd_port -dir O -from 31 -to 0 sp ]
  set t0 [ create_bd_port -dir O -from 31 -to 0 t0 ]
  set t1 [ create_bd_port -dir O -from 31 -to 0 t1 ]
  set t2 [ create_bd_port -dir O -from 31 -to 0 t2 ]
  set t3 [ create_bd_port -dir O -from 31 -to 0 t3 ]
  set t4 [ create_bd_port -dir O -from 31 -to 0 t4 ]
  set t5 [ create_bd_port -dir O -from 31 -to 0 t5 ]
  set t6 [ create_bd_port -dir O -from 31 -to 0 t6 ]
  set tp [ create_bd_port -dir O -from 31 -to 0 tp ]
  set x0 [ create_bd_port -dir O -from 31 -to 0 x0 ]

  # Create instance: SCPU_ctrl_0, and set properties
  set SCPU_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SCPU_ctrl:1.0 SCPU_ctrl_0 ]

  # Create instance: datapath_wrapper_0, and set properties
  set datapath_wrapper_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:datapath_wrapper:1.0 datapath_wrapper_0 ]

  # Create instance: inst14_12, and set properties
  set inst14_12 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 inst14_12 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {14} \
   CONFIG.DIN_TO {12} \
   CONFIG.DOUT_WIDTH {3} \
 ] $inst14_12

  # Create instance: inst30, and set properties
  set inst30 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 inst30 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {30} \
   CONFIG.DIN_TO {30} \
   CONFIG.DOUT_WIDTH {1} \
 ] $inst30

  # Create instance: inst6_2, and set properties
  set inst6_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 inst6_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {6} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {5} \
 ] $inst6_2

  # Create port connections
  connect_bd_net -net Data_in_1 [get_bd_ports Data_in] [get_bd_pins datapath_wrapper_0/Data_in]
  connect_bd_net -net MIO_ready_0_1 [get_bd_ports MIO_ready] [get_bd_pins SCPU_ctrl_0/MIO_ready]
  connect_bd_net -net SCPU_ctrl_0_ALUSrc_B [get_bd_pins SCPU_ctrl_0/ALUSrc_B] [get_bd_pins datapath_wrapper_0/ALUSrc_B]
  connect_bd_net -net SCPU_ctrl_0_ALU_Control [get_bd_pins SCPU_ctrl_0/ALU_Control] [get_bd_pins datapath_wrapper_0/ALU_Control]
  connect_bd_net -net SCPU_ctrl_0_Branch [get_bd_pins SCPU_ctrl_0/Branch] [get_bd_pins datapath_wrapper_0/Branch]
  connect_bd_net -net SCPU_ctrl_0_BranchN [get_bd_pins SCPU_ctrl_0/BranchN] [get_bd_pins datapath_wrapper_0/BranchN]
  connect_bd_net -net SCPU_ctrl_0_CPU_MIO [get_bd_ports CPU_MIO] [get_bd_pins SCPU_ctrl_0/CPU_MIO]
  connect_bd_net -net SCPU_ctrl_0_ImmSel [get_bd_pins SCPU_ctrl_0/ImmSel] [get_bd_pins datapath_wrapper_0/ImmSel]
  connect_bd_net -net SCPU_ctrl_0_Jump [get_bd_pins SCPU_ctrl_0/Jump] [get_bd_pins datapath_wrapper_0/Jump]
  connect_bd_net -net SCPU_ctrl_0_MemRW [get_bd_ports MemRW] [get_bd_pins SCPU_ctrl_0/MemRW]
  connect_bd_net -net SCPU_ctrl_0_MemtoReg [get_bd_pins SCPU_ctrl_0/MemtoReg] [get_bd_pins datapath_wrapper_0/MemtoReg]
  connect_bd_net -net SCPU_ctrl_0_RegWrite [get_bd_pins SCPU_ctrl_0/RegWrite] [get_bd_pins datapath_wrapper_0/RegWrite]
  connect_bd_net -net clk_0_1 [get_bd_ports clk] [get_bd_pins datapath_wrapper_0/clk]
  connect_bd_net -net datapath_wrapper_0_ALU_out [get_bd_ports Addr_out] [get_bd_pins datapath_wrapper_0/ALU_out]
  connect_bd_net -net datapath_wrapper_0_Data_out [get_bd_ports Data_out] [get_bd_pins datapath_wrapper_0/Data_out]
  connect_bd_net -net datapath_wrapper_0_PC_out [get_bd_ports PC_out] [get_bd_pins datapath_wrapper_0/PC_out]
  connect_bd_net -net datapath_wrapper_0_a0 [get_bd_ports a0] [get_bd_pins datapath_wrapper_0/a0]
  connect_bd_net -net datapath_wrapper_0_a1 [get_bd_ports a1] [get_bd_pins datapath_wrapper_0/a1]
  connect_bd_net -net datapath_wrapper_0_a2 [get_bd_ports a2] [get_bd_pins datapath_wrapper_0/a2]
  connect_bd_net -net datapath_wrapper_0_a3 [get_bd_ports a3] [get_bd_pins datapath_wrapper_0/a3]
  connect_bd_net -net datapath_wrapper_0_a4 [get_bd_ports a4] [get_bd_pins datapath_wrapper_0/a4]
  connect_bd_net -net datapath_wrapper_0_a5 [get_bd_ports a5] [get_bd_pins datapath_wrapper_0/a5]
  connect_bd_net -net datapath_wrapper_0_a6 [get_bd_ports a6] [get_bd_pins datapath_wrapper_0/a6]
  connect_bd_net -net datapath_wrapper_0_a7 [get_bd_ports a7] [get_bd_pins datapath_wrapper_0/a7]
  connect_bd_net -net datapath_wrapper_0_gp [get_bd_ports gp] [get_bd_pins datapath_wrapper_0/gp]
  connect_bd_net -net datapath_wrapper_0_ra [get_bd_ports ra] [get_bd_pins datapath_wrapper_0/ra]
  connect_bd_net -net datapath_wrapper_0_s0 [get_bd_ports s0] [get_bd_pins datapath_wrapper_0/s0]
  connect_bd_net -net datapath_wrapper_0_s1 [get_bd_ports s1] [get_bd_pins datapath_wrapper_0/s1]
  connect_bd_net -net datapath_wrapper_0_s2 [get_bd_ports s2] [get_bd_pins datapath_wrapper_0/s2]
  connect_bd_net -net datapath_wrapper_0_s3 [get_bd_ports s3] [get_bd_pins datapath_wrapper_0/s3]
  connect_bd_net -net datapath_wrapper_0_s4 [get_bd_ports s4] [get_bd_pins datapath_wrapper_0/s4]
  connect_bd_net -net datapath_wrapper_0_s5 [get_bd_ports s5] [get_bd_pins datapath_wrapper_0/s5]
  connect_bd_net -net datapath_wrapper_0_s6 [get_bd_ports s6] [get_bd_pins datapath_wrapper_0/s6]
  connect_bd_net -net datapath_wrapper_0_s7 [get_bd_ports s7] [get_bd_pins datapath_wrapper_0/s7]
  connect_bd_net -net datapath_wrapper_0_s8 [get_bd_ports s8] [get_bd_pins datapath_wrapper_0/s8]
  connect_bd_net -net datapath_wrapper_0_s9 [get_bd_ports s9] [get_bd_pins datapath_wrapper_0/s9]
  connect_bd_net -net datapath_wrapper_0_s10 [get_bd_ports s10] [get_bd_pins datapath_wrapper_0/s10]
  connect_bd_net -net datapath_wrapper_0_s11 [get_bd_ports s11] [get_bd_pins datapath_wrapper_0/s11]
  connect_bd_net -net datapath_wrapper_0_sp [get_bd_ports sp] [get_bd_pins datapath_wrapper_0/sp]
  connect_bd_net -net datapath_wrapper_0_t0 [get_bd_ports t0] [get_bd_pins datapath_wrapper_0/t0]
  connect_bd_net -net datapath_wrapper_0_t1 [get_bd_ports t1] [get_bd_pins datapath_wrapper_0/t1]
  connect_bd_net -net datapath_wrapper_0_t2 [get_bd_ports t2] [get_bd_pins datapath_wrapper_0/t2]
  connect_bd_net -net datapath_wrapper_0_t3 [get_bd_ports t3] [get_bd_pins datapath_wrapper_0/t3]
  connect_bd_net -net datapath_wrapper_0_t4 [get_bd_ports t4] [get_bd_pins datapath_wrapper_0/t4]
  connect_bd_net -net datapath_wrapper_0_t5 [get_bd_ports t5] [get_bd_pins datapath_wrapper_0/t5]
  connect_bd_net -net datapath_wrapper_0_t6 [get_bd_ports t6] [get_bd_pins datapath_wrapper_0/t6]
  connect_bd_net -net datapath_wrapper_0_tp [get_bd_ports tp] [get_bd_pins datapath_wrapper_0/tp]
  connect_bd_net -net datapath_wrapper_0_x0 [get_bd_ports x0] [get_bd_pins datapath_wrapper_0/x0]
  connect_bd_net -net inst14_12_Dout [get_bd_pins SCPU_ctrl_0/Fun3] [get_bd_pins inst14_12/Dout]
  connect_bd_net -net inst30_Dout [get_bd_pins SCPU_ctrl_0/Fun7] [get_bd_pins inst30/Dout]
  connect_bd_net -net inst6_2_Dout [get_bd_pins SCPU_ctrl_0/OPcode] [get_bd_pins inst6_2/Dout]
  connect_bd_net -net inst_field_0_1 [get_bd_ports inst_in] [get_bd_pins datapath_wrapper_0/inst_field] [get_bd_pins inst14_12/Din] [get_bd_pins inst30/Din] [get_bd_pins inst6_2/Din]
  connect_bd_net -net rst_0_1 [get_bd_ports rst] [get_bd_pins datapath_wrapper_0/rst]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


