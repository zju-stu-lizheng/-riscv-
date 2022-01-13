
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
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

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
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

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

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
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
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set ALU_out [ create_bd_port -dir O -from 31 -to 0 ALU_out ]
  set CPU_MIO [ create_bd_port -dir O CPU_MIO ]
  set Data_in [ create_bd_port -dir I -from 31 -to 0 Data_in ]
  set Data_out [ create_bd_port -dir O -from 31 -to 0 Data_out ]
  set MIO_ready [ create_bd_port -dir I MIO_ready ]
  set MemRW [ create_bd_port -dir O MemRW ]
  set PC_out [ create_bd_port -dir O -from 31 -to 0 PC_out ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {rst} \
 ] $clk
  set inst_in [ create_bd_port -dir I -from 31 -to 0 inst_in ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $rst

  # Create instance: Controller, and set properties
  set Controller [ create_bd_cell -type ip -vlnv xilinx.com:user:SCPU_ctrl:1.0 Controller ]

  # Create instance: DataPath, and set properties
  set DataPath [ create_bd_cell -type ip -vlnv xilinx.com:user:DataPath:1.0 DataPath ]

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
  connect_bd_net -net Controller_ALUSrc_B [get_bd_pins Controller/ALUSrc_B] [get_bd_pins DataPath/ALUSrc_B]
  connect_bd_net -net Controller_ALU_Control [get_bd_pins Controller/ALU_Control] [get_bd_pins DataPath/ALU_Control]
  connect_bd_net -net Controller_Branch [get_bd_pins Controller/Branch] [get_bd_pins DataPath/Branch]
  connect_bd_net -net Controller_CPU_MIO [get_bd_ports CPU_MIO] [get_bd_pins Controller/CPU_MIO]
  connect_bd_net -net Controller_ImmSel [get_bd_pins Controller/ImmSel] [get_bd_pins DataPath/ImmSel]
  connect_bd_net -net Controller_Jump [get_bd_pins Controller/Jump] [get_bd_pins DataPath/Jump]
  connect_bd_net -net Controller_MemRW [get_bd_ports MemRW] [get_bd_pins Controller/MemRW]
  connect_bd_net -net Controller_MemtoReg [get_bd_pins Controller/MemtoReg] [get_bd_pins DataPath/MemtoReg]
  connect_bd_net -net Controller_RegWrite [get_bd_pins Controller/RegWrite] [get_bd_pins DataPath/RegWrite]
  connect_bd_net -net DataPath_ALU_out [get_bd_ports ALU_out] [get_bd_pins DataPath/ALU_out]
  connect_bd_net -net DataPath_Data_out [get_bd_ports Data_out] [get_bd_pins DataPath/Data_out]
  connect_bd_net -net DataPath_PC_out [get_bd_ports PC_out] [get_bd_pins DataPath/PC_out]
  connect_bd_net -net Data_in_0_1 [get_bd_ports Data_in] [get_bd_pins DataPath/Data_in]
  connect_bd_net -net MIO_ready_0_1 [get_bd_ports MIO_ready] [get_bd_pins Controller/MIO_ready]
  connect_bd_net -net clk_0_1 [get_bd_ports clk] [get_bd_pins DataPath/clk]
  connect_bd_net -net inst14_12_Dout [get_bd_pins Controller/Fun3] [get_bd_pins inst14_12/Dout]
  connect_bd_net -net inst30_Dout [get_bd_pins Controller/Fun7] [get_bd_pins inst30/Dout]
  connect_bd_net -net inst6_2_Dout [get_bd_pins Controller/OPcode] [get_bd_pins inst6_2/Dout]
  connect_bd_net -net inst_in [get_bd_ports inst_in] [get_bd_pins DataPath/inst_field] [get_bd_pins inst14_12/Din] [get_bd_pins inst30/Din] [get_bd_pins inst6_2/Din]
  connect_bd_net -net rst_0_1 [get_bd_ports rst] [get_bd_pins DataPath/rst]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


