# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7s15ftgb196-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.cache/wt [current_project]
set_property parent.project_path C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo c:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.srcs/sources_1/new/spi_frame_decoder.v
  C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.srcs/sources_1/new/spi_frame_encoder.v
  C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.srcs/sources_1/new/spi_func_decoder.v
  C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.srcs/sources_1/new/spi_func_encoder.v
  C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.srcs/sources_1/imports/new/spi_slave.v
  C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.srcs/sources_1/new/spi_receive.v
}
read_ip -quiet C:/FILES/asw_files/FPGA/ip/fifo_generator_0/fifo_generator_0.xci
set_property used_in_implementation false [get_files -all c:/FILES/asw_files/FPGA/ip/fifo_generator_0/fifo_generator_0.xdc]
set_property used_in_implementation false [get_files -all c:/FILES/asw_files/FPGA/ip/fifo_generator_0/fifo_generator_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/FILES/asw_files/FPGA/ip/fifo_generator_0/fifo_generator_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.srcs/constrs_1/new/led.xdc
set_property used_in_implementation false [get_files C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.srcs/constrs_1/new/led.xdc]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top spi_receive -part xc7s15ftgb196-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef spi_receive.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file spi_receive_utilization_synth.rpt -pb spi_receive_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
