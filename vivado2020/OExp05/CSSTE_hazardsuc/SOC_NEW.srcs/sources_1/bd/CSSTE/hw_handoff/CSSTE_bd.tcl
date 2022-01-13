
################################################################
# This is a generated script based on design: CSSTE
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
# source CSSTE_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k160tffg676-2L
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name CSSTE

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
  set BTN_y [ create_bd_port -dir I -from 3 -to 0 BTN_y ]
  set Blue [ create_bd_port -dir O -from 3 -to 0 Blue ]
  set Green [ create_bd_port -dir O -from 3 -to 0 Green ]
  set HSYNC [ create_bd_port -dir O HSYNC ]
  set LED_PEN [ create_bd_port -dir O LED_PEN ]
  set RSTN [ create_bd_port -dir I -type rst RSTN ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $RSTN
  set Red [ create_bd_port -dir O -from 3 -to 0 Red ]
  set SEG_PEN [ create_bd_port -dir O SEG_PEN ]
  set SW [ create_bd_port -dir I -from 15 -to 0 SW ]
  set VSYNC [ create_bd_port -dir O VSYNC ]
  set clk_100mhz [ create_bd_port -dir I -type clk clk_100mhz ]
  set led_clk [ create_bd_port -dir O -type clk led_clk ]
  set led_clrn [ create_bd_port -dir O led_clrn ]
  set led_sout [ create_bd_port -dir O led_sout ]
  set seg_clk [ create_bd_port -dir O -type clk seg_clk ]
  set seg_clrn [ create_bd_port -dir O seg_clrn ]
  set seg_sout [ create_bd_port -dir O seg_sout ]

  # Create instance: B2_0, and set properties
  set B2_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 B2_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $B2_0

  # Create instance: B64_0, and set properties
  set B64_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 B64_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {64} \
 ] $B64_0

  # Create instance: Counter_x_0, and set properties
  set Counter_x_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Counter_x:1.0 Counter_x_0 ]

  # Create instance: DIV1, and set properties
  set DIV1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 DIV1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
 ] $DIV1

  # Create instance: DIV31_31, and set properties
  set DIV31_31 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 DIV31_31 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {32} \
   CONFIG.IN1_WIDTH {32} \
 ] $DIV31_31

  # Create instance: DIV6, and set properties
  set DIV6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 DIV6 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {6} \
   CONFIG.DIN_TO {6} \
   CONFIG.DOUT_WIDTH {1} \
 ] $DIV6

  # Create instance: DIV9, and set properties
  set DIV9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 DIV9 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {9} \
   CONFIG.DIN_TO {9} \
   CONFIG.DOUT_WIDTH {1} \
 ] $DIV9

  # Create instance: DIV11, and set properties
  set DIV11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 DIV11 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {11} \
   CONFIG.DOUT_WIDTH {1} \
 ] $DIV11

  # Create instance: DIV20, and set properties
  set DIV20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 DIV20 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {20} \
   CONFIG.DIN_TO {20} \
   CONFIG.DOUT_WIDTH {1} \
 ] $DIV20

  # Create instance: DIV25, and set properties
  set DIV25 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 DIV25 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {25} \
   CONFIG.DIN_TO {25} \
   CONFIG.DOUT_WIDTH {1} \
 ] $DIV25

  # Create instance: MIO_BUS_0, and set properties
  set MIO_BUS_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:MIO_BUS:1.0 MIO_BUS_0 ]

  # Create instance: Multi_8CH32_0, and set properties
  set Multi_8CH32_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Multi_8CH32:1.0 Multi_8CH32_0 ]

  # Create instance: PC11_2, and set properties
  set PC11_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PC11_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {11} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {10} \
 ] $PC11_2

  # Create instance: PC31_2, and set properties
  set PC31_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 PC31_2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {30} \
 ] $PC31_2

  # Create instance: Pipeline_CPU_0, and set properties
  set Pipeline_CPU_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:Pipeline_CPU:1.0 Pipeline_CPU_0 ]

  # Create instance: RAM_Data, and set properties
  set RAM_Data [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 RAM_Data ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../COE/D_mem.coe} \
   CONFIG.data_width {32} \
   CONFIG.depth {1024} \
 ] $RAM_Data

  # Create instance: ROM_B, and set properties
  set ROM_B [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 ROM_B ]
  set_property -dict [ list \
   CONFIG.coefficient_file {../../../../../../COE_hazard/I_mem.coe} \
   CONFIG.data_width {32} \
   CONFIG.depth {1024} \
   CONFIG.memory_type {rom} \
 ] $ROM_B

  # Create instance: SAnti_jitter_0, and set properties
  set SAnti_jitter_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SAnti_jitter:1.0 SAnti_jitter_0 ]

  # Create instance: SPIO_0, and set properties
  set SPIO_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SPIO:1.0 SPIO_0 ]

  # Create instance: SSeg7_Dev_0, and set properties
  set SSeg7_Dev_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:SSeg7_Dev:1.0 SSeg7_Dev_0 ]

  # Create instance: SW0, and set properties
  set SW0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 SW0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {16} \
 ] $SW0

  # Create instance: SW2, and set properties
  set SW2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 SW2 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $SW2

  # Create instance: SW7_5, and set properties
  set SW7_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 SW7_5 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {5} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {3} \
 ] $SW7_5

  # Create instance: SW8, and set properties
  set SW8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 SW8 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {8} \
   CONFIG.DIN_TO {8} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $SW8

  # Create instance: SW9, and set properties
  set SW9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 SW9 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {9} \
   CONFIG.DIN_TO {9} \
   CONFIG.DIN_WIDTH {16} \
   CONFIG.DOUT_WIDTH {1} \
 ] $SW9

  # Create instance: VGA_0, and set properties
  set VGA_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:VGA:1.0 VGA_0 ]

  # Create instance: clk_div_0, and set properties
  set clk_div_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:clk_div:1.0 clk_div_0 ]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {30} \
   CONFIG.IN1_WIDTH {2} \
 ] $xlconcat_0

  # Create port connections
  connect_bd_net -net B2_0_dout [get_bd_pins B2_0/dout] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net B64_0_dout [get_bd_pins B64_0/dout] [get_bd_pins Multi_8CH32_0/LES]
  connect_bd_net -net Counter_x_0_counter0_OUT [get_bd_pins Counter_x_0/counter0_OUT] [get_bd_pins MIO_BUS_0/counter0_out]
  connect_bd_net -net Counter_x_0_counter1_OUT [get_bd_pins Counter_x_0/counter1_OUT] [get_bd_pins MIO_BUS_0/counter1_out]
  connect_bd_net -net Counter_x_0_counter2_OUT [get_bd_pins Counter_x_0/counter2_OUT] [get_bd_pins MIO_BUS_0/counter2_out]
  connect_bd_net -net DIV11_Dout [get_bd_pins Counter_x_0/clk2] [get_bd_pins DIV11/Dout]
  connect_bd_net -net DIV1_Dout [get_bd_pins DIV1/Dout] [get_bd_pins VGA_0/clk_25m]
  connect_bd_net -net DIV20_Dout [get_bd_pins DIV20/Dout] [get_bd_pins SPIO_0/Start] [get_bd_pins SSeg7_Dev_0/Start]
  connect_bd_net -net DIV25_Dout [get_bd_pins DIV25/Dout] [get_bd_pins SSeg7_Dev_0/flash]
  connect_bd_net -net DIV31_31_dout [get_bd_pins DIV31_31/dout] [get_bd_pins Multi_8CH32_0/point_in]
  connect_bd_net -net DIV6_Dout [get_bd_pins Counter_x_0/clk0] [get_bd_pins DIV6/Dout]
  connect_bd_net -net DIV9_Dout [get_bd_pins Counter_x_0/clk1] [get_bd_pins DIV9/Dout]
  connect_bd_net -net DIV_31_31 [get_bd_pins DIV1/Din] [get_bd_pins DIV11/Din] [get_bd_pins DIV20/Din] [get_bd_pins DIV25/Din] [get_bd_pins DIV31_31/In0] [get_bd_pins DIV31_31/In1] [get_bd_pins DIV6/Din] [get_bd_pins DIV9/Din] [get_bd_pins clk_div_0/clkdiv]
  connect_bd_net -net Key_y_0_1 [get_bd_ports BTN_y] [get_bd_pins SAnti_jitter_0/Key_y]
  connect_bd_net -net MIO_BUS_0_Cpu_data4bus [get_bd_pins MIO_BUS_0/Cpu_data4bus] [get_bd_pins Multi_8CH32_0/data6] [get_bd_pins Pipeline_CPU_0/Data_in]
  connect_bd_net -net MIO_BUS_0_GPIOe0000000_we [get_bd_pins MIO_BUS_0/GPIOe0000000_we] [get_bd_pins Multi_8CH32_0/EN]
  connect_bd_net -net MIO_BUS_0_GPIOf0000000_we [get_bd_pins MIO_BUS_0/GPIOf0000000_we] [get_bd_pins SPIO_0/EN]
  connect_bd_net -net MIO_BUS_0_Peripheral_in [get_bd_pins Counter_x_0/counter_val] [get_bd_pins MIO_BUS_0/Peripheral_in] [get_bd_pins Multi_8CH32_0/Data0] [get_bd_pins SPIO_0/P_Data]
  connect_bd_net -net MIO_BUS_0_counter_we [get_bd_pins Counter_x_0/counter_we] [get_bd_pins MIO_BUS_0/counter_we]
  connect_bd_net -net MIO_BUS_0_data_ram_we [get_bd_pins MIO_BUS_0/data_ram_we] [get_bd_pins RAM_Data/we]
  connect_bd_net -net MIO_BUS_0_ram_addr [get_bd_pins MIO_BUS_0/ram_addr] [get_bd_pins RAM_Data/a]
  connect_bd_net -net MIO_BUS_0_ram_data_in [get_bd_pins MIO_BUS_0/ram_data_in] [get_bd_pins RAM_Data/d]
  connect_bd_net -net Multi_8CH32_0_Disp_num [get_bd_pins Multi_8CH32_0/Disp_num] [get_bd_pins SSeg7_Dev_0/Hexs]
  connect_bd_net -net Multi_8CH32_0_LE_out [get_bd_pins Multi_8CH32_0/LE_out] [get_bd_pins SSeg7_Dev_0/LES]
  connect_bd_net -net Multi_8CH32_0_point_out [get_bd_pins Multi_8CH32_0/point_out] [get_bd_pins SSeg7_Dev_0/point]
  connect_bd_net -net Net3 [get_bd_pins Counter_x_0/counter_out] [get_bd_pins MIO_BUS_0/counter_out] [get_bd_pins Multi_8CH32_0/data3]
  connect_bd_net -net PC11_2_Dout [get_bd_pins PC11_2/Dout] [get_bd_pins ROM_B/a]
  connect_bd_net -net PC31_2_Dout [get_bd_pins PC31_2/Dout] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net Pipeline_CPU_0_Addr_out [get_bd_pins MIO_BUS_0/addr_bus] [get_bd_pins Multi_8CH32_0/data4] [get_bd_pins Pipeline_CPU_0/Addr_out] [get_bd_pins VGA_0/Addr_out]
  connect_bd_net -net Pipeline_CPU_0_Data_out [get_bd_pins MIO_BUS_0/Cpu_data2bus] [get_bd_pins Multi_8CH32_0/data5] [get_bd_pins Pipeline_CPU_0/Data_out] [get_bd_pins VGA_0/Data_out]
  connect_bd_net -net Pipeline_CPU_0_Data_out_WB [get_bd_pins Pipeline_CPU_0/Data_out_WB] [get_bd_pins VGA_0/Data_out_WB]
  connect_bd_net -net Pipeline_CPU_0_Imm_out_ID [get_bd_pins Pipeline_CPU_0/Imm_out_ID] [get_bd_pins VGA_0/Imm_out_ID]
  connect_bd_net -net Pipeline_CPU_0_MemRW_EX [get_bd_pins Pipeline_CPU_0/MemRW_EX] [get_bd_pins VGA_0/MemRW_Ex]
  connect_bd_net -net Pipeline_CPU_0_MemRW_Mem [get_bd_pins MIO_BUS_0/mem_w] [get_bd_pins Pipeline_CPU_0/MemRW_Mem] [get_bd_pins VGA_0/MemRW_Mem]
  connect_bd_net -net Pipeline_CPU_0_PC_out_EX [get_bd_pins Pipeline_CPU_0/PC_out_EX] [get_bd_pins VGA_0/PC_Ex]
  connect_bd_net -net Pipeline_CPU_0_PC_out_EXMem [get_bd_pins Pipeline_CPU_0/PC_out_EXMem] [get_bd_pins VGA_0/PC_Mem]
  connect_bd_net -net Pipeline_CPU_0_PC_out_ID [get_bd_pins Pipeline_CPU_0/PC_out_ID] [get_bd_pins VGA_0/PC_ID]
  connect_bd_net -net Pipeline_CPU_0_PC_out_IF [get_bd_pins Multi_8CH32_0/data7] [get_bd_pins PC11_2/Din] [get_bd_pins PC31_2/Din] [get_bd_pins Pipeline_CPU_0/PC_out_IF] [get_bd_pins VGA_0/PC_IF]
  connect_bd_net -net Pipeline_CPU_0_PC_out_MemWB [get_bd_pins Pipeline_CPU_0/PC_out_MemWB] [get_bd_pins VGA_0/PC_WB]
  connect_bd_net -net Pipeline_CPU_0_Rd_addr_out_ID [get_bd_pins Pipeline_CPU_0/Rd_addr_out_ID] [get_bd_pins VGA_0/Rd_addr_out_ID]
  connect_bd_net -net Pipeline_CPU_0_Rs1_addr_ID [get_bd_pins Pipeline_CPU_0/Rs1_addr_ID] [get_bd_pins VGA_0/Rs1_addr_out_ID]
  connect_bd_net -net Pipeline_CPU_0_Rs1_out_ID [get_bd_pins Pipeline_CPU_0/Rs1_out_ID] [get_bd_pins VGA_0/Rs1_out_ID]
  connect_bd_net -net Pipeline_CPU_0_Rs2_addr_ID [get_bd_pins Pipeline_CPU_0/Rs2_addr_ID] [get_bd_pins VGA_0/Rs2_addr_out_ID]
  connect_bd_net -net Pipeline_CPU_0_Rs2_out_ID [get_bd_pins Pipeline_CPU_0/Rs2_out_ID] [get_bd_pins VGA_0/Rs2_out_ID]
  connect_bd_net -net Pipeline_CPU_0_a0 [get_bd_pins Pipeline_CPU_0/a0] [get_bd_pins VGA_0/a0]
  connect_bd_net -net Pipeline_CPU_0_a1 [get_bd_pins Pipeline_CPU_0/a1] [get_bd_pins VGA_0/a1]
  connect_bd_net -net Pipeline_CPU_0_a2 [get_bd_pins Pipeline_CPU_0/a2] [get_bd_pins VGA_0/a2]
  connect_bd_net -net Pipeline_CPU_0_a3 [get_bd_pins Pipeline_CPU_0/a3] [get_bd_pins VGA_0/a3]
  connect_bd_net -net Pipeline_CPU_0_a4 [get_bd_pins Pipeline_CPU_0/a4] [get_bd_pins VGA_0/a4]
  connect_bd_net -net Pipeline_CPU_0_a5 [get_bd_pins Pipeline_CPU_0/a5] [get_bd_pins VGA_0/a5]
  connect_bd_net -net Pipeline_CPU_0_a6 [get_bd_pins Pipeline_CPU_0/a6] [get_bd_pins VGA_0/a6]
  connect_bd_net -net Pipeline_CPU_0_a7 [get_bd_pins Pipeline_CPU_0/a7] [get_bd_pins VGA_0/a7]
  connect_bd_net -net Pipeline_CPU_0_gp [get_bd_pins Pipeline_CPU_0/gp] [get_bd_pins VGA_0/gp]
  connect_bd_net -net Pipeline_CPU_0_inst_ID [get_bd_pins Pipeline_CPU_0/inst_ID] [get_bd_pins VGA_0/inst_ID]
  connect_bd_net -net Pipeline_CPU_0_inst_out_EXMem [get_bd_pins Pipeline_CPU_0/inst_out_EXMem] [get_bd_pins VGA_0/inst_Mem]
  connect_bd_net -net Pipeline_CPU_0_inst_out_IDEX [get_bd_pins Pipeline_CPU_0/inst_out_IDEX] [get_bd_pins VGA_0/inst_EX]
  connect_bd_net -net Pipeline_CPU_0_inst_out_MemWB [get_bd_pins Pipeline_CPU_0/inst_out_MemWB] [get_bd_pins VGA_0/inst_WB]
  connect_bd_net -net Pipeline_CPU_0_ra [get_bd_pins Pipeline_CPU_0/ra] [get_bd_pins VGA_0/ra]
  connect_bd_net -net Pipeline_CPU_0_s0 [get_bd_pins Pipeline_CPU_0/s0] [get_bd_pins VGA_0/s0]
  connect_bd_net -net Pipeline_CPU_0_s1 [get_bd_pins Pipeline_CPU_0/s1] [get_bd_pins VGA_0/s1]
  connect_bd_net -net Pipeline_CPU_0_s2 [get_bd_pins Pipeline_CPU_0/s2] [get_bd_pins VGA_0/s2]
  connect_bd_net -net Pipeline_CPU_0_s3 [get_bd_pins Pipeline_CPU_0/s3] [get_bd_pins VGA_0/s3]
  connect_bd_net -net Pipeline_CPU_0_s4 [get_bd_pins Pipeline_CPU_0/s4] [get_bd_pins VGA_0/s4]
  connect_bd_net -net Pipeline_CPU_0_s5 [get_bd_pins Pipeline_CPU_0/s5] [get_bd_pins VGA_0/s5]
  connect_bd_net -net Pipeline_CPU_0_s6 [get_bd_pins Pipeline_CPU_0/s6] [get_bd_pins VGA_0/s6]
  connect_bd_net -net Pipeline_CPU_0_s7 [get_bd_pins Pipeline_CPU_0/s7] [get_bd_pins VGA_0/s7]
  connect_bd_net -net Pipeline_CPU_0_s8 [get_bd_pins Pipeline_CPU_0/s8] [get_bd_pins VGA_0/s8]
  connect_bd_net -net Pipeline_CPU_0_s9 [get_bd_pins Pipeline_CPU_0/s9] [get_bd_pins VGA_0/s9]
  connect_bd_net -net Pipeline_CPU_0_s10 [get_bd_pins Pipeline_CPU_0/s10] [get_bd_pins VGA_0/s10]
  connect_bd_net -net Pipeline_CPU_0_s11 [get_bd_pins Pipeline_CPU_0/s11] [get_bd_pins VGA_0/s11]
  connect_bd_net -net Pipeline_CPU_0_sp [get_bd_pins Pipeline_CPU_0/sp] [get_bd_pins VGA_0/sp]
  connect_bd_net -net Pipeline_CPU_0_t0 [get_bd_pins Pipeline_CPU_0/t0] [get_bd_pins VGA_0/t0]
  connect_bd_net -net Pipeline_CPU_0_t1 [get_bd_pins Pipeline_CPU_0/t1] [get_bd_pins VGA_0/t1]
  connect_bd_net -net Pipeline_CPU_0_t2 [get_bd_pins Pipeline_CPU_0/t2] [get_bd_pins VGA_0/t2]
  connect_bd_net -net Pipeline_CPU_0_t3 [get_bd_pins Pipeline_CPU_0/t3] [get_bd_pins VGA_0/t3]
  connect_bd_net -net Pipeline_CPU_0_t4 [get_bd_pins Pipeline_CPU_0/t4] [get_bd_pins VGA_0/t4]
  connect_bd_net -net Pipeline_CPU_0_t5 [get_bd_pins Pipeline_CPU_0/t5] [get_bd_pins VGA_0/t5]
  connect_bd_net -net Pipeline_CPU_0_t6 [get_bd_pins Pipeline_CPU_0/t6] [get_bd_pins VGA_0/t6]
  connect_bd_net -net Pipeline_CPU_0_tp [get_bd_pins Pipeline_CPU_0/tp] [get_bd_pins VGA_0/tp]
  connect_bd_net -net Pipeline_CPU_0_valid_IFID [get_bd_pins Pipeline_CPU_0/valid_IFID] [get_bd_pins VGA_0/valid_ID]
  connect_bd_net -net Pipeline_CPU_0_valid_out_EXMem [get_bd_pins Pipeline_CPU_0/valid_out_EXMem] [get_bd_pins VGA_0/valid_Mem]
  connect_bd_net -net Pipeline_CPU_0_valid_out_IDEX [get_bd_pins Pipeline_CPU_0/valid_out_IDEX] [get_bd_pins VGA_0/valid_EX]
  connect_bd_net -net Pipeline_CPU_0_valid_out_MemWB [get_bd_pins Pipeline_CPU_0/valid_out_MemWB] [get_bd_pins VGA_0/valid_WB]
  connect_bd_net -net Pipeline_CPU_0_x0 [get_bd_pins Pipeline_CPU_0/x0] [get_bd_pins VGA_0/x0]
  connect_bd_net -net RAM_Data_spo [get_bd_pins MIO_BUS_0/ram_data_out] [get_bd_pins RAM_Data/spo]
  connect_bd_net -net RSTN_0_1 [get_bd_ports RSTN] [get_bd_pins SAnti_jitter_0/RSTN]
  connect_bd_net -net SAnti_jitter_0_BTN_OK [get_bd_pins MIO_BUS_0/BTN] [get_bd_pins SAnti_jitter_0/BTN_OK]
  connect_bd_net -net SAnti_jitter_0_SW_OK [get_bd_pins MIO_BUS_0/SW] [get_bd_pins SAnti_jitter_0/SW_OK] [get_bd_pins SW0/Din] [get_bd_pins SW2/Din] [get_bd_pins SW7_5/Din] [get_bd_pins SW8/Din] [get_bd_pins SW9/Din]
  connect_bd_net -net SAnti_jitter_0_rst [get_bd_pins Counter_x_0/rst] [get_bd_pins MIO_BUS_0/rst] [get_bd_pins Multi_8CH32_0/rst] [get_bd_pins Pipeline_CPU_0/rst] [get_bd_pins SAnti_jitter_0/rst] [get_bd_pins SPIO_0/rst] [get_bd_pins SSeg7_Dev_0/rst] [get_bd_pins VGA_0/rst] [get_bd_pins clk_div_0/rst]
  connect_bd_net -net SPIO_0_LED_PEN [get_bd_ports LED_PEN] [get_bd_pins SPIO_0/LED_PEN]
  connect_bd_net -net SPIO_0_LED_out [get_bd_pins MIO_BUS_0/led_out] [get_bd_pins SPIO_0/LED_out]
  connect_bd_net -net SPIO_0_counter_set [get_bd_pins Counter_x_0/counter_ch] [get_bd_pins SPIO_0/counter_set]
  connect_bd_net -net SPIO_0_led_clk [get_bd_ports led_clk] [get_bd_pins SPIO_0/led_clk]
  connect_bd_net -net SPIO_0_led_clrn [get_bd_ports led_clrn] [get_bd_pins SPIO_0/led_clrn]
  connect_bd_net -net SPIO_0_led_sout [get_bd_ports led_sout] [get_bd_pins SPIO_0/led_sout]
  connect_bd_net -net SSeg7_Dev_0_SEG_PEN [get_bd_ports SEG_PEN] [get_bd_pins SSeg7_Dev_0/SEG_PEN]
  connect_bd_net -net SSeg7_Dev_0_seg_clk [get_bd_ports seg_clk] [get_bd_pins SSeg7_Dev_0/seg_clk]
  connect_bd_net -net SSeg7_Dev_0_seg_clrn [get_bd_ports seg_clrn] [get_bd_pins SSeg7_Dev_0/seg_clrn]
  connect_bd_net -net SSeg7_Dev_0_seg_sout [get_bd_ports seg_sout] [get_bd_pins SSeg7_Dev_0/seg_sout]
  connect_bd_net -net SW0_Dout [get_bd_pins SSeg7_Dev_0/SW0] [get_bd_pins SW0/Dout]
  connect_bd_net -net SW2_Dout [get_bd_pins SW2/Dout] [get_bd_pins clk_div_0/SW2]
  connect_bd_net -net SW7_5_Dout [get_bd_pins Multi_8CH32_0/Test] [get_bd_pins SW7_5/Dout]
  connect_bd_net -net SW8_Dout [get_bd_pins SW8/Dout] [get_bd_pins clk_div_0/SW8]
  connect_bd_net -net SW9_Dout [get_bd_pins SW9/Dout] [get_bd_pins clk_div_0/STEP]
  connect_bd_net -net SW_0_1 [get_bd_ports SW] [get_bd_pins SAnti_jitter_0/SW]
  connect_bd_net -net VGA_0_hs [get_bd_ports HSYNC] [get_bd_pins VGA_0/hs]
  connect_bd_net -net VGA_0_vga_b [get_bd_ports Blue] [get_bd_pins VGA_0/vga_b]
  connect_bd_net -net VGA_0_vga_g [get_bd_ports Green] [get_bd_pins VGA_0/vga_g]
  connect_bd_net -net VGA_0_vga_r [get_bd_ports Red] [get_bd_pins VGA_0/vga_r]
  connect_bd_net -net VGA_0_vs [get_bd_ports VSYNC] [get_bd_pins VGA_0/vs]
  connect_bd_net -net clk_0_1 [get_bd_ports clk_100mhz] [get_bd_pins MIO_BUS_0/clk] [get_bd_pins SAnti_jitter_0/clk] [get_bd_pins SSeg7_Dev_0/clk] [get_bd_pins VGA_0/clk_100m] [get_bd_pins clk_div_0/clk] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net clk_div_0_Clk_CPU [get_bd_pins Pipeline_CPU_0/clk] [get_bd_pins clk_div_0/Clk_CPU] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net dist_mem_gen_0_spo [get_bd_pins Multi_8CH32_0/data2] [get_bd_pins Pipeline_CPU_0/inst_IF] [get_bd_pins ROM_B/spo] [get_bd_pins VGA_0/inst_IF]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins Counter_x_0/clk] [get_bd_pins Multi_8CH32_0/clk] [get_bd_pins SPIO_0/clk] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins RAM_Data/clk] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins Multi_8CH32_0/data1] [get_bd_pins xlconcat_0/dout]

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


