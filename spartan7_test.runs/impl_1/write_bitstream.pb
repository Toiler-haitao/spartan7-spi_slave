
u
Command: %s
53*	vivadotcl2D
0write_bitstream -force spi_receive.bit -bin_file2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7s152default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7s152default:defaultZ17-349h px� 
x
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
�Unspecified I/O Standard: 66 out of 66 logical ports use I/O standard (IOSTANDARD) value 'DEFAULT', instead of a user assigned specific value. This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all I/O standards. This design will fail to generate a bitstream unless all logical ports have a user specified I/O standard value defined. To allow bitstream creation with unspecified I/O standard values (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks NSTD-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run. Problem ports: %s.%s*DRC2�
 "=
adc_request_nums[7:0]adc_request_nums2default:default";
adc_sample_nums[7:0]adc_sample_nums2default:default"?
adc_sampling_rate[7:0]adc_sampling_rate2default:default".
dac_data[11:0]dac_data2default:default"=
tx_adc_fifo_data[7:0]tx_adc_fifo_data2default:default"A
tx_adc_sample_nums[7:0]tx_adc_sample_nums2default:default"
CSCS2default:default" 
MISOMISO2default:default" 
MOSIMOSI2default:default"
SCKSCK2default:default"8
adc_data_requestadc_data_request2default:default"*
	adc_start	adc_start2default:default"
clkclk2default:default"*
	dac_start	dac_start2default:default".
overlay_startoverlay_start2default:..."/
(the first 15 of 20 listed)2default:default2default:default2(
 DRC|Pin Planning2default:default8ZNSTD-1h px� 
�
�Unconstrained Logical Port: 66 out of 66 logical ports have no user assigned specific location constraint (LOC). This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all pin locations. This design will fail to generate a bitstream unless all logical ports have a user specified site LOC constraint defined.  To allow bitstream creation with unspecified pin locations (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks UCIO-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run.  Problem ports: %s.%s*DRC2�
 "=
adc_request_nums[7:0]adc_request_nums2default:default";
adc_sample_nums[7:0]adc_sample_nums2default:default"?
adc_sampling_rate[7:0]adc_sampling_rate2default:default".
dac_data[11:0]dac_data2default:default"=
tx_adc_fifo_data[7:0]tx_adc_fifo_data2default:default"A
tx_adc_sample_nums[7:0]tx_adc_sample_nums2default:default"
CSCS2default:default" 
MISOMISO2default:default" 
MOSIMOSI2default:default"
SCKSCK2default:default"8
adc_data_requestadc_data_request2default:default"*
	adc_start	adc_start2default:default"
clkclk2default:default"*
	dac_start	dac_start2default:default".
overlay_startoverlay_start2default:..."/
(the first 15 of 20 listed)2default:default2default:default2(
 DRC|Pin Planning2default:default8ZUCIO-1h px� 
�
�Missing CFGBVS and CONFIG_VOLTAGE Design Properties: Neither the CFGBVS nor CONFIG_VOLTAGE voltage property is set in the current_design.  Configuration bank voltage select (CFGBVS) must be set to VCCO or GND, and CONFIG_VOLTAGE must be set to the correct configuration voltage, in order to determine the I/O voltage support for the pins in bank 0.  It is suggested to specify these either using the 'Edit Device Properties' function in the GUI or directly in the XDC file using the following syntax:

 set_property CFGBVS value1 [current_design]
 #where value1 is either VCCO or GND

 set_property CONFIG_VOLTAGE value2 [current_design]
 #where value2 is the voltage provided to configuration bank 0

Refer to the device configuration user guide for more information.%s*DRC2(
 DRC|Pin Planning2default:default8ZCFGBVS-1h px� 
f
DRC finished with %s
1905*	planAhead2(
2 Errors, 1 Warnings2default:defaultZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
R
+Error(s) found during DRC. Bitgen not run.
1345*	planAheadZ12-1345h px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
992default:default2
52default:default2
02default:default2
32default:defaultZ4-41h px� 
Q

%s failed
30*	vivadotcl2#
write_bitstream2default:defaultZ4-43h px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Jun  2 22:57:23 20192default:defaultZ17-206h px� 


End Record