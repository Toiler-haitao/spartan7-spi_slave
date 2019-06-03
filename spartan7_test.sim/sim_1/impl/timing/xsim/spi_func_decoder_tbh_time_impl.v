// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue May 14 17:37:17 2019
// Host        : MALIC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.sim/sim_1/impl/timing/xsim/spi_func_decoder_tbh_time_impl.v
// Design      : spi_func_decoder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "2c028103" *) (* S00 = "10'b0000000000" *) (* S01 = "10'b0000000001" *) 
(* S02 = "10'b0000000010" *) (* S03 = "10'b0000000100" *) (* S04 = "10'b0000001000" *) 
(* S05 = "10'b0000010000" *) (* S06 = "10'b0000100000" *) (* S07 = "10'b0001000000" *) 
(* S08 = "10'b0010000000" *) (* S09 = "10'b0100000000" *) (* S10 = "10'b1000000000" *) 
(* NotValidForBitStream *)
module spi_func_decoder
   (clk,
    rst_n,
    frame_ready,
    func_byte,
    length_byte,
    param1_byte,
    param2_byte,
    func_error,
    overlay_start,
    overlay_stop,
    dac_start,
    dac_data,
    adc_start,
    adc_sampling_rate,
    adc_sample_nums,
    adc_data_request,
    adc_request_nums);
  input clk;
  input rst_n;
  input frame_ready;
  input [7:0]func_byte;
  input [7:0]length_byte;
  input [7:0]param1_byte;
  input [7:0]param2_byte;
  output func_error;
  output overlay_start;
  output overlay_stop;
  output dac_start;
  output [11:0]dac_data;
  output adc_start;
  output [7:0]adc_sampling_rate;
  output [7:0]adc_sample_nums;
  output adc_data_request;
  output [7:0]adc_request_nums;

  wire \FSM_onehot_current_state[0]_i_2_n_0 ;
  wire \FSM_onehot_current_state[1]_i_2_n_0 ;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state[7]_i_2_n_0 ;
  wire \FSM_onehot_current_state[7]_i_3_n_0 ;
  wire \FSM_onehot_current_state[9]_i_2_n_0 ;
  wire \FSM_onehot_current_state[9]_i_3_n_0 ;
  wire \FSM_onehot_current_state[9]_i_4_n_0 ;
  wire \FSM_onehot_current_state[9]_i_5_n_0 ;
  wire \FSM_onehot_current_state[9]_i_6_n_0 ;
  wire adc_data_request;
  wire adc_data_request_OBUF;
  wire adc_data_request_i_1_n_0;
  wire adc_data_request_i_2_n_0;
  wire adc_data_request_i_3_n_0;
  wire adc_data_request_i_4_n_0;
  wire adc_data_request_i_5_n_0;
  wire adc_data_request_i_6_n_0;
  wire [7:0]adc_request_nums;
  wire \adc_request_nums[7]_i_1_n_0 ;
  wire \adc_request_nums[7]_i_2_n_0 ;
  wire [7:0]adc_request_nums_OBUF;
  wire [7:0]adc_sample_nums;
  wire [7:0]adc_sample_nums_OBUF;
  wire [7:0]adc_sampling_rate;
  wire \adc_sampling_rate[7]_i_1_n_0 ;
  wire \adc_sampling_rate[7]_i_2_n_0 ;
  wire \adc_sampling_rate[7]_i_3_n_0 ;
  wire \adc_sampling_rate[7]_i_4_n_0 ;
  wire \adc_sampling_rate[7]_i_5_n_0 ;
  wire [7:0]adc_sampling_rate_OBUF;
  wire adc_start;
  wire adc_start_OBUF;
  wire adc_start_i_1_n_0;
  wire adc_start_i_2_n_0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [9:0]current_state;
  wire [11:0]dac_data;
  wire \dac_data[11]_i_1_n_0 ;
  wire \dac_data[11]_i_2_n_0 ;
  wire \dac_data[11]_i_3_n_0 ;
  wire \dac_data[11]_i_4_n_0 ;
  wire \dac_data[11]_i_5_n_0 ;
  wire \dac_data[11]_i_6_n_0 ;
  wire \dac_data[11]_i_7_n_0 ;
  wire [11:0]dac_data_OBUF;
  wire dac_start;
  wire dac_start_OBUF;
  wire dac_start_i_1_n_0;
  wire dac_start_i_2_n_0;
  wire dac_start_i_3_n_0;
  wire dac_start_i_4_n_0;
  wire dac_start_i_5_n_0;
  wire frame_ready;
  wire frame_ready_IBUF;
  wire [7:0]func_byte;
  wire [7:0]func_byte_IBUF;
  wire \func_byte_reg[7]_i_1_n_0 ;
  wire func_error;
  wire func_error_OBUF;
  wire func_error_i_1_n_0;
  wire func_error_i_2_n_0;
  wire func_error_i_3_n_0;
  wire func_error_i_4_n_0;
  wire func_error_i_5_n_0;
  wire func_error_i_6_n_0;
  wire func_error_i_7_n_0;
  wire [7:0]length_byte;
  wire [7:0]length_byte_IBUF;
  wire [7:0]length_byte_reg;
  wire [9:0]next_state__0;
  wire overlay_start;
  wire overlay_start_OBUF;
  wire overlay_start_i_1_n_0;
  wire overlay_start_i_2_n_0;
  wire overlay_start_i_3_n_0;
  wire overlay_start_i_4_n_0;
  wire overlay_start_i_5_n_0;
  wire overlay_stop;
  wire overlay_stop_OBUF;
  wire overlay_stop_i_1_n_0;
  wire overlay_stop_i_2_n_0;
  wire overlay_stop_i_3_n_0;
  wire [1:0]p_0_in;
  wire [1:1]p_0_in__0;
  wire [7:0]param1_byte;
  wire [7:0]param1_byte_IBUF;
  wire [7:0]param1_byte_reg;
  wire [7:0]param2_byte;
  wire [7:0]param2_byte_IBUF;
  wire [7:0]param2_byte_reg;
  wire rst_n;
  wire rst_n_IBUF;
  wire [7:0]sel0;

