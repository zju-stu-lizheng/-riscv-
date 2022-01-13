
################################################################
# This is a generated script based on design: datapath
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
# source datapath_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k160tffg676-2L
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name datapath

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
  set ALUSrc_B [ create_bd_port -dir I ALUSrc_B ]
  set ALU_Control [ create_bd_port -dir I -from 3 -to 0 ALU_Control ]
  set ALU_out [ create_bd_port -dir O -from 31 -to 0 ALU_out ]
  set Branch [ create_bd_port -dir I -from 0 -to 0 Branch ]
  set BranchN [ create_bd_port -dir I -from 0 -to 0 BranchN ]
  set Data_in [ create_bd_port -dir I -from 31 -to 0 Data_in ]
  set Data_out [ create_bd_port -dir O -from 31 -to 0 Data_out ]
  set ImmSel [ create_bd_port -dir I -from 2 -to 0 ImmSel ]
  set Jump [ create_bd_port -dir I -from 1 -to 0 Jump ]
  set MemtoReg [ create_bd_port -dir I -from 1 -to 0 MemtoReg ]
  set PC_out [ create_bd_port -dir O -from 31 -to 0 PC_out ]
  set RegWrite [ create_bd_port -dir I RegWrite ]
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
  set inst_field [ create_bd_port -dir I -from 31 -to 0 inst_field ]
  set ra [ create_bd_port -dir O -from 31 -to 0 ra ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $rst
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

  # Create instance: ALU_0, and set properties
  set ALU_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:ALU:1.0 ALU_0 ]

  # Create instance: AND2, and set properties
  set AND2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 AND2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_andgate.png} \
 ] $AND2

  # Create instance: AND3, and set properties
  set AND3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 AND3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_andgate.png} \
 ] $AND3

  # Create instance: ImmGen_0, and set properties
  set ImmGen_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:ImmGen:1.0 ImmGen_0 ]

  # Create instance: MUX2T1_32_0, and set properties
  set MUX2T1_32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX2T1_32:1.0 MUX2T1_32_0 ]

  # Create instance: MUX2T1_32_1, and set properties
  set MUX2T1_32_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX2T1_32:1.0 MUX2T1_32_1 ]

  # Create instance: MUX4T1_32_0, and set properties
  set MUX4T1_32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX4T1_32:1.0 MUX4T1_32_0 ]

  # Create instance: MUX4T1_32_1, and set properties
  set MUX4T1_32_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:MUX4T1_32:1.0 MUX4T1_32_1 ]

  # Create instance: PC, and set properties
  set PC [ create_bd_cell -type ip -vlnv xilinx.com:user:REG32:1.0 PC ]

  # Create instance: PC4, and set properties
  set PC4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 PC4 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {4} \
   CONFIG.CONST_WIDTH {32} \
 ] $PC4

  # Create instance: Rs1, and set properties
  set Rs1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Rs1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {19} \
   CONFIG.DIN_TO {15} \
   CONFIG.DOUT_WIDTH {5} \
 ] $Rs1

  # Create instance: Rs2, and set properties
  set Rs2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Rs2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {24} \
   CONFIG.DIN_TO {20} \
   CONFIG.DOUT_WIDTH {5} \
 ] $Rs2

  # Create instance: Rs3, and set properties
  set Rs3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 Rs3 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {7} \
   CONFIG.DOUT_WIDTH {5} \
 ] $Rs3

  # Create instance: VCC, and set properties
  set VCC [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 VCC ]

  # Create instance: add_32_0, and set properties
  set add_32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:add_32:1.0 add_32_0 ]

  # Create instance: add_32_1, and set properties
  set add_32_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:add_32:1.0 add_32_1 ]

  # Create instance: not1, and set properties
  set not1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 not1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $not1

  # Create instance: or2, and set properties
  set or2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 or2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $or2

  # Create instance: regs_0, and set properties
  set regs_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:regs:1.0 regs_0 ]

  # Create port connections
  connect_bd_net -net ALU_0_res [get_bd_ports ALU_out] [get_bd_pins ALU_0/res] [get_bd_pins MUX4T1_32_0/I0] [get_bd_pins MUX4T1_32_1/I2]
  connect_bd_net -net ALU_0_zero [get_bd_pins ALU_0/zero] [get_bd_pins AND3/Op2] [get_bd_pins not1/Op1]
  connect_bd_net -net ALU_operation_0_1 [get_bd_ports ALU_Control] [get_bd_pins ALU_0/ALU_operation]
  connect_bd_net -net AND2_Res [get_bd_pins AND2/Res] [get_bd_pins or2/Op2]
  connect_bd_net -net AND3_Res [get_bd_pins AND3/Res] [get_bd_pins or2/Op1]
  connect_bd_net -net I1_0_1 [get_bd_ports Data_in] [get_bd_pins MUX4T1_32_0/I1]
  connect_bd_net -net ImmGen_0_Imm_out [get_bd_pins ImmGen_0/Imm_out] [get_bd_pins MUX2T1_32_1/I1] [get_bd_pins MUX4T1_32_0/I3] [get_bd_pins add_32_1/b]
  connect_bd_net -net ImmSel_0_1 [get_bd_ports ImmSel] [get_bd_pins ImmGen_0/ImmSel]
  connect_bd_net -net MUX2T1_32_0_o [get_bd_pins MUX2T1_32_0/o] [get_bd_pins MUX4T1_32_1/I0] [get_bd_pins MUX4T1_32_1/I3]
  connect_bd_net -net MUX2T1_32_1_o [get_bd_pins ALU_0/B] [get_bd_pins MUX2T1_32_1/o]
  connect_bd_net -net MUX4T1_32_0_o [get_bd_pins MUX4T1_32_0/o] [get_bd_pins regs_0/Wt_data]
  connect_bd_net -net MUX4T1_32_1_o [get_bd_pins MUX4T1_32_1/o] [get_bd_pins PC/D]
  connect_bd_net -net Op1_0_1 [get_bd_ports Branch] [get_bd_pins AND3/Op1]
  connect_bd_net -net Op2_0_1 [get_bd_ports BranchN] [get_bd_pins AND2/Op2]
  connect_bd_net -net PC4_dout [get_bd_pins PC4/dout] [get_bd_pins add_32_0/a]
  connect_bd_net -net PC_Q [get_bd_ports PC_out] [get_bd_pins PC/Q] [get_bd_pins add_32_0/b] [get_bd_pins add_32_1/a]
  connect_bd_net -net RegWrite_0_1 [get_bd_ports RegWrite] [get_bd_pins regs_0/RegWrite]
  connect_bd_net -net Rs1_Dout [get_bd_pins Rs1/Dout] [get_bd_pins regs_0/Rs1_addr]
  connect_bd_net -net Rs2_Dout [get_bd_pins Rs2/Dout] [get_bd_pins regs_0/Rs2_addr]
  connect_bd_net -net Rs3_Dout [get_bd_pins Rs3/Dout] [get_bd_pins regs_0/Wt_addr]
  connect_bd_net -net VCC_dout [get_bd_pins PC/CE] [get_bd_pins VCC/dout]
  connect_bd_net -net add_32_0_c [get_bd_pins MUX2T1_32_0/I0] [get_bd_pins MUX4T1_32_0/I2] [get_bd_pins add_32_0/c]
  connect_bd_net -net add_32_1_c [get_bd_pins MUX2T1_32_0/I1] [get_bd_pins MUX4T1_32_1/I1] [get_bd_pins add_32_1/c]
  connect_bd_net -net clk_0_1 [get_bd_ports clk] [get_bd_pins PC/clk] [get_bd_pins regs_0/clk]
  connect_bd_net -net inst_field_0_1 [get_bd_ports inst_field] [get_bd_pins ImmGen_0/inst_field] [get_bd_pins Rs1/Din] [get_bd_pins Rs2/Din] [get_bd_pins Rs3/Din]
  connect_bd_net -net not1_Res [get_bd_pins AND2/Op1] [get_bd_pins not1/Res]
  connect_bd_net -net or2_Res [get_bd_pins MUX2T1_32_0/sel] [get_bd_pins or2/Res]
  connect_bd_net -net regs_0_Rs1_data [get_bd_pins ALU_0/A] [get_bd_pins regs_0/Rs1_data]
  connect_bd_net -net regs_0_Rs2_data [get_bd_ports Data_out] [get_bd_pins MUX2T1_32_1/I0] [get_bd_pins regs_0/Rs2_data]
  connect_bd_net -net regs_0_a0 [get_bd_ports a0] [get_bd_pins regs_0/a0]
  connect_bd_net -net regs_0_a1 [get_bd_ports a1] [get_bd_pins regs_0/a1]
  connect_bd_net -net regs_0_a2 [get_bd_ports a2] [get_bd_pins regs_0/a2]
  connect_bd_net -net regs_0_a3 [get_bd_ports a3] [get_bd_pins regs_0/a3]
  connect_bd_net -net regs_0_a4 [get_bd_ports a4] [get_bd_pins regs_0/a4]
  connect_bd_net -net regs_0_a5 [get_bd_ports a5] [get_bd_pins regs_0/a5]
  connect_bd_net -net regs_0_a6 [get_bd_ports a6] [get_bd_pins regs_0/a6]
  connect_bd_net -net regs_0_a7 [get_bd_ports a7] [get_bd_pins regs_0/a7]
  connect_bd_net -net regs_0_gp [get_bd_ports gp] [get_bd_pins regs_0/gp]
  connect_bd_net -net regs_0_ra [get_bd_ports ra] [get_bd_pins regs_0/ra]
  connect_bd_net -net regs_0_s0 [get_bd_ports s0] [get_bd_pins regs_0/s0]
  connect_bd_net -net regs_0_s1 [get_bd_ports s1] [get_bd_pins regs_0/s1]
  connect_bd_net -net regs_0_s2 [get_bd_ports s2] [get_bd_pins regs_0/s2]
  connect_bd_net -net regs_0_s3 [get_bd_ports s3] [get_bd_pins regs_0/s3]
  connect_bd_net -net regs_0_s4 [get_bd_ports s4] [get_bd_pins regs_0/s4]
  connect_bd_net -net regs_0_s5 [get_bd_ports s5] [get_bd_pins regs_0/s5]
  connect_bd_net -net regs_0_s6 [get_bd_ports s6] [get_bd_pins regs_0/s6]
  connect_bd_net -net regs_0_s7 [get_bd_ports s7] [get_bd_pins regs_0/s7]
  connect_bd_net -net regs_0_s8 [get_bd_ports s8] [get_bd_pins regs_0/s8]
  connect_bd_net -net regs_0_s9 [get_bd_ports s9] [get_bd_pins regs_0/s9]
  connect_bd_net -net regs_0_s10 [get_bd_ports s10] [get_bd_pins regs_0/s10]
  connect_bd_net -net regs_0_s11 [get_bd_ports s11] [get_bd_pins regs_0/s11]
  connect_bd_net -net regs_0_sp [get_bd_ports sp] [get_bd_pins regs_0/sp]
  connect_bd_net -net regs_0_t0 [get_bd_ports t0] [get_bd_pins regs_0/t0]
  connect_bd_net -net regs_0_t1 [get_bd_ports t1] [get_bd_pins regs_0/t1]
  connect_bd_net -net regs_0_t2 [get_bd_ports t2] [get_bd_pins regs_0/t2]
  connect_bd_net -net regs_0_t3 [get_bd_ports t3] [get_bd_pins regs_0/t3]
  connect_bd_net -net regs_0_t4 [get_bd_ports t4] [get_bd_pins regs_0/t4]
  connect_bd_net -net regs_0_t5 [get_bd_ports t5] [get_bd_pins regs_0/t5]
  connect_bd_net -net regs_0_t6 [get_bd_ports t6] [get_bd_pins regs_0/t6]
  connect_bd_net -net regs_0_tp [get_bd_ports tp] [get_bd_pins regs_0/tp]
  connect_bd_net -net regs_0_x0 [get_bd_ports x0] [get_bd_pins regs_0/x0]
  connect_bd_net -net rst_0_1 [get_bd_ports rst] [get_bd_pins PC/rst] [get_bd_pins regs_0/rst]
  connect_bd_net -net s_0_1 [get_bd_ports MemtoReg] [get_bd_pins MUX4T1_32_0/s]
  connect_bd_net -net s_0_2 [get_bd_ports Jump] [get_bd_pins MUX4T1_32_1/s]
  connect_bd_net -net s_0_3 [get_bd_ports ALUSrc_B] [get_bd_pins MUX2T1_32_1/sel]

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


