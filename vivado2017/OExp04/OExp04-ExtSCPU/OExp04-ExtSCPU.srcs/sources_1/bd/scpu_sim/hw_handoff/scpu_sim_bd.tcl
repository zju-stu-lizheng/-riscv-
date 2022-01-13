
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
  set a0_0 [ create_bd_port -dir O -from 31 -to 0 a0_0 ]
  set a1_0 [ create_bd_port -dir O -from 31 -to 0 a1_0 ]
  set a2_0 [ create_bd_port -dir O -from 31 -to 0 a2_0 ]
  set a3_0 [ create_bd_port -dir O -from 31 -to 0 a3_0 ]
  set a4_0 [ create_bd_port -dir O -from 31 -to 0 a4_0 ]
  set a5_0 [ create_bd_port -dir O -from 31 -to 0 a5_0 ]
  set a6_0 [ create_bd_port -dir O -from 31 -to 0 a6_0 ]
  set a7_0 [ create_bd_port -dir O -from 31 -to 0 a7_0 ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set gp_0 [ create_bd_port -dir O -from 31 -to 0 gp_0 ]
  set ra_0 [ create_bd_port -dir O -from 31 -to 0 ra_0 ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set s0_0 [ create_bd_port -dir O -from 31 -to 0 s0_0 ]
  set s10_0 [ create_bd_port -dir O -from 31 -to 0 s10_0 ]
  set s11_0 [ create_bd_port -dir O -from 31 -to 0 s11_0 ]
  set s1_0 [ create_bd_port -dir O -from 31 -to 0 s1_0 ]
  set s2_0 [ create_bd_port -dir O -from 31 -to 0 s2_0 ]
  set s3_0 [ create_bd_port -dir O -from 31 -to 0 s3_0 ]
  set s4_0 [ create_bd_port -dir O -from 31 -to 0 s4_0 ]
  set s5_0 [ create_bd_port -dir O -from 31 -to 0 s5_0 ]
  set s6_0 [ create_bd_port -dir O -from 31 -to 0 s6_0 ]
  set s7_0 [ create_bd_port -dir O -from 31 -to 0 s7_0 ]
  set s8_0 [ create_bd_port -dir O -from 31 -to 0 s8_0 ]
  set s9_0 [ create_bd_port -dir O -from 31 -to 0 s9_0 ]
  set sp_0 [ create_bd_port -dir O -from 31 -to 0 sp_0 ]
  set t0_0 [ create_bd_port -dir O -from 31 -to 0 t0_0 ]
  set t1_0 [ create_bd_port -dir O -from 31 -to 0 t1_0 ]
  set t2_0 [ create_bd_port -dir O -from 31 -to 0 t2_0 ]
  set t3_0 [ create_bd_port -dir O -from 31 -to 0 t3_0 ]
  set t4_0 [ create_bd_port -dir O -from 31 -to 0 t4_0 ]
  set t5_0 [ create_bd_port -dir O -from 31 -to 0 t5_0 ]
  set t6_0 [ create_bd_port -dir O -from 31 -to 0 t6_0 ]
  set tp_0 [ create_bd_port -dir O -from 31 -to 0 tp_0 ]
  set x0_0 [ create_bd_port -dir O -from 31 -to 0 x0_0 ]

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

  # Create instance: RAM_B, and set properties
  set RAM_B [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 RAM_B ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../../OExp02-IP2SOC/COE/COE/D_mem.coe} \
   CONFIG.data_width {32} \
   CONFIG.depth {1024} \
   CONFIG.memory_type {single_port_ram} \
 ] $RAM_B

  # Create instance: ROM, and set properties
  set ROM [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 ROM ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../../../OExp02-IP2SOC/COE/I_mem_test.coe} \
   CONFIG.data_width {32} \
   CONFIG.depth {1024} \
   CONFIG.memory_type {rom} \
 ] $ROM

  # Create instance: SCPU_0, and set properties
  set SCPU_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SCPU:1.0 SCPU_0 ]

  # Create port connections
  connect_bd_net -net Addr11_2_Dout [get_bd_pins Addr11_2/Dout] [get_bd_pins RAM_B/a]
  connect_bd_net -net NOT1_Res [get_bd_pins NOT1/Res] [get_bd_pins RAM_B/clk]
  connect_bd_net -net PC11_2_Dout [get_bd_pins PC11_2/Dout] [get_bd_pins ROM/a]
  connect_bd_net -net RAM_B_spo [get_bd_pins RAM_B/spo] [get_bd_pins SCPU_0/Data_in]
  connect_bd_net -net ROM_spo [get_bd_pins ROM/spo] [get_bd_pins SCPU_0/inst_in]
  connect_bd_net -net SCPU_0_Addr_out [get_bd_pins Addr11_2/Din] [get_bd_pins SCPU_0/Addr_out]
  connect_bd_net -net SCPU_0_Data_out [get_bd_pins RAM_B/d] [get_bd_pins SCPU_0/Data_out]
  connect_bd_net -net SCPU_0_MemRW [get_bd_pins RAM_B/we] [get_bd_pins SCPU_0/MemRW]
  connect_bd_net -net SCPU_0_PC_out [get_bd_pins PC11_2/Din] [get_bd_pins SCPU_0/PC_out]
  connect_bd_net -net SCPU_0_a0 [get_bd_ports a0_0] [get_bd_pins SCPU_0/a0]
  connect_bd_net -net SCPU_0_a1 [get_bd_ports a1_0] [get_bd_pins SCPU_0/a1]
  connect_bd_net -net SCPU_0_a2 [get_bd_ports a2_0] [get_bd_pins SCPU_0/a2]
  connect_bd_net -net SCPU_0_a3 [get_bd_ports a3_0] [get_bd_pins SCPU_0/a3]
  connect_bd_net -net SCPU_0_a4 [get_bd_ports a4_0] [get_bd_pins SCPU_0/a4]
  connect_bd_net -net SCPU_0_a5 [get_bd_ports a5_0] [get_bd_pins SCPU_0/a5]
  connect_bd_net -net SCPU_0_a6 [get_bd_ports a6_0] [get_bd_pins SCPU_0/a6]
  connect_bd_net -net SCPU_0_a7 [get_bd_ports a7_0] [get_bd_pins SCPU_0/a7]
  connect_bd_net -net SCPU_0_gp [get_bd_ports gp_0] [get_bd_pins SCPU_0/gp]
  connect_bd_net -net SCPU_0_ra [get_bd_ports ra_0] [get_bd_pins SCPU_0/ra]
  connect_bd_net -net SCPU_0_s0 [get_bd_ports s0_0] [get_bd_pins SCPU_0/s0]
  connect_bd_net -net SCPU_0_s1 [get_bd_ports s1_0] [get_bd_pins SCPU_0/s1]
  connect_bd_net -net SCPU_0_s2 [get_bd_ports s2_0] [get_bd_pins SCPU_0/s2]
  connect_bd_net -net SCPU_0_s3 [get_bd_ports s3_0] [get_bd_pins SCPU_0/s3]
  connect_bd_net -net SCPU_0_s4 [get_bd_ports s4_0] [get_bd_pins SCPU_0/s4]
  connect_bd_net -net SCPU_0_s5 [get_bd_ports s5_0] [get_bd_pins SCPU_0/s5]
  connect_bd_net -net SCPU_0_s6 [get_bd_ports s6_0] [get_bd_pins SCPU_0/s6]
  connect_bd_net -net SCPU_0_s7 [get_bd_ports s7_0] [get_bd_pins SCPU_0/s7]
  connect_bd_net -net SCPU_0_s8 [get_bd_ports s8_0] [get_bd_pins SCPU_0/s8]
  connect_bd_net -net SCPU_0_s9 [get_bd_ports s9_0] [get_bd_pins SCPU_0/s9]
  connect_bd_net -net SCPU_0_s10 [get_bd_ports s10_0] [get_bd_pins SCPU_0/s10]
  connect_bd_net -net SCPU_0_s11 [get_bd_ports s11_0] [get_bd_pins SCPU_0/s11]
  connect_bd_net -net SCPU_0_sp [get_bd_ports sp_0] [get_bd_pins SCPU_0/sp]
  connect_bd_net -net SCPU_0_t0 [get_bd_ports t0_0] [get_bd_pins SCPU_0/t0]
  connect_bd_net -net SCPU_0_t1 [get_bd_ports t1_0] [get_bd_pins SCPU_0/t1]
  connect_bd_net -net SCPU_0_t2 [get_bd_ports t2_0] [get_bd_pins SCPU_0/t2]
  connect_bd_net -net SCPU_0_t3 [get_bd_ports t3_0] [get_bd_pins SCPU_0/t3]
  connect_bd_net -net SCPU_0_t4 [get_bd_ports t4_0] [get_bd_pins SCPU_0/t4]
  connect_bd_net -net SCPU_0_t5 [get_bd_ports t5_0] [get_bd_pins SCPU_0/t5]
  connect_bd_net -net SCPU_0_t6 [get_bd_ports t6_0] [get_bd_pins SCPU_0/t6]
  connect_bd_net -net SCPU_0_tp [get_bd_ports tp_0] [get_bd_pins SCPU_0/tp]
  connect_bd_net -net SCPU_0_x0 [get_bd_ports x0_0] [get_bd_pins SCPU_0/x0]
  connect_bd_net -net clk_0_1 [get_bd_ports clk] [get_bd_pins NOT1/Op1] [get_bd_pins SCPU_0/clk]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins SCPU_0/rst]

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


