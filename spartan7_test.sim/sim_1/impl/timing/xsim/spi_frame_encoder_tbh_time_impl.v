// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May 16 22:52:14 2019
// Host        : MALIC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.sim/sim_1/impl/timing/xsim/spi_frame_encoder_tbh_time_impl.v
// Design      : spi_frame_encoder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "56777d4a" *) (* S00 = "14'b00000000000000" *) (* S01 = "14'b00000000000001" *) 
(* S02 = "14'b00000000000010" *) (* S03 = "14'b00000000000100" *) (* S04 = "14'b00000000001000" *) 
(* S05 = "14'b00000000010000" *) (* S06 = "14'b00000000100000" *) (* S07 = "14'b00000001000000" *) 
(* S08 = "14'b00000010000000" *) (* S09 = "14'b00000100000000" *) (* S10 = "14'b00001000000000" *) 
(* S11 = "14'b00010000000000" *) (* S12 = "14'b00100000000000" *) (* S13 = "14'b01000000000000" *) 
(* S14 = "14'b10000000000000" *) 
(* NotValidForBitStream *)
module spi_frame_encoder
   (clk,
    rst_n,
    spi_cs_start,
    spi_cs_end,
    spi_sent_start,
    spi_sent_data,
    spi_func_ready,
    func_byte,
    param_byte,
    spi_frame_end,
    fifo_rd_en,
    fifo_rd_clk,
    fifo_data);
  input clk;
  input rst_n;
  input spi_cs_start;
  input spi_cs_end;
  input spi_sent_start;
  output [7:0]spi_sent_data;
  input spi_func_ready;
  input [7:0]func_byte;
  input [7:0]param_byte;
  output spi_frame_end;
  output fifo_rd_en;
  output fifo_rd_clk;
  input [7:0]fifo_data;

  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[11]_i_1_n_0 ;
  wire \FSM_onehot_current_state[12]_i_1_n_0 ;
  wire \FSM_onehot_current_state[14]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_1_n_0 ;
  wire \FSM_onehot_current_state[4]_i_1_n_0 ;
  wire \FSM_onehot_current_state[5]_i_1_n_0 ;
  wire \FSM_onehot_current_state[5]_i_2_n_0 ;
  wire \FSM_onehot_current_state[7]_i_1_n_0 ;
  wire \FSM_onehot_current_state[8]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[10] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[11] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[12] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[13] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[14] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[7] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[8] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[9] ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]fifo_data;
  wire [7:0]fifo_data_IBUF;
  wire fifo_rd_clk;
  wire fifo_rd_clk_OBUF;
  wire fifo_rd_clk_i_10_n_0;
  wire fifo_rd_clk_i_11_n_0;
  wire fifo_rd_clk_i_12_n_0;
  wire fifo_rd_clk_i_13_n_0;
  wire fifo_rd_clk_i_1_n_0;
  wire fifo_rd_clk_i_2_n_0;
  wire fifo_rd_clk_i_3_n_0;
  wire fifo_rd_clk_i_4_n_0;
  wire fifo_rd_clk_i_5_n_0;
  wire fifo_rd_clk_i_6_n_0;
  wire fifo_rd_clk_i_7_n_0;
  wire fifo_rd_clk_i_8_n_0;
  wire fifo_rd_clk_i_9_n_0;
  wire fifo_rd_en;
  wire fifo_rd_en_OBUF;
  wire fifo_rd_en_i_1_n_0;
  wire fifo_rd_en_i_2_n_0;
  wire fifo_rd_en_i_3_n_0;
  wire fifo_rd_en_i_4_n_0;
  wire fifo_rd_en_i_5_n_0;
  wire fifo_rd_en_i_6_n_0;
  wire fifo_rd_en_i_7_n_0;
  wire fifo_rd_en_i_8_n_0;
  wire [7:0]func_byte;
  wire [7:0]func_byte_IBUF;
  wire [0:0]p_0_in;
  wire [7:0]param_byte;
  wire [7:0]param_byte_IBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire spi_cs_end;
  wire spi_cs_end_IBUF;
  wire \spi_cs_end_reg_reg_n_0_[0] ;
  wire spi_cs_start;
  wire spi_cs_start_IBUF;
  wire [1:1]spi_cs_start_reg;
  wire [0:0]spi_cs_start_reg__0;
  wire spi_frame_end;
  wire spi_frame_end_OBUF;
  wire spi_frame_end_i_1_n_0;
  wire spi_frame_end_i_2_n_0;
  wire spi_frame_end_i_3_n_0;
  wire spi_frame_end_i_4_n_0;
  wire spi_frame_end_i_5_n_0;
  wire spi_frame_end_i_6_n_0;
  wire spi_frame_end_i_7_n_0;
  wire spi_frame_end_i_8_n_0;
  wire spi_frame_end_i_9_n_0;
  wire spi_func_ready;
  wire spi_func_ready_IBUF;
  wire [2:0]spi_func_ready_reg;
  wire [7:0]spi_sent_data;
  wire \spi_sent_data[0]_i_1_n_0 ;
  wire \spi_sent_data[1]_i_1_n_0 ;
  wire \spi_sent_data[2]_i_1_n_0 ;
  wire \spi_sent_data[3]_i_1_n_0 ;
  wire \spi_sent_data[4]_i_1_n_0 ;
  wire \spi_sent_data[5]_i_1_n_0 ;
  wire \spi_sent_data[6]_i_1_n_0 ;
  wire \spi_sent_data[6]_i_2_n_0 ;
  wire \spi_sent_data[6]_i_3_n_0 ;
  wire \spi_sent_data[6]_i_4_n_0 ;
  wire \spi_sent_data[6]_i_5_n_0 ;
  wire \spi_sent_data[6]_i_6_n_0 ;
  wire \spi_sent_data[7]_i_10_n_0 ;
  wire \spi_sent_data[7]_i_11_n_0 ;
  wire \spi_sent_data[7]_i_12_n_0 ;
  wire \spi_sent_data[7]_i_13_n_0 ;
  wire \spi_sent_data[7]_i_14_n_0 ;
  wire \spi_sent_data[7]_i_15_n_0 ;
  wire \spi_sent_data[7]_i_1_n_0 ;
  wire \spi_sent_data[7]_i_2_n_0 ;
  wire \spi_sent_data[7]_i_3_n_0 ;
  wire \spi_sent_data[7]_i_4_n_0 ;
  wire \spi_sent_data[7]_i_5_n_0 ;
  wire \spi_sent_data[7]_i_6_n_0 ;
  wire \spi_sent_data[7]_i_7_n_0 ;
  wire \spi_sent_data[7]_i_8_n_0 ;
  wire \spi_sent_data[7]_i_9_n_0 ;
  wire [7:0]spi_sent_data_OBUF;
  wire spi_sent_start;
  wire spi_sent_start_IBUF;
  wire [2:0]spi_sent_start_reg;
  wire state_counter;
  wire \state_counter[0]_i_1_n_0 ;
  wire \state_counter[1]_i_1_n_0 ;
  wire \state_counter[1]_i_2_n_0 ;
  wire \state_counter[2]_i_1_n_0 ;
  wire \state_counter[2]_i_2_n_0 ;
  wire \state_counter[2]_i_4_n_0 ;
  wire \state_counter_reg_n_0_[0] ;
  wire \state_counter_reg_n_0_[1] ;
  wire \state_counter_reg_n_0_[2] ;

