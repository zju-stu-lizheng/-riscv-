
################################################################
# This is a generated script based on design: scpu_sim
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
# source scpu_sim_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k160tffg676-2L
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name scpu_sim

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
  set Data_out_WB_0 [ create_bd_port -dir O -from 31 -to 0 Data_out_WB_0 ]
  set MemRW_EX_0 [ create_bd_port -dir O MemRW_EX_0 ]
  set PC_out_EX_0 [ create_bd_port -dir O -from 31 -to 0 PC_out_EX_0 ]
  set PC_out_ID_0 [ create_bd_port -dir O -from 31 -to 0 PC_out_ID_0 ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set inst_ID_0 [ create_bd_port -dir O -from 31 -to 0 inst_ID_0 ]
  set rst [ create_bd_port -dir I -type rst rst ]

  # Create instance: Addr11_2, and set properties
  set Addr11_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Addr11_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {10} \
 ] $Addr11_2

  # Create instance: NOT1, and set properties
  set NOT1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 NOT1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $NOT1

  # Create instance: PC11_2, and set properties
  set PC11_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PC11_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {10} \
 ] $PC11_2

  # Create instance: Pipeline_CPU_0, and set properties
  set Pipeline_CPU_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Pipeline_CPU:1.0 Pipeline_CPU_0 ]

  # Create instance: RAM_B, and set properties
  set RAM_B [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 RAM_B ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../coe/D_mem.coe} \
   CONFIG.data_width {32} \
   CONFIG.depth {1024} \
 ] $RAM_B

  # Create instance: ROM, and set properties
  set ROM [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 ROM ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../coe/h.coe} \
   CONFIG.data_width {32} \
   CONFIG.depth {1024} \
   CONFIG.memory_type {rom} \
 ] $ROM

  # Create port connections
  connect_bd_net -net Addr11_2_Dout [get_bd_pins Addr11_2/Dout] [get_bd_pins RAM_B/a]
  connect_bd_net -net NOT1_Res [get_bd_pins NOT1/Res] [get_bd_pins RAM_B/clk]
  connect_bd_net -net PC11_2_Dout [get_bd_pins PC11_2/Dout] [get_bd_pins ROM/a]
  connect_bd_net -net Pipeline_CPU_0_Addr_out [get_bd_pins Addr11_2/Din] [get_bd_pins Pipeline_CPU_0/Addr_out]
  connect_bd_net -net Pipeline_CPU_0_Data_out [get_bd_pins Pipeline_CPU_0/Data_out] [get_bd_pins RAM_B/d]
  connect_bd_net -net Pipeline_CPU_0_Data_out_WB [get_bd_ports Data_out_WB_0] [get_bd_pins Pipeline_CPU_0/Data_out_WB]
  connect_bd_net -net Pipeline_CPU_0_MemRW_EX [get_bd_ports MemRW_EX_0] [get_bd_pins Pipeline_CPU_0/MemRW_EX]
  connect_bd_net -net Pipeline_CPU_0_MemRW_Mem [get_bd_pins Pipeline_CPU_0/MemRW_Mem] [get_bd_pins RAM_B/we]
  connect_bd_net -net Pipeline_CPU_0_PC_out_EX [get_bd_ports PC_out_EX_0] [get_bd_pins Pipeline_CPU_0/PC_out_EX]
  connect_bd_net -net Pipeline_CPU_0_PC_out_ID [get_bd_ports PC_out_ID_0] [get_bd_pins Pipeline_CPU_0/PC_out_ID]
  connect_bd_net -net Pipeline_CPU_0_PC_out_IF [get_bd_pins PC11_2/Din] [get_bd_pins Pipeline_CPU_0/PC_out_IF]
  connect_bd_net -net Pipeline_CPU_0_inst_ID [get_bd_ports inst_ID_0] [get_bd_pins Pipeline_CPU_0/inst_ID]
  connect_bd_net -net RAM_B_spo [get_bd_pins Pipeline_CPU_0/Data_in] [get_bd_pins RAM_B/spo]
  connect_bd_net -net ROM_spo [get_bd_pins Pipeline_CPU_0/inst_IF] [get_bd_pins ROM/spo]
  connect_bd_net -net clk_0_1 [get_bd_ports clk] [get_bd_pins NOT1/Op1] [get_bd_pins Pipeline_CPU_0/clk]
  connect_bd_net -net rst_0_1 [get_bd_ports rst] [get_bd_pins Pipeline_CPU_0/rst]

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