initial begin
 $sdf_annotate("spi_func_decoder_tbh_time_impl.sdf",,,,"tool_control");
end
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(current_state[4]),
        .I3(current_state[6]),
        .I4(\FSM_onehot_current_state[0]_i_2_n_0 ),
        .O(next_state__0[0]));
  LUT5 #(
    .INIT(32'hFEEEFEFE)) 
    \FSM_onehot_current_state[0]_i_2 
       (.I0(current_state[9]),
        .I1(current_state[8]),
        .I2(current_state[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .O(\FSM_onehot_current_state[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I1(sel0[2]),
        .O(next_state__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current_state[1]_i_2 
       (.I0(\adc_sampling_rate[7]_i_5_n_0 ),
        .I1(sel0[0]),
        .O(\FSM_onehot_current_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I1(sel0[0]),
        .O(next_state__0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I1(sel0[0]),
        .O(next_state__0[3]));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .I4(\FSM_onehot_current_state[7]_i_3_n_0 ),
        .I5(func_error_i_4_n_0),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(length_byte_reg[0]),
        .I1(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I2(length_byte_reg[1]),
        .I3(current_state[3]),
        .O(next_state__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_onehot_current_state[7]_i_2_n_0 ),
        .I1(sel0[0]),
        .O(next_state__0[5]));
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(length_byte_reg[1]),
        .I1(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I2(length_byte_reg[0]),
        .I3(current_state[5]),
        .O(next_state__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current_state[7]_i_1 
       (.I0(\FSM_onehot_current_state[7]_i_2_n_0 ),
        .I1(sel0[0]),
        .O(next_state__0[7]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \FSM_onehot_current_state[7]_i_2 
       (.I0(sel0[1]),
        .I1(func_error_i_4_n_0),
        .I2(\FSM_onehot_current_state[7]_i_3_n_0 ),
        .I3(sel0[7]),
        .I4(sel0[6]),
        .I5(sel0[2]),
        .O(\FSM_onehot_current_state[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_current_state[7]_i_3 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .O(\FSM_onehot_current_state[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_onehot_current_state[8]_i_1 
       (.I0(length_byte_reg[1]),
        .I1(length_byte_reg[0]),
        .I2(current_state[7]),
        .I3(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .O(next_state__0[8]));
  LUT6 #(
    .INIT(64'hFFEAEAEAFFEAFFEA)) 
    \FSM_onehot_current_state[9]_i_1 
       (.I0(\FSM_onehot_current_state[9]_i_3_n_0 ),
        .I1(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I2(\FSM_onehot_current_state[9]_i_5_n_0 ),
        .I3(current_state[7]),
        .I4(length_byte_reg[1]),
        .I5(length_byte_reg[0]),
        .O(next_state__0[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_current_state[9]_i_2 
       (.I0(rst_n_IBUF),
        .O(\FSM_onehot_current_state[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEFFFFE0EEE0EE)) 
    \FSM_onehot_current_state[9]_i_3 
       (.I0(current_state[3]),
        .I1(current_state[5]),
        .I2(length_byte_reg[0]),
        .I3(length_byte_reg[1]),
        .I4(func_error_i_4_n_0),
        .I5(\FSM_onehot_current_state[9]_i_6_n_0 ),
        .O(\FSM_onehot_current_state[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_current_state[9]_i_4 
       (.I0(length_byte_reg[6]),
        .I1(length_byte_reg[7]),
        .I2(length_byte_reg[4]),
        .I3(length_byte_reg[5]),
        .I4(length_byte_reg[3]),
        .I5(length_byte_reg[2]),
        .O(\FSM_onehot_current_state[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_current_state[9]_i_5 
       (.I0(current_state[5]),
        .I1(current_state[3]),
        .I2(current_state[7]),
        .O(\FSM_onehot_current_state[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFC1)) 
    \FSM_onehot_current_state[9]_i_6 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[7]),
        .I4(sel0[6]),
        .I5(\FSM_onehot_current_state[7]_i_3_n_0 ),
        .O(\FSM_onehot_current_state[9]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state__0[0]),
        .PRE(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(next_state__0[1]),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(next_state__0[2]),
        .Q(current_state[2]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(next_state__0[3]),
        .Q(current_state[3]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(next_state__0[4]),
        .Q(current_state[4]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(next_state__0[5]),
        .Q(current_state[5]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(next_state__0[6]),
        .Q(current_state[6]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(next_state__0[7]),
        .Q(current_state[7]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(next_state__0[8]),
        .Q(current_state[8]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(next_state__0[9]),
        .Q(current_state[9]));
  OBUF adc_data_request_OBUF_inst
       (.I(adc_data_request_OBUF),
        .O(adc_data_request));
  LUT6 #(
    .INIT(64'hFEFFFEFEFEFEFEFE)) 
    adc_data_request_i_1
       (.I0(next_state__0[8]),
        .I1(adc_data_request_i_3_n_0),
        .I2(dac_start_i_3_n_0),
        .I3(adc_data_request_i_4_n_0),
        .I4(current_state[5]),
        .I5(adc_data_request_i_5_n_0),
        .O(adc_data_request_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000000000A2AA)) 
    adc_data_request_i_2
       (.I0(next_state__0[8]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(current_state[0]),
        .I4(current_state[3]),
        .I5(current_state[5]),
        .O(adc_data_request_i_2_n_0));
  LUT6 #(
    .INIT(64'h000E000000000000)) 
    adc_data_request_i_3
       (.I0(current_state[3]),
        .I1(current_state[5]),
        .I2(length_byte_reg[0]),
        .I3(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I4(length_byte_reg[1]),
        .I5(adc_data_request_i_6_n_0),
        .O(adc_data_request_i_3_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    adc_data_request_i_4
       (.I0(current_state[3]),
        .I1(length_byte_reg[1]),
        .O(adc_data_request_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    adc_data_request_i_5
       (.I0(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I1(length_byte_reg[0]),
        .O(adc_data_request_i_5_n_0));
  LUT4 #(
    .INIT(16'hAEAA)) 
    adc_data_request_i_6
       (.I0(current_state[7]),
        .I1(current_state[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(adc_data_request_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    adc_data_request_reg
       (.C(clk_IBUF_BUFG),
        .CE(adc_data_request_i_1_n_0),
        .D(adc_data_request_i_2_n_0),
        .Q(adc_data_request_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEA2A)) 
    \adc_request_nums[7]_i_1 
       (.I0(overlay_stop_i_3_n_0),
        .I1(sel0[0]),
        .I2(\FSM_onehot_current_state[7]_i_2_n_0 ),
        .I3(current_state[7]),
        .I4(current_state[3]),
        .I5(current_state[5]),
        .O(\adc_request_nums[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \adc_request_nums[7]_i_2 
       (.I0(sel0[0]),
        .I1(\FSM_onehot_current_state[7]_i_2_n_0 ),
        .I2(overlay_stop_i_3_n_0),
        .O(\adc_request_nums[7]_i_2_n_0 ));
  OBUF \adc_request_nums_OBUF[0]_inst 
       (.I(adc_request_nums_OBUF[0]),
        .O(adc_request_nums[0]));
  OBUF \adc_request_nums_OBUF[1]_inst 
       (.I(adc_request_nums_OBUF[1]),
        .O(adc_request_nums[1]));
  OBUF \adc_request_nums_OBUF[2]_inst 
       (.I(adc_request_nums_OBUF[2]),
        .O(adc_request_nums[2]));
  OBUF \adc_request_nums_OBUF[3]_inst 
       (.I(adc_request_nums_OBUF[3]),
        .O(adc_request_nums[3]));
  OBUF \adc_request_nums_OBUF[4]_inst 
       (.I(adc_request_nums_OBUF[4]),
        .O(adc_request_nums[4]));
  OBUF \adc_request_nums_OBUF[5]_inst 
       (.I(adc_request_nums_OBUF[5]),
        .O(adc_request_nums[5]));
  OBUF \adc_request_nums_OBUF[6]_inst 
       (.I(adc_request_nums_OBUF[6]),
        .O(adc_request_nums[6]));
  OBUF \adc_request_nums_OBUF[7]_inst 
       (.I(adc_request_nums_OBUF[7]),
        .O(adc_request_nums[7]));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_request_nums[7]_i_2_n_0 ),
        .D(param2_byte_reg[0]),
        .Q(adc_request_nums_OBUF[0]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_request_nums[7]_i_2_n_0 ),
        .D(param2_byte_reg[1]),
        .Q(adc_request_nums_OBUF[1]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_request_nums[7]_i_2_n_0 ),
        .D(param2_byte_reg[2]),
        .Q(adc_request_nums_OBUF[2]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_request_nums[7]_i_2_n_0 ),
        .D(param2_byte_reg[3]),
        .Q(adc_request_nums_OBUF[3]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_request_nums[7]_i_2_n_0 ),
        .D(param2_byte_reg[4]),
        .Q(adc_request_nums_OBUF[4]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_request_nums[7]_i_2_n_0 ),
        .D(param2_byte_reg[5]),
        .Q(adc_request_nums_OBUF[5]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_request_nums[7]_i_2_n_0 ),
        .D(param2_byte_reg[6]),
        .Q(adc_request_nums_OBUF[6]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_request_nums[7]_i_2_n_0 ),
        .D(param2_byte_reg[7]),
        .Q(adc_request_nums_OBUF[7]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  OBUF \adc_sample_nums_OBUF[0]_inst 
       (.I(adc_sample_nums_OBUF[0]),
        .O(adc_sample_nums[0]));
  OBUF \adc_sample_nums_OBUF[1]_inst 
       (.I(adc_sample_nums_OBUF[1]),
        .O(adc_sample_nums[1]));
  OBUF \adc_sample_nums_OBUF[2]_inst 
       (.I(adc_sample_nums_OBUF[2]),
        .O(adc_sample_nums[2]));
  OBUF \adc_sample_nums_OBUF[3]_inst 
       (.I(adc_sample_nums_OBUF[3]),
        .O(adc_sample_nums[3]));
  OBUF \adc_sample_nums_OBUF[4]_inst 
       (.I(adc_sample_nums_OBUF[4]),
        .O(adc_sample_nums[4]));
  OBUF \adc_sample_nums_OBUF[5]_inst 
       (.I(adc_sample_nums_OBUF[5]),
        .O(adc_sample_nums[5]));
  OBUF \adc_sample_nums_OBUF[6]_inst 
       (.I(adc_sample_nums_OBUF[6]),
        .O(adc_sample_nums[6]));
  OBUF \adc_sample_nums_OBUF[7]_inst 
       (.I(adc_sample_nums_OBUF[7]),
        .O(adc_sample_nums[7]));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param2_byte_reg[0]),
        .Q(adc_sample_nums_OBUF[0]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param2_byte_reg[1]),
        .Q(adc_sample_nums_OBUF[1]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param2_byte_reg[2]),
        .Q(adc_sample_nums_OBUF[2]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param2_byte_reg[3]),
        .Q(adc_sample_nums_OBUF[3]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param2_byte_reg[4]),
        .Q(adc_sample_nums_OBUF[4]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param2_byte_reg[5]),
        .Q(adc_sample_nums_OBUF[5]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param2_byte_reg[6]),
        .Q(adc_sample_nums_OBUF[6]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param2_byte_reg[7]),
        .Q(adc_sample_nums_OBUF[7]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEEEEEE0EEEEEE)) 
    \adc_sampling_rate[7]_i_1 
       (.I0(\adc_sampling_rate[7]_i_3_n_0 ),
        .I1(\adc_sampling_rate[7]_i_4_n_0 ),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(\adc_sampling_rate[7]_i_5_n_0 ),
        .I5(\FSM_onehot_current_state[9]_i_5_n_0 ),
        .O(\adc_sampling_rate[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEEFFE2)) 
    \adc_sampling_rate[7]_i_2 
       (.I0(func_error_i_4_n_0),
        .I1(\FSM_onehot_current_state[9]_i_5_n_0 ),
        .I2(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I3(next_state__0[5]),
        .I4(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .I5(\adc_sampling_rate[7]_i_3_n_0 ),
        .O(\adc_sampling_rate[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \adc_sampling_rate[7]_i_3 
       (.I0(current_state[5]),
        .I1(length_byte_reg[0]),
        .I2(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I3(length_byte_reg[1]),
        .I4(current_state[3]),
        .I5(overlay_start_i_3_n_0),
        .O(\adc_sampling_rate[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFDF00DF)) 
    \adc_sampling_rate[7]_i_4 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(current_state[0]),
        .I3(\FSM_onehot_current_state[9]_i_5_n_0 ),
        .I4(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .O(\adc_sampling_rate[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \adc_sampling_rate[7]_i_5 
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .I2(\FSM_onehot_current_state[7]_i_3_n_0 ),
        .I3(func_error_i_4_n_0),
        .I4(sel0[1]),
        .O(\adc_sampling_rate[7]_i_5_n_0 ));
  OBUF \adc_sampling_rate_OBUF[0]_inst 
       (.I(adc_sampling_rate_OBUF[0]),
        .O(adc_sampling_rate[0]));
  OBUF \adc_sampling_rate_OBUF[1]_inst 
       (.I(adc_sampling_rate_OBUF[1]),
        .O(adc_sampling_rate[1]));
  OBUF \adc_sampling_rate_OBUF[2]_inst 
       (.I(adc_sampling_rate_OBUF[2]),
        .O(adc_sampling_rate[2]));
  OBUF \adc_sampling_rate_OBUF[3]_inst 
       (.I(adc_sampling_rate_OBUF[3]),
        .O(adc_sampling_rate[3]));
  OBUF \adc_sampling_rate_OBUF[4]_inst 
       (.I(adc_sampling_rate_OBUF[4]),
        .O(adc_sampling_rate[4]));
  OBUF \adc_sampling_rate_OBUF[5]_inst 
       (.I(adc_sampling_rate_OBUF[5]),
        .O(adc_sampling_rate[5]));
  OBUF \adc_sampling_rate_OBUF[6]_inst 
       (.I(adc_sampling_rate_OBUF[6]),
        .O(adc_sampling_rate[6]));
  OBUF \adc_sampling_rate_OBUF[7]_inst 
       (.I(adc_sampling_rate_OBUF[7]),
        .O(adc_sampling_rate[7]));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param1_byte_reg[0]),
        .Q(adc_sampling_rate_OBUF[0]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param1_byte_reg[1]),
        .Q(adc_sampling_rate_OBUF[1]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param1_byte_reg[2]),
        .Q(adc_sampling_rate_OBUF[2]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param1_byte_reg[3]),
        .Q(adc_sampling_rate_OBUF[3]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param1_byte_reg[4]),
        .Q(adc_sampling_rate_OBUF[4]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param1_byte_reg[5]),
        .Q(adc_sampling_rate_OBUF[5]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param1_byte_reg[6]),
        .Q(adc_sampling_rate_OBUF[6]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\adc_sampling_rate[7]_i_2_n_0 ),
        .D(param1_byte_reg[7]),
        .Q(adc_sampling_rate_OBUF[7]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  OBUF adc_start_OBUF_inst
       (.I(adc_start_OBUF),
        .O(adc_start));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEAE)) 
    adc_start_i_1
       (.I0(dac_start_i_3_n_0),
        .I1(next_state__0[4]),
        .I2(func_error_i_4_n_0),
        .I3(current_state[7]),
        .I4(dac_start_i_4_n_0),
        .I5(next_state__0[6]),
        .O(adc_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h1101111100000000)) 
    adc_start_i_2
       (.I0(current_state[3]),
        .I1(current_state[7]),
        .I2(current_state[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(next_state__0[6]),
        .O(adc_start_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    adc_start_reg
       (.C(clk_IBUF_BUFG),
        .CE(adc_start_i_1_n_0),
        .D(adc_start_i_2_n_0),
        .Q(adc_start_OBUF),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT6 #(
    .INIT(64'h0000000002222202)) 
    \dac_data[11]_i_1 
       (.I0(\dac_data[11]_i_2_n_0 ),
        .I1(\dac_data[11]_i_3_n_0 ),
        .I2(func_error_i_5_n_0),
        .I3(length_byte_reg[0]),
        .I4(length_byte_reg[1]),
        .I5(\dac_data[11]_i_4_n_0 ),
        .O(\dac_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \dac_data[11]_i_2 
       (.I0(sel0[0]),
        .I1(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I2(\dac_data[11]_i_5_n_0 ),
        .I3(overlay_start_i_4_n_0),
        .I4(\dac_data[11]_i_6_n_0 ),
        .I5(overlay_start_i_3_n_0),
        .O(\dac_data[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8B830203333)) 
    \dac_data[11]_i_3 
       (.I0(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I1(func_error_i_4_n_0),
        .I2(\FSM_onehot_current_state[9]_i_6_n_0 ),
        .I3(length_byte_reg[1]),
        .I4(current_state[7]),
        .I5(func_error_i_7_n_0),
        .O(\dac_data[11]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h03007C00)) 
    \dac_data[11]_i_4 
       (.I0(length_byte_reg[1]),
        .I1(current_state[5]),
        .I2(current_state[3]),
        .I3(func_error_i_4_n_0),
        .I4(current_state[7]),
        .O(\dac_data[11]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \dac_data[11]_i_5 
       (.I0(current_state[3]),
        .I1(length_byte_reg[1]),
        .I2(current_state[5]),
        .I3(length_byte_reg[0]),
        .I4(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .O(\dac_data[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \dac_data[11]_i_6 
       (.I0(sel0[0]),
        .I1(\FSM_onehot_current_state[9]_i_5_n_0 ),
        .I2(sel0[1]),
        .I3(\dac_data[11]_i_7_n_0 ),
        .I4(sel0[7]),
        .I5(sel0[6]),
        .O(\dac_data[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \dac_data[11]_i_7 
       (.I0(sel0[3]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(current_state[0]),
        .I4(p_0_in[1]),
        .I5(p_0_in[0]),
        .O(\dac_data[11]_i_7_n_0 ));
  OBUF \dac_data_OBUF[0]_inst 
       (.I(dac_data_OBUF[0]),
        .O(dac_data[0]));
  OBUF \dac_data_OBUF[10]_inst 
       (.I(dac_data_OBUF[10]),
        .O(dac_data[10]));
  OBUF \dac_data_OBUF[11]_inst 
       (.I(dac_data_OBUF[11]),
        .O(dac_data[11]));
  OBUF \dac_data_OBUF[1]_inst 
       (.I(dac_data_OBUF[1]),
        .O(dac_data[1]));
  OBUF \dac_data_OBUF[2]_inst 
       (.I(dac_data_OBUF[2]),
        .O(dac_data[2]));
  OBUF \dac_data_OBUF[3]_inst 
       (.I(dac_data_OBUF[3]),
        .O(dac_data[3]));
  OBUF \dac_data_OBUF[4]_inst 
       (.I(dac_data_OBUF[4]),
        .O(dac_data[4]));
  OBUF \dac_data_OBUF[5]_inst 
       (.I(dac_data_OBUF[5]),
        .O(dac_data[5]));
  OBUF \dac_data_OBUF[6]_inst 
       (.I(dac_data_OBUF[6]),
        .O(dac_data[6]));
  OBUF \dac_data_OBUF[7]_inst 
       (.I(dac_data_OBUF[7]),
        .O(dac_data[7]));
  OBUF \dac_data_OBUF[8]_inst 
       (.I(dac_data_OBUF[8]),
        .O(dac_data[8]));
  OBUF \dac_data_OBUF[9]_inst 
       (.I(dac_data_OBUF[9]),
        .O(dac_data[9]));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\dac_data[11]_i_2_n_0 ),
        .D(param2_byte_reg[0]),
        .Q(dac_data_OBUF[0]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\dac_data[11]_i_2_n_0 ),
        .D(param1_byte_reg[2]),
        .Q(dac_data_OBUF[10]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\dac_data[11]_i_2_n_0 ),
        .D(param1_byte_reg[3]),
        .Q(dac_data_OBUF[11]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\dac_data[11]_i_2_n_0 ),
        .D(param2_byte_reg[1]),
        .Q(dac_data_OBUF[1]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\dac_data[11]_i_2_n_0 ),
        .D(param2_byte_reg[2]),
        .Q(dac_data_OBUF[2]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\dac_data[11]_i_2_n_0 ),
        .D(param2_byte_reg[3]),
        .Q(dac_data_OBUF[3]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\dac_data[11]_i_2_n_0 ),
        .D(param2_byte_reg[4]),
        .Q(dac_data_OBUF[4]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\dac_data[11]_i_2_n_0 ),
        .D(param2_byte_reg[5]),
        .Q(dac_data_OBUF[5]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\dac_data[11]_i_2_n_0 ),
        .D(param2_byte_reg[6]),
        .Q(dac_data_OBUF[6]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\dac_data[11]_i_2_n_0 ),
        .D(param2_byte_reg[7]),
        .Q(dac_data_OBUF[7]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\dac_data[11]_i_2_n_0 ),
        .D(param1_byte_reg[0]),
        .Q(dac_data_OBUF[8]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\dac_data[11]_i_2_n_0 ),
        .D(param1_byte_reg[1]),
        .Q(dac_data_OBUF[9]),
        .R(\dac_data[11]_i_1_n_0 ));
  OBUF dac_start_OBUF_inst
       (.I(dac_start_OBUF),
        .O(dac_start));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEAE)) 
    dac_start_i_1
       (.I0(dac_start_i_3_n_0),
        .I1(next_state__0[6]),
        .I2(func_error_i_4_n_0),
        .I3(current_state[7]),
        .I4(dac_start_i_4_n_0),
        .I5(next_state__0[4]),
        .O(dac_start_i_1_n_0));
  LUT6 #(
    .INIT(64'h1101111100000000)) 
    dac_start_i_2
       (.I0(current_state[5]),
        .I1(current_state[7]),
        .I2(current_state[0]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(next_state__0[4]),
        .O(dac_start_i_2_n_0));
  LUT6 #(
    .INIT(64'h0CFC0C0CFCAC0C0C)) 
    dac_start_i_3
       (.I0(sel0[0]),
        .I1(func_error_i_4_n_0),
        .I2(\FSM_onehot_current_state[9]_i_5_n_0 ),
        .I3(sel0[1]),
        .I4(dac_start_i_5_n_0),
        .I5(sel0[2]),
        .O(dac_start_i_3_n_0));
  LUT6 #(
    .INIT(64'h0040004000000040)) 
    dac_start_i_4
       (.I0(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I1(current_state[7]),
        .I2(length_byte_reg[0]),
        .I3(length_byte_reg[1]),
        .I4(func_error_i_4_n_0),
        .I5(func_error_i_7_n_0),
        .O(dac_start_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    dac_start_i_5
       (.I0(func_error_i_4_n_0),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(sel0[7]),
        .I5(sel0[6]),
        .O(dac_start_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dac_start_reg
       (.C(clk_IBUF_BUFG),
        .CE(dac_start_i_1_n_0),
        .D(dac_start_i_2_n_0),
        .Q(dac_start_OBUF),
        .R(1'b0));
  IBUF frame_ready_IBUF_inst
       (.I(frame_ready),
        .O(frame_ready_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    \frame_ready_register_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(frame_ready_IBUF),
        .Q(p_0_in__0));
  FDCE #(
    .INIT(1'b0)) 
    \frame_ready_register_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(p_0_in__0),
        .Q(p_0_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_ready_register_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(p_0_in[1]));
  IBUF \func_byte_IBUF[0]_inst 
       (.I(func_byte[0]),
        .O(func_byte_IBUF[0]));
  IBUF \func_byte_IBUF[1]_inst 
       (.I(func_byte[1]),
        .O(func_byte_IBUF[1]));
  IBUF \func_byte_IBUF[2]_inst 
       (.I(func_byte[2]),
        .O(func_byte_IBUF[2]));
  IBUF \func_byte_IBUF[3]_inst 
       (.I(func_byte[3]),
        .O(func_byte_IBUF[3]));
  IBUF \func_byte_IBUF[4]_inst 
       (.I(func_byte[4]),
        .O(func_byte_IBUF[4]));
  IBUF \func_byte_IBUF[5]_inst 
       (.I(func_byte[5]),
        .O(func_byte_IBUF[5]));
  IBUF \func_byte_IBUF[6]_inst 
       (.I(func_byte[6]),
        .O(func_byte_IBUF[6]));
  IBUF \func_byte_IBUF[7]_inst 
       (.I(func_byte[7]),
        .O(func_byte_IBUF[7]));
  LUT3 #(
    .INIT(8'h10)) 
    \func_byte_reg[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(frame_ready_IBUF),
        .O(\func_byte_reg[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(func_byte_IBUF[0]),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(func_byte_IBUF[1]),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(func_byte_IBUF[2]),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(func_byte_IBUF[3]),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(func_byte_IBUF[4]),
        .Q(sel0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(func_byte_IBUF[5]),
        .Q(sel0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(func_byte_IBUF[6]),
        .Q(sel0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(func_byte_IBUF[7]),
        .Q(sel0[7]));
  OBUF func_error_OBUF_inst
       (.I(func_error_OBUF),
        .O(func_error));
  LUT6 #(
    .INIT(64'hFFFEFFFFFEEFFFFE)) 
    func_error_i_1
       (.I0(\FSM_onehot_current_state[9]_i_3_n_0 ),
        .I1(func_error_i_3_n_0),
        .I2(current_state[3]),
        .I3(current_state[5]),
        .I4(func_error_i_4_n_0),
        .I5(current_state[7]),
        .O(func_error_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFC88C)) 
    func_error_i_2
       (.I0(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I1(func_error_i_5_n_0),
        .I2(length_byte_reg[1]),
        .I3(length_byte_reg[0]),
        .I4(func_error_i_6_n_0),
        .O(func_error_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFF000010110000)) 
    func_error_i_3
       (.I0(current_state[5]),
        .I1(current_state[3]),
        .I2(length_byte_reg[1]),
        .I3(length_byte_reg[0]),
        .I4(func_error_i_4_n_0),
        .I5(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .O(func_error_i_3_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    func_error_i_4
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(current_state[0]),
        .O(func_error_i_4_n_0));
  LUT6 #(
    .INIT(64'hEEFEEEEEEE0EEEEE)) 
    func_error_i_5
       (.I0(current_state[3]),
        .I1(current_state[5]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .I4(current_state[0]),
        .I5(\FSM_onehot_current_state[9]_i_6_n_0 ),
        .O(func_error_i_5_n_0));
  LUT6 #(
    .INIT(64'hAABAAAAA0F330C00)) 
    func_error_i_6
       (.I0(func_error_i_3_n_0),
        .I1(func_error_i_4_n_0),
        .I2(length_byte_reg[1]),
        .I3(func_error_i_7_n_0),
        .I4(\FSM_onehot_current_state[9]_i_6_n_0 ),
        .I5(current_state[7]),
        .O(func_error_i_6_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    func_error_i_7
       (.I0(current_state[3]),
        .I1(current_state[5]),
        .O(func_error_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    func_error_reg
       (.C(clk_IBUF_BUFG),
        .CE(func_error_i_1_n_0),
        .D(func_error_i_2_n_0),
        .Q(func_error_OBUF),
        .R(1'b0));
  IBUF \length_byte_IBUF[0]_inst 
       (.I(length_byte[0]),
        .O(length_byte_IBUF[0]));
  IBUF \length_byte_IBUF[1]_inst 
       (.I(length_byte[1]),
        .O(length_byte_IBUF[1]));
  IBUF \length_byte_IBUF[2]_inst 
       (.I(length_byte[2]),
        .O(length_byte_IBUF[2]));
  IBUF \length_byte_IBUF[3]_inst 
       (.I(length_byte[3]),
        .O(length_byte_IBUF[3]));
  IBUF \length_byte_IBUF[4]_inst 
       (.I(length_byte[4]),
        .O(length_byte_IBUF[4]));
  IBUF \length_byte_IBUF[5]_inst 
       (.I(length_byte[5]),
        .O(length_byte_IBUF[5]));
  IBUF \length_byte_IBUF[6]_inst 
       (.I(length_byte[6]),
        .O(length_byte_IBUF[6]));
  IBUF \length_byte_IBUF[7]_inst 
       (.I(length_byte[7]),
        .O(length_byte_IBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(length_byte_IBUF[0]),
        .Q(length_byte_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(length_byte_IBUF[1]),
        .Q(length_byte_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(length_byte_IBUF[2]),
        .Q(length_byte_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(length_byte_IBUF[3]),
        .Q(length_byte_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(length_byte_IBUF[4]),
        .Q(length_byte_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(length_byte_IBUF[5]),
        .Q(length_byte_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(length_byte_IBUF[6]),
        .Q(length_byte_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(length_byte_IBUF[7]),
        .Q(length_byte_reg[7]));
  OBUF overlay_start_OBUF_inst
       (.I(overlay_start_OBUF),
        .O(overlay_start));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF8FFF8)) 
    overlay_start_i_1
       (.I0(current_state[5]),
        .I1(next_state__0[4]),
        .I2(overlay_start_i_3_n_0),
        .I3(overlay_start_i_4_n_0),
        .I4(sel0[2]),
        .I5(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .O(overlay_start_i_1_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    overlay_start_i_2
       (.I0(sel0[2]),
        .I1(current_state[5]),
        .I2(current_state[3]),
        .I3(current_state[7]),
        .I4(\FSM_onehot_current_state[1]_i_2_n_0 ),
        .O(overlay_start_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000000BA00020)) 
    overlay_start_i_3
       (.I0(func_error_i_7_n_0),
        .I1(func_error_i_4_n_0),
        .I2(length_byte_reg[1]),
        .I3(length_byte_reg[0]),
        .I4(current_state[7]),
        .I5(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .O(overlay_start_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF04080000)) 
    overlay_start_i_4
       (.I0(sel0[2]),
        .I1(overlay_start_i_5_n_0),
        .I2(\FSM_onehot_current_state[7]_i_3_n_0 ),
        .I3(sel0[1]),
        .I4(\FSM_onehot_current_state[9]_i_5_n_0 ),
        .I5(func_error_i_4_n_0),
        .O(overlay_start_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    overlay_start_i_5
       (.I0(sel0[6]),
        .I1(sel0[7]),
        .O(overlay_start_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    overlay_start_reg
       (.C(clk_IBUF_BUFG),
        .CE(overlay_start_i_1_n_0),
        .D(overlay_start_i_2_n_0),
        .Q(overlay_start_OBUF),
        .R(1'b0));
  OBUF overlay_stop_OBUF_inst
       (.I(overlay_stop_OBUF),
        .O(overlay_stop));
  LUT3 #(
    .INIT(8'hF4)) 
    overlay_stop_i_1
       (.I0(sel0[0]),
        .I1(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I2(overlay_stop_i_3_n_0),
        .O(overlay_stop_i_1_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    overlay_stop_i_2
       (.I0(sel0[0]),
        .I1(current_state[5]),
        .I2(current_state[3]),
        .I3(current_state[7]),
        .I4(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .O(overlay_stop_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEAAA)) 
    overlay_stop_i_3
       (.I0(overlay_start_i_3_n_0),
        .I1(\adc_sampling_rate[7]_i_5_n_0 ),
        .I2(\FSM_onehot_current_state[9]_i_5_n_0 ),
        .I3(sel0[0]),
        .I4(overlay_start_i_4_n_0),
        .I5(\dac_data[11]_i_5_n_0 ),
        .O(overlay_stop_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    overlay_stop_reg
       (.C(clk_IBUF_BUFG),
        .CE(overlay_stop_i_1_n_0),
        .D(overlay_stop_i_2_n_0),
        .Q(overlay_stop_OBUF),
        .R(1'b0));
  IBUF \param1_byte_IBUF[0]_inst 
       (.I(param1_byte[0]),
        .O(param1_byte_IBUF[0]));
  IBUF \param1_byte_IBUF[1]_inst 
       (.I(param1_byte[1]),
        .O(param1_byte_IBUF[1]));
  IBUF \param1_byte_IBUF[2]_inst 
       (.I(param1_byte[2]),
        .O(param1_byte_IBUF[2]));
  IBUF \param1_byte_IBUF[3]_inst 
       (.I(param1_byte[3]),
        .O(param1_byte_IBUF[3]));
  IBUF \param1_byte_IBUF[4]_inst 
       (.I(param1_byte[4]),
        .O(param1_byte_IBUF[4]));
  IBUF \param1_byte_IBUF[5]_inst 
       (.I(param1_byte[5]),
        .O(param1_byte_IBUF[5]));
  IBUF \param1_byte_IBUF[6]_inst 
       (.I(param1_byte[6]),
        .O(param1_byte_IBUF[6]));
  IBUF \param1_byte_IBUF[7]_inst 
       (.I(param1_byte[7]),
        .O(param1_byte_IBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param1_byte_IBUF[0]),
        .Q(param1_byte_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param1_byte_IBUF[1]),
        .Q(param1_byte_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param1_byte_IBUF[2]),
        .Q(param1_byte_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param1_byte_IBUF[3]),
        .Q(param1_byte_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param1_byte_IBUF[4]),
        .Q(param1_byte_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param1_byte_IBUF[5]),
        .Q(param1_byte_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param1_byte_IBUF[6]),
        .Q(param1_byte_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param1_byte_IBUF[7]),
        .Q(param1_byte_reg[7]));
  IBUF \param2_byte_IBUF[0]_inst 
       (.I(param2_byte[0]),
        .O(param2_byte_IBUF[0]));
  IBUF \param2_byte_IBUF[1]_inst 
       (.I(param2_byte[1]),
        .O(param2_byte_IBUF[1]));
  IBUF \param2_byte_IBUF[2]_inst 
       (.I(param2_byte[2]),
        .O(param2_byte_IBUF[2]));
  IBUF \param2_byte_IBUF[3]_inst 
       (.I(param2_byte[3]),
        .O(param2_byte_IBUF[3]));
  IBUF \param2_byte_IBUF[4]_inst 
       (.I(param2_byte[4]),
        .O(param2_byte_IBUF[4]));
  IBUF \param2_byte_IBUF[5]_inst 
       (.I(param2_byte[5]),
        .O(param2_byte_IBUF[5]));
  IBUF \param2_byte_IBUF[6]_inst 
       (.I(param2_byte[6]),
        .O(param2_byte_IBUF[6]));
  IBUF \param2_byte_IBUF[7]_inst 
       (.I(param2_byte[7]),
        .O(param2_byte_IBUF[7]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param2_byte_IBUF[0]),
        .Q(param2_byte_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param2_byte_IBUF[1]),
        .Q(param2_byte_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param2_byte_IBUF[2]),
        .Q(param2_byte_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param2_byte_IBUF[3]),
        .Q(param2_byte_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param2_byte_IBUF[4]),
        .Q(param2_byte_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param2_byte_IBUF[5]),
        .Q(param2_byte_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param2_byte_IBUF[6]),
        .Q(param2_byte_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .D(param2_byte_IBUF[7]),
        .Q(param2_byte_reg[7]));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