initial begin
 $sdf_annotate("spi_frame_encoder_tbh_time_impl.sdf",,,,"tool_control");
end
  LUT4 #(
    .INIT(16'hFF8A)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(spi_func_ready_reg[2]),
        .I2(spi_func_ready_reg[1]),
        .I3(\FSM_onehot_current_state_reg_n_0_[14] ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00B0)) 
    \FSM_onehot_current_state[11]_i_1 
       (.I0(spi_sent_start_reg[2]),
        .I1(spi_sent_start_reg[1]),
        .I2(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I3(p_0_in),
        .I4(\FSM_onehot_current_state_reg_n_0_[10] ),
        .O(\FSM_onehot_current_state[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8808)) 
    \FSM_onehot_current_state[12]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I1(p_0_in),
        .I2(spi_sent_start_reg[1]),
        .I3(spi_sent_start_reg[2]),
        .O(\FSM_onehot_current_state[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_current_state[14]_i_1 
       (.I0(rst_n_IBUF),
        .O(\FSM_onehot_current_state[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h44F44444)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(spi_cs_start_reg),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(spi_func_ready_reg[2]),
        .I4(spi_func_ready_reg[1]),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF8A8A8A)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(spi_sent_start_reg[2]),
        .I2(spi_sent_start_reg[1]),
        .I3(spi_cs_start_reg),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(spi_sent_start_reg[2]),
        .I2(spi_sent_start_reg[1]),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCACC)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(spi_sent_start_reg[2]),
        .I3(spi_sent_start_reg[1]),
        .O(\FSM_onehot_current_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4F4F4F4F4F444)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\state_counter_reg_n_0_[1] ),
        .I4(\state_counter_reg_n_0_[0] ),
        .I5(\state_counter_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_current_state[5]_i_2 
       (.I0(spi_sent_start_reg[2]),
        .I1(spi_sent_start_reg[1]),
        .O(\FSM_onehot_current_state[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_current_state[7]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I1(\state_counter_reg_n_0_[2] ),
        .I2(\state_counter_reg_n_0_[0] ),
        .I3(\state_counter_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \FSM_onehot_current_state[8]_i_1 
       (.I0(spi_sent_start_reg[2]),
        .I1(spi_sent_start_reg[1]),
        .I2(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\FSM_onehot_current_state[8]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[12]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[12] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[12] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[13] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[13] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[14] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "S13:010000000000000,S08:000000100000000,S03:000000000001000,S12:001000000000000,S02:000000000000100,S07:000000010000000,S10:000010000000000,S05:000000000100000,S06:000000001000000,S11:000100000000000,S01:000000000000010,S00:000000000000001,S09:000001000000000,S14:100000000000000,S04:000000000010000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_onehot_current_state[14]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[9] ));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \fifo_data_IBUF[0]_inst 
       (.I(fifo_data[0]),
        .O(fifo_data_IBUF[0]));
  IBUF \fifo_data_IBUF[1]_inst 
       (.I(fifo_data[1]),
        .O(fifo_data_IBUF[1]));
  IBUF \fifo_data_IBUF[2]_inst 
       (.I(fifo_data[2]),
        .O(fifo_data_IBUF[2]));
  IBUF \fifo_data_IBUF[3]_inst 
       (.I(fifo_data[3]),
        .O(fifo_data_IBUF[3]));
  IBUF \fifo_data_IBUF[4]_inst 
       (.I(fifo_data[4]),
        .O(fifo_data_IBUF[4]));
  IBUF \fifo_data_IBUF[5]_inst 
       (.I(fifo_data[5]),
        .O(fifo_data_IBUF[5]));
  IBUF \fifo_data_IBUF[6]_inst 
       (.I(fifo_data[6]),
        .O(fifo_data_IBUF[6]));
  IBUF \fifo_data_IBUF[7]_inst 
       (.I(fifo_data[7]),
        .O(fifo_data_IBUF[7]));
  OBUF fifo_rd_clk_OBUF_inst
       (.I(fifo_rd_clk_OBUF),
        .O(fifo_rd_clk));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFEFFFE)) 
    fifo_rd_clk_i_1
       (.I0(fifo_rd_clk_i_3_n_0),
        .I1(spi_frame_end_i_6_n_0),
        .I2(fifo_rd_clk_i_4_n_0),
        .I3(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I4(p_0_in),
        .I5(\FSM_onehot_current_state_reg_n_0_[10] ),
        .O(fifo_rd_clk_i_1_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    fifo_rd_clk_i_10
       (.I0(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(fifo_rd_clk_i_10_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fifo_rd_clk_i_11
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[12] ),
        .O(fifo_rd_clk_i_11_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fifo_rd_clk_i_12
       (.I0(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .O(fifo_rd_clk_i_12_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_rd_clk_i_13
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(fifo_rd_clk_i_13_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAFFAAAAAAFE)) 
    fifo_rd_clk_i_2
       (.I0(fifo_rd_clk_i_5_n_0),
        .I1(fifo_rd_clk_i_6_n_0),
        .I2(fifo_rd_clk_i_7_n_0),
        .I3(spi_frame_end_i_7_n_0),
        .I4(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I5(fifo_rd_clk_i_8_n_0),
        .O(fifo_rd_clk_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF999)) 
    fifo_rd_clk_i_3
       (.I0(spi_frame_end_i_7_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I4(fifo_rd_clk_i_9_n_0),
        .I5(\FSM_onehot_current_state[5]_i_1_n_0 ),
        .O(fifo_rd_clk_i_3_n_0));
  LUT6 #(
    .INIT(64'hF2FAF0F0FFFAFAFA)) 
    fifo_rd_clk_i_4
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .I2(fifo_rd_clk_i_10_n_0),
        .I3(spi_cs_start_reg),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I5(\spi_sent_data[6]_i_6_n_0 ),
        .O(fifo_rd_clk_i_4_n_0));
  LUT6 #(
    .INIT(64'h0080A28000800080)) 
    fifo_rd_clk_i_5
       (.I0(fifo_rd_en_i_7_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(\state_counter[2]_i_4_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(spi_sent_start_reg[2]),
        .I5(spi_sent_start_reg[1]),
        .O(fifo_rd_clk_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000110)) 
    fifo_rd_clk_i_6
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I5(fifo_rd_clk_i_11_n_0),
        .O(fifo_rd_clk_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    fifo_rd_clk_i_7
       (.I0(fifo_rd_clk_i_12_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[10] ),
        .O(fifo_rd_clk_i_7_n_0));
  LUT6 #(
    .INIT(64'h0010111000100010)) 
    fifo_rd_clk_i_8
       (.I0(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I1(fifo_rd_clk_i_13_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I4(spi_sent_start_reg[2]),
        .I5(spi_sent_start_reg[1]),
        .O(fifo_rd_clk_i_8_n_0));
  LUT4 #(
    .INIT(16'hFF40)) 
    fifo_rd_clk_i_9
       (.I0(spi_sent_start_reg[2]),
        .I1(spi_sent_start_reg[1]),
        .I2(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I3(spi_frame_end_i_9_n_0),
        .O(fifo_rd_clk_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_rd_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(fifo_rd_clk_i_1_n_0),
        .D(fifo_rd_clk_i_2_n_0),
        .Q(fifo_rd_clk_OBUF),
        .R(1'b0));
  OBUF fifo_rd_en_OBUF_inst
       (.I(fifo_rd_en_OBUF),
        .O(fifo_rd_en));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEB)) 
    fifo_rd_en_i_1
       (.I0(fifo_rd_en_i_3_n_0),
        .I1(fifo_rd_en_i_4_n_0),
        .I2(fifo_rd_en_i_5_n_0),
        .I3(fifo_rd_en_i_6_n_0),
        .I4(spi_frame_end_i_4_n_0),
        .I5(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .O(fifo_rd_en_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    fifo_rd_en_i_2
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(\state_counter_reg_n_0_[2] ),
        .I3(\state_counter_reg_n_0_[0] ),
        .I4(\state_counter_reg_n_0_[1] ),
        .I5(fifo_rd_en_i_7_n_0),
        .O(fifo_rd_en_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFB000)) 
    fifo_rd_en_i_3
       (.I0(spi_sent_start_reg[2]),
        .I1(spi_sent_start_reg[1]),
        .I2(p_0_in),
        .I3(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I4(fifo_rd_clk_i_4_n_0),
        .O(fifo_rd_en_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    fifo_rd_en_i_4
       (.I0(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(fifo_rd_en_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    fifo_rd_en_i_5
       (.I0(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I1(spi_frame_end_i_8_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I3(\spi_sent_data[7]_i_7_n_0 ),
        .O(fifo_rd_en_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEE0)) 
    fifo_rd_en_i_6
       (.I0(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I1(spi_frame_end_i_8_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I3(\spi_sent_data[7]_i_7_n_0 ),
        .I4(fifo_rd_en_i_8_n_0),
        .I5(spi_frame_end_i_5_n_0),
        .O(fifo_rd_en_i_6_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    fifo_rd_en_i_7
       (.I0(\spi_sent_data[7]_i_7_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I2(spi_frame_end_i_8_n_0),
        .I3(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(fifo_rd_en_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFFB000)) 
    fifo_rd_en_i_8
       (.I0(spi_sent_start_reg[2]),
        .I1(spi_sent_start_reg[1]),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I4(\spi_sent_data[7]_i_11_n_0 ),
        .O(fifo_rd_en_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_rd_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(fifo_rd_en_i_1_n_0),
        .D(fifo_rd_en_i_2_n_0),
        .Q(fifo_rd_en_OBUF),
        .R(1'b0));
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
  IBUF \param_byte_IBUF[0]_inst 
       (.I(param_byte[0]),
        .O(param_byte_IBUF[0]));
  IBUF \param_byte_IBUF[1]_inst 
       (.I(param_byte[1]),
        .O(param_byte_IBUF[1]));
  IBUF \param_byte_IBUF[2]_inst 
       (.I(param_byte[2]),
        .O(param_byte_IBUF[2]));
  IBUF \param_byte_IBUF[3]_inst 
       (.I(param_byte[3]),
        .O(param_byte_IBUF[3]));
  IBUF \param_byte_IBUF[4]_inst 
       (.I(param_byte[4]),
        .O(param_byte_IBUF[4]));
  IBUF \param_byte_IBUF[5]_inst 
       (.I(param_byte[5]),
        .O(param_byte_IBUF[5]));
  IBUF \param_byte_IBUF[6]_inst 
       (.I(param_byte[6]),
        .O(param_byte_IBUF[6]));
  IBUF \param_byte_IBUF[7]_inst 
       (.I(param_byte[7]),
        .O(param_byte_IBUF[7]));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF spi_cs_end_IBUF_inst
       (.I(spi_cs_end),
        .O(spi_cs_end_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spi_cs_end_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_cs_end_IBUF),
        .Q(\spi_cs_end_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_cs_end_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\spi_cs_end_reg_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
  IBUF spi_cs_start_IBUF_inst
       (.I(spi_cs_start),
        .O(spi_cs_start_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spi_cs_start_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_cs_start_IBUF),
        .Q(spi_cs_start_reg__0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_cs_start_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_cs_start_reg__0),
        .Q(spi_cs_start_reg),
        .R(1'b0));
  OBUF spi_frame_end_OBUF_inst
       (.I(spi_frame_end_OBUF),
        .O(spi_frame_end));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    spi_frame_end_i_1
       (.I0(spi_frame_end_i_3_n_0),
        .I1(spi_frame_end_i_4_n_0),
        .I2(\spi_sent_data[7]_i_5_n_0 ),
        .I3(spi_frame_end_i_5_n_0),
        .I4(spi_frame_end_i_6_n_0),
        .O(spi_frame_end_i_1_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    spi_frame_end_i_2
       (.I0(spi_frame_end_i_7_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I3(spi_frame_end_i_8_n_0),
        .O(spi_frame_end_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFEAFFEAFFAAAAFF)) 
    spi_frame_end_i_3
       (.I0(fifo_rd_clk_i_4_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I2(p_0_in),
        .I3(spi_frame_end_i_7_n_0),
        .I4(spi_frame_end_i_8_n_0),
        .I5(\FSM_onehot_current_state_reg_n_0_[10] ),
        .O(spi_frame_end_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEEEE0)) 
    spi_frame_end_i_4
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[9] ),
        .O(spi_frame_end_i_4_n_0));
  LUT6 #(
    .INIT(64'hF8F0F8F088F08800)) 
    spi_frame_end_i_5
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I5(spi_frame_end_i_9_n_0),
        .O(spi_frame_end_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFAAA8)) 
    spi_frame_end_i_6
       (.I0(\spi_sent_data[7]_i_7_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(spi_frame_end_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    spi_frame_end_i_7
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\spi_sent_data[7]_i_7_n_0 ),
        .O(spi_frame_end_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    spi_frame_end_i_8
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[11] ),
        .O(spi_frame_end_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    spi_frame_end_i_9
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(spi_frame_end_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_frame_end_reg
       (.C(clk_IBUF_BUFG),
        .CE(spi_frame_end_i_1_n_0),
        .D(spi_frame_end_i_2_n_0),
        .Q(spi_frame_end_OBUF),
        .R(1'b0));
  IBUF spi_func_ready_IBUF_inst
       (.I(spi_func_ready),
        .O(spi_func_ready_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spi_func_ready_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_func_ready_IBUF),
        .Q(spi_func_ready_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_func_ready_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_func_ready_reg[0]),
        .Q(spi_func_ready_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_func_ready_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_func_ready_reg[1]),
        .Q(spi_func_ready_reg[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sent_data[0]_i_1 
       (.I0(\spi_sent_data[6]_i_4_n_0 ),
        .I1(func_byte_IBUF[0]),
        .I2(\spi_sent_data[7]_i_9_n_0 ),
        .I3(fifo_data_IBUF[0]),
        .I4(param_byte_IBUF[0]),
        .I5(\spi_sent_data[7]_i_10_n_0 ),
        .O(\spi_sent_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sent_data[1]_i_1 
       (.I0(\spi_sent_data[7]_i_8_n_0 ),
        .I1(func_byte_IBUF[1]),
        .I2(\spi_sent_data[7]_i_9_n_0 ),
        .I3(fifo_data_IBUF[1]),
        .I4(param_byte_IBUF[1]),
        .I5(\spi_sent_data[7]_i_10_n_0 ),
        .O(\spi_sent_data[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sent_data[2]_i_1 
       (.I0(\spi_sent_data[6]_i_4_n_0 ),
        .I1(func_byte_IBUF[2]),
        .I2(\spi_sent_data[7]_i_9_n_0 ),
        .I3(fifo_data_IBUF[2]),
        .I4(param_byte_IBUF[2]),
        .I5(\spi_sent_data[7]_i_10_n_0 ),
        .O(\spi_sent_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sent_data[3]_i_1 
       (.I0(\spi_sent_data[7]_i_8_n_0 ),
        .I1(func_byte_IBUF[3]),
        .I2(\spi_sent_data[7]_i_9_n_0 ),
        .I3(fifo_data_IBUF[3]),
        .I4(param_byte_IBUF[3]),
        .I5(\spi_sent_data[7]_i_10_n_0 ),
        .O(\spi_sent_data[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sent_data[4]_i_1 
       (.I0(\spi_sent_data[6]_i_4_n_0 ),
        .I1(func_byte_IBUF[4]),
        .I2(\spi_sent_data[7]_i_9_n_0 ),
        .I3(fifo_data_IBUF[4]),
        .I4(param_byte_IBUF[4]),
        .I5(\spi_sent_data[7]_i_10_n_0 ),
        .O(\spi_sent_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sent_data[5]_i_1 
       (.I0(\spi_sent_data[7]_i_8_n_0 ),
        .I1(func_byte_IBUF[5]),
        .I2(\spi_sent_data[7]_i_9_n_0 ),
        .I3(fifo_data_IBUF[5]),
        .I4(param_byte_IBUF[5]),
        .I5(\spi_sent_data[7]_i_10_n_0 ),
        .O(\spi_sent_data[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \spi_sent_data[6]_i_1 
       (.I0(\spi_sent_data[6]_i_3_n_0 ),
        .I1(\spi_sent_data[7]_i_1_n_0 ),
        .O(\spi_sent_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sent_data[6]_i_2 
       (.I0(\spi_sent_data[6]_i_4_n_0 ),
        .I1(func_byte_IBUF[6]),
        .I2(\spi_sent_data[7]_i_9_n_0 ),
        .I3(fifo_data_IBUF[6]),
        .I4(param_byte_IBUF[6]),
        .I5(\spi_sent_data[7]_i_10_n_0 ),
        .O(\spi_sent_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80880000CC000CCC)) 
    \spi_sent_data[6]_i_3 
       (.I0(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .I1(\spi_sent_data[6]_i_5_n_0 ),
        .I2(spi_cs_start_reg),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(\spi_sent_data[6]_i_6_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\spi_sent_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000030020)) 
    \spi_sent_data[6]_i_4 
       (.I0(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .I1(\spi_sent_data[7]_i_13_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\spi_sent_data[7]_i_14_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(\spi_sent_data[7]_i_12_n_0 ),
        .O(\spi_sent_data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \spi_sent_data[6]_i_5 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I4(spi_frame_end_i_8_n_0),
        .I5(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(\spi_sent_data[6]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \spi_sent_data[6]_i_6 
       (.I0(spi_func_ready_reg[1]),
        .I1(spi_func_ready_reg[2]),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\spi_sent_data[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \spi_sent_data[7]_i_1 
       (.I0(\spi_sent_data[7]_i_3_n_0 ),
        .I1(\spi_sent_data[7]_i_4_n_0 ),
        .I2(\spi_sent_data[7]_i_5_n_0 ),
        .I3(\spi_sent_data[7]_i_6_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I5(\spi_sent_data[7]_i_7_n_0 ),
        .O(\spi_sent_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000400B0)) 
    \spi_sent_data[7]_i_10 
       (.I0(spi_sent_start_reg[2]),
        .I1(spi_sent_start_reg[1]),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I5(fifo_rd_en_i_5_n_0),
        .O(\spi_sent_data[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \spi_sent_data[7]_i_11 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(\spi_sent_data[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \spi_sent_data[7]_i_12 
       (.I0(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I1(spi_frame_end_i_8_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[10] ),
        .O(\spi_sent_data[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \spi_sent_data[7]_i_13 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .O(\spi_sent_data[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \spi_sent_data[7]_i_14 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(spi_func_ready_reg[2]),
        .I3(spi_func_ready_reg[1]),
        .O(\spi_sent_data[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \spi_sent_data[7]_i_15 
       (.I0(p_0_in),
        .I1(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I2(spi_frame_end_i_9_n_0),
        .O(\spi_sent_data[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \spi_sent_data[7]_i_2 
       (.I0(\spi_sent_data[7]_i_8_n_0 ),
        .I1(func_byte_IBUF[7]),
        .I2(\spi_sent_data[7]_i_9_n_0 ),
        .I3(fifo_data_IBUF[7]),
        .I4(param_byte_IBUF[7]),
        .I5(\spi_sent_data[7]_i_10_n_0 ),
        .O(\spi_sent_data[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEE1)) 
    \spi_sent_data[7]_i_3 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(spi_frame_end_i_8_n_0),
        .I3(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(\spi_sent_data[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2F)) 
    \spi_sent_data[7]_i_4 
       (.I0(spi_sent_start_reg[1]),
        .I1(spi_sent_start_reg[2]),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\spi_sent_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFF8F8F8F8F8F8F8)) 
    \spi_sent_data[7]_i_5 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I2(\spi_sent_data[7]_i_11_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I5(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .O(\spi_sent_data[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFBABAAABA)) 
    \spi_sent_data[7]_i_6 
       (.I0(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I1(p_0_in),
        .I2(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I3(spi_sent_start_reg[1]),
        .I4(spi_sent_start_reg[2]),
        .I5(spi_frame_end_i_4_n_0),
        .O(\spi_sent_data[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF20)) 
    \spi_sent_data[7]_i_7 
       (.I0(spi_func_ready_reg[1]),
        .I1(spi_func_ready_reg[2]),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\spi_sent_data[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000100)) 
    \spi_sent_data[7]_i_8 
       (.I0(\spi_sent_data[7]_i_12_n_0 ),
        .I1(\spi_sent_data[7]_i_13_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(\spi_sent_data[7]_i_14_n_0 ),
        .I5(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .O(\spi_sent_data[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000088000000F8)) 
    \spi_sent_data[7]_i_9 
       (.I0(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .I1(\spi_sent_data[7]_i_15_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I3(spi_frame_end_i_7_n_0),
        .I4(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I5(spi_frame_end_i_8_n_0),
        .O(\spi_sent_data[7]_i_9_n_0 ));
  OBUF \spi_sent_data_OBUF[0]_inst 
       (.I(spi_sent_data_OBUF[0]),
        .O(spi_sent_data[0]));
  OBUF \spi_sent_data_OBUF[1]_inst 
       (.I(spi_sent_data_OBUF[1]),
        .O(spi_sent_data[1]));
  OBUF \spi_sent_data_OBUF[2]_inst 
       (.I(spi_sent_data_OBUF[2]),
        .O(spi_sent_data[2]));
  OBUF \spi_sent_data_OBUF[3]_inst 
       (.I(spi_sent_data_OBUF[3]),
        .O(spi_sent_data[3]));
  OBUF \spi_sent_data_OBUF[4]_inst 
       (.I(spi_sent_data_OBUF[4]),
        .O(spi_sent_data[4]));
  OBUF \spi_sent_data_OBUF[5]_inst 
       (.I(spi_sent_data_OBUF[5]),
        .O(spi_sent_data[5]));
  OBUF \spi_sent_data_OBUF[6]_inst 
       (.I(spi_sent_data_OBUF[6]),
        .O(spi_sent_data[6]));
  OBUF \spi_sent_data_OBUF[7]_inst 
       (.I(spi_sent_data_OBUF[7]),
        .O(spi_sent_data[7]));
  FDSE #(
    .INIT(1'b1)) 
    \spi_sent_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\spi_sent_data[7]_i_1_n_0 ),
        .D(\spi_sent_data[0]_i_1_n_0 ),
        .Q(spi_sent_data_OBUF[0]),
        .S(\spi_sent_data[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\spi_sent_data[7]_i_1_n_0 ),
        .D(\spi_sent_data[1]_i_1_n_0 ),
        .Q(spi_sent_data_OBUF[1]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \spi_sent_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\spi_sent_data[7]_i_1_n_0 ),
        .D(\spi_sent_data[2]_i_1_n_0 ),
        .Q(spi_sent_data_OBUF[2]),
        .S(\spi_sent_data[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\spi_sent_data[7]_i_1_n_0 ),
        .D(\spi_sent_data[3]_i_1_n_0 ),
        .Q(spi_sent_data_OBUF[3]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \spi_sent_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\spi_sent_data[7]_i_1_n_0 ),
        .D(\spi_sent_data[4]_i_1_n_0 ),
        .Q(spi_sent_data_OBUF[4]),
        .S(\spi_sent_data[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\spi_sent_data[7]_i_1_n_0 ),
        .D(\spi_sent_data[5]_i_1_n_0 ),
        .Q(spi_sent_data_OBUF[5]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \spi_sent_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\spi_sent_data[7]_i_1_n_0 ),
        .D(\spi_sent_data[6]_i_2_n_0 ),
        .Q(spi_sent_data_OBUF[6]),
        .S(\spi_sent_data[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\spi_sent_data[7]_i_1_n_0 ),
        .D(\spi_sent_data[7]_i_2_n_0 ),
        .Q(spi_sent_data_OBUF[7]),
        .R(1'b0));
  IBUF spi_sent_start_IBUF_inst
       (.I(spi_sent_start),
        .O(spi_sent_start_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_start_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_sent_start_IBUF),
        .Q(spi_sent_start_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_start_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_sent_start_reg[0]),
        .Q(spi_sent_start_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_start_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_sent_start_reg[1]),
        .Q(spi_sent_start_reg[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000FFFFFCEC0000)) 
    \state_counter[0]_i_1 
       (.I0(\state_counter_reg_n_0_[1] ),
        .I1(\state_counter[1]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\state_counter_reg_n_0_[2] ),
        .I4(state_counter),
        .I5(\state_counter_reg_n_0_[0] ),
        .O(\state_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8FFFF54440000)) 
    \state_counter[1]_i_1 
       (.I0(\state_counter_reg_n_0_[0] ),
        .I1(\state_counter[1]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\state_counter_reg_n_0_[2] ),
        .I4(state_counter),
        .I5(\state_counter_reg_n_0_[1] ),
        .O(\state_counter[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \state_counter[1]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(spi_sent_start_reg[1]),
        .I2(spi_sent_start_reg[2]),
        .O(\state_counter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF0BFFFF0BFF0000)) 
    \state_counter[2]_i_1 
       (.I0(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\state_counter[2]_i_2_n_0 ),
        .I4(state_counter),
        .I5(\state_counter_reg_n_0_[2] ),
        .O(\state_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \state_counter[2]_i_2 
       (.I0(\state_counter_reg_n_0_[0] ),
        .I1(\state_counter_reg_n_0_[1] ),
        .O(\state_counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0101100011011404)) 
    \state_counter[2]_i_3 
       (.I0(fifo_rd_en_i_5_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\state_counter[2]_i_4_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .O(state_counter));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \state_counter[2]_i_4 
       (.I0(\state_counter_reg_n_0_[1] ),
        .I1(\state_counter_reg_n_0_[0] ),
        .I2(\state_counter_reg_n_0_[2] ),
        .O(\state_counter[2]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_counter[0]_i_1_n_0 ),
        .Q(\state_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_counter[1]_i_1_n_0 ),
        .Q(\state_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_counter[2]_i_1_n_0 ),
        .Q(\state_counter_reg_n_0_[2] ),
        .R(1'b0));
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
