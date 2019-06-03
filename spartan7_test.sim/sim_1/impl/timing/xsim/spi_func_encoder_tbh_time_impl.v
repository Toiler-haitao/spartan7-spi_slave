// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May 16 09:59:18 2019
// Host        : MALIC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.sim/sim_1/impl/timing/xsim/spi_func_encoder_tbh_time_impl.v
// Design      : spi_func_encoder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "227fdf82" *) (* S0 = "2'b00" *) (* S1 = "2'b01" *) 
(* S2 = "2'b10" *) 
(* NotValidForBitStream *)
module spi_func_encoder
   (clk,
    rst_n,
    spi_frame_end,
    spi_func_ready,
    func_byte,
    param_byte,
    fifo_rd_en,
    fifo_rd_clk,
    fifo_data,
    adc_data_ready,
    adc_sample_nums,
    adc_fifo_rd_en,
    adc_fifo_rd_clk,
    adc_fifo_data);
  input clk;
  input rst_n;
  input spi_frame_end;
  output spi_func_ready;
  output [7:0]func_byte;
  output [7:0]param_byte;
  input fifo_rd_en;
  input fifo_rd_clk;
  output [7:0]fifo_data;
  input adc_data_ready;
  input [7:0]adc_sample_nums;
  output adc_fifo_rd_en;
  output adc_fifo_rd_clk;
  input [7:0]adc_fifo_data;

  wire adc_data_ready;
  wire adc_data_ready_IBUF;
  wire [7:0]adc_fifo_data;
  wire [7:0]adc_fifo_data_IBUF;
  wire adc_fifo_rd_clk;
  wire adc_fifo_rd_clk_OBUF;
  wire adc_fifo_rd_clk_i_1_n_0;
  wire adc_fifo_rd_en;
  wire adc_fifo_rd_en_OBUF;
  wire adc_fifo_rd_en_i_1_n_0;
  wire [7:0]adc_sample_nums;
  wire [7:0]adc_sample_nums_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]current_state;
  wire \current_state[1]_i_2_n_0 ;
  wire [7:0]fifo_data;
  wire \fifo_data[7]_i_1_n_0 ;
  wire [7:0]fifo_data_OBUF;
  wire fifo_rd_clk;
  wire fifo_rd_clk_IBUF;
  wire fifo_rd_en;
  wire fifo_rd_en_IBUF;
  wire [7:0]func_byte;
  wire \func_byte[2]_i_1_n_0 ;
  wire [0:0]func_byte_OBUF;
  wire [1:0]next_state;
  wire [7:0]param_byte;
  wire \param_byte[0]_i_1_n_0 ;
  wire \param_byte[1]_i_1_n_0 ;
  wire \param_byte[2]_i_1_n_0 ;
  wire \param_byte[3]_i_1_n_0 ;
  wire \param_byte[4]_i_1_n_0 ;
  wire \param_byte[5]_i_1_n_0 ;
  wire \param_byte[6]_i_1_n_0 ;
  wire \param_byte[7]_i_1_n_0 ;
  wire \param_byte[7]_i_2_n_0 ;
  wire [7:0]param_byte_OBUF;
  wire rst_n;
  wire rst_n_IBUF;
  wire spi_frame_end;
  wire spi_frame_end_IBUF;
  wire spi_func_ready;
  wire spi_func_ready_OBUF;
  wire spi_func_ready_i_1_n_0;
  wire spi_func_ready_i_2_n_0;

initial begin
 $sdf_annotate("spi_func_encoder_tbh_time_impl.sdf",,,,"tool_control");
end
  IBUF adc_data_ready_IBUF_inst
       (.I(adc_data_ready),
        .O(adc_data_ready_IBUF));
  IBUF \adc_fifo_data_IBUF[0]_inst 
       (.I(adc_fifo_data[0]),
        .O(adc_fifo_data_IBUF[0]));
  IBUF \adc_fifo_data_IBUF[1]_inst 
       (.I(adc_fifo_data[1]),
        .O(adc_fifo_data_IBUF[1]));
  IBUF \adc_fifo_data_IBUF[2]_inst 
       (.I(adc_fifo_data[2]),
        .O(adc_fifo_data_IBUF[2]));
  IBUF \adc_fifo_data_IBUF[3]_inst 
       (.I(adc_fifo_data[3]),
        .O(adc_fifo_data_IBUF[3]));
  IBUF \adc_fifo_data_IBUF[4]_inst 
       (.I(adc_fifo_data[4]),
        .O(adc_fifo_data_IBUF[4]));
  IBUF \adc_fifo_data_IBUF[5]_inst 
       (.I(adc_fifo_data[5]),
        .O(adc_fifo_data_IBUF[5]));
  IBUF \adc_fifo_data_IBUF[6]_inst 
       (.I(adc_fifo_data[6]),
        .O(adc_fifo_data_IBUF[6]));
  IBUF \adc_fifo_data_IBUF[7]_inst 
       (.I(adc_fifo_data[7]),
        .O(adc_fifo_data_IBUF[7]));
  OBUF adc_fifo_rd_clk_OBUF_inst
       (.I(adc_fifo_rd_clk_OBUF),
        .O(adc_fifo_rd_clk));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    adc_fifo_rd_clk_i_1
       (.I0(func_byte_OBUF),
        .I1(fifo_rd_clk_IBUF),
        .O(adc_fifo_rd_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    adc_fifo_rd_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(adc_fifo_rd_clk_i_1_n_0),
        .Q(adc_fifo_rd_clk_OBUF),
        .R(1'b0));
  OBUF adc_fifo_rd_en_OBUF_inst
       (.I(adc_fifo_rd_en_OBUF),
        .O(adc_fifo_rd_en));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    adc_fifo_rd_en_i_1
       (.I0(func_byte_OBUF),
        .I1(fifo_rd_en_IBUF),
        .O(adc_fifo_rd_en_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    adc_fifo_rd_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(adc_fifo_rd_en_i_1_n_0),
        .Q(adc_fifo_rd_en_OBUF),
        .R(1'b0));
  IBUF \adc_sample_nums_IBUF[0]_inst 
       (.I(adc_sample_nums[0]),
        .O(adc_sample_nums_IBUF[0]));
  IBUF \adc_sample_nums_IBUF[1]_inst 
       (.I(adc_sample_nums[1]),
        .O(adc_sample_nums_IBUF[1]));
  IBUF \adc_sample_nums_IBUF[2]_inst 
       (.I(adc_sample_nums[2]),
        .O(adc_sample_nums_IBUF[2]));
  IBUF \adc_sample_nums_IBUF[3]_inst 
       (.I(adc_sample_nums[3]),
        .O(adc_sample_nums_IBUF[3]));
  IBUF \adc_sample_nums_IBUF[4]_inst 
       (.I(adc_sample_nums[4]),
        .O(adc_sample_nums_IBUF[4]));
  IBUF \adc_sample_nums_IBUF[5]_inst 
       (.I(adc_sample_nums[5]),
        .O(adc_sample_nums_IBUF[5]));
  IBUF \adc_sample_nums_IBUF[6]_inst 
       (.I(adc_sample_nums[6]),
        .O(adc_sample_nums_IBUF[6]));
  IBUF \adc_sample_nums_IBUF[7]_inst 
       (.I(adc_sample_nums[7]),
        .O(adc_sample_nums_IBUF[7]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \current_state[0]_i_1 
       (.I0(spi_frame_end_IBUF),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(next_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \current_state[1]_i_1 
       (.I0(current_state[1]),
        .I1(adc_data_ready_IBUF),
        .I2(current_state[0]),
        .O(next_state[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \current_state[1]_i_2 
       (.I0(rst_n_IBUF),
        .O(\current_state[1]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\current_state[1]_i_2_n_0 ),
        .D(next_state[0]),
        .Q(current_state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\current_state[1]_i_2_n_0 ),
        .D(next_state[1]),
        .Q(current_state[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_data[7]_i_1 
       (.I0(func_byte_OBUF),
        .O(\fifo_data[7]_i_1_n_0 ));
  OBUF \fifo_data_OBUF[0]_inst 
       (.I(fifo_data_OBUF[0]),
        .O(fifo_data[0]));
  OBUF \fifo_data_OBUF[1]_inst 
       (.I(fifo_data_OBUF[1]),
        .O(fifo_data[1]));
  OBUF \fifo_data_OBUF[2]_inst 
       (.I(fifo_data_OBUF[2]),
        .O(fifo_data[2]));
  OBUF \fifo_data_OBUF[3]_inst 
       (.I(fifo_data_OBUF[3]),
        .O(fifo_data[3]));
  OBUF \fifo_data_OBUF[4]_inst 
       (.I(fifo_data_OBUF[4]),
        .O(fifo_data[4]));
  OBUF \fifo_data_OBUF[5]_inst 
       (.I(fifo_data_OBUF[5]),
        .O(fifo_data[5]));
  OBUF \fifo_data_OBUF[6]_inst 
       (.I(fifo_data_OBUF[6]),
        .O(fifo_data[6]));
  OBUF \fifo_data_OBUF[7]_inst 
       (.I(fifo_data_OBUF[7]),
        .O(fifo_data[7]));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(adc_fifo_data_IBUF[0]),
        .Q(fifo_data_OBUF[0]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(adc_fifo_data_IBUF[1]),
        .Q(fifo_data_OBUF[1]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(adc_fifo_data_IBUF[2]),
        .Q(fifo_data_OBUF[2]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(adc_fifo_data_IBUF[3]),
        .Q(fifo_data_OBUF[3]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(adc_fifo_data_IBUF[4]),
        .Q(fifo_data_OBUF[4]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(adc_fifo_data_IBUF[5]),
        .Q(fifo_data_OBUF[5]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(adc_fifo_data_IBUF[6]),
        .Q(fifo_data_OBUF[6]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(adc_fifo_data_IBUF[7]),
        .Q(fifo_data_OBUF[7]),
        .R(\fifo_data[7]_i_1_n_0 ));
  IBUF fifo_rd_clk_IBUF_inst
       (.I(fifo_rd_clk),
        .O(fifo_rd_clk_IBUF));
  IBUF fifo_rd_en_IBUF_inst
       (.I(fifo_rd_en),
        .O(fifo_rd_en_IBUF));
  LUT5 #(
    .INIT(32'h0E5E0404)) 
    \func_byte[2]_i_1 
       (.I0(current_state[1]),
        .I1(adc_data_ready_IBUF),
        .I2(current_state[0]),
        .I3(spi_frame_end_IBUF),
        .I4(func_byte_OBUF),
        .O(\func_byte[2]_i_1_n_0 ));
  OBUF \func_byte_OBUF[0]_inst 
       (.I(func_byte_OBUF),
        .O(func_byte[0]));
  OBUF \func_byte_OBUF[1]_inst 
       (.I(func_byte_OBUF),
        .O(func_byte[1]));
  OBUF \func_byte_OBUF[2]_inst 
       (.I(func_byte_OBUF),
        .O(func_byte[2]));
  OBUF \func_byte_OBUF[3]_inst 
       (.I(1'b0),
        .O(func_byte[3]));
  OBUF \func_byte_OBUF[4]_inst 
       (.I(1'b0),
        .O(func_byte[4]));
  OBUF \func_byte_OBUF[5]_inst 
       (.I(1'b0),
        .O(func_byte[5]));
  OBUF \func_byte_OBUF[6]_inst 
       (.I(1'b0),
        .O(func_byte[6]));
  OBUF \func_byte_OBUF[7]_inst 
       (.I(1'b0),
        .O(func_byte[7]));
  FDRE #(
    .INIT(1'b0)) 
    \func_byte_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\func_byte[2]_i_1_n_0 ),
        .Q(func_byte_OBUF),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \param_byte[0]_i_1 
       (.I0(adc_sample_nums_IBUF[0]),
        .I1(current_state[0]),
        .I2(adc_data_ready_IBUF),
        .I3(current_state[1]),
        .O(\param_byte[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \param_byte[1]_i_1 
       (.I0(adc_sample_nums_IBUF[1]),
        .I1(current_state[0]),
        .I2(adc_data_ready_IBUF),
        .I3(current_state[1]),
        .O(\param_byte[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \param_byte[2]_i_1 
       (.I0(adc_sample_nums_IBUF[2]),
        .I1(current_state[0]),
        .I2(adc_data_ready_IBUF),
        .I3(current_state[1]),
        .O(\param_byte[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \param_byte[3]_i_1 
       (.I0(adc_sample_nums_IBUF[3]),
        .I1(current_state[0]),
        .I2(adc_data_ready_IBUF),
        .I3(current_state[1]),
        .O(\param_byte[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \param_byte[4]_i_1 
       (.I0(adc_sample_nums_IBUF[4]),
        .I1(current_state[0]),
        .I2(adc_data_ready_IBUF),
        .I3(current_state[1]),
        .O(\param_byte[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \param_byte[5]_i_1 
       (.I0(adc_sample_nums_IBUF[5]),
        .I1(current_state[0]),
        .I2(adc_data_ready_IBUF),
        .I3(current_state[1]),
        .O(\param_byte[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \param_byte[6]_i_1 
       (.I0(adc_sample_nums_IBUF[6]),
        .I1(current_state[0]),
        .I2(adc_data_ready_IBUF),
        .I3(current_state[1]),
        .O(\param_byte[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD9)) 
    \param_byte[7]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(spi_frame_end_IBUF),
        .O(\param_byte[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \param_byte[7]_i_2 
       (.I0(adc_sample_nums_IBUF[7]),
        .I1(current_state[0]),
        .I2(adc_data_ready_IBUF),
        .I3(current_state[1]),
        .O(\param_byte[7]_i_2_n_0 ));
  OBUF \param_byte_OBUF[0]_inst 
       (.I(param_byte_OBUF[0]),
        .O(param_byte[0]));
  OBUF \param_byte_OBUF[1]_inst 
       (.I(param_byte_OBUF[1]),
        .O(param_byte[1]));
  OBUF \param_byte_OBUF[2]_inst 
       (.I(param_byte_OBUF[2]),
        .O(param_byte[2]));
  OBUF \param_byte_OBUF[3]_inst 
       (.I(param_byte_OBUF[3]),
        .O(param_byte[3]));
  OBUF \param_byte_OBUF[4]_inst 
       (.I(param_byte_OBUF[4]),
        .O(param_byte[4]));
  OBUF \param_byte_OBUF[5]_inst 
       (.I(param_byte_OBUF[5]),
        .O(param_byte[5]));
  OBUF \param_byte_OBUF[6]_inst 
       (.I(param_byte_OBUF[6]),
        .O(param_byte[6]));
  OBUF \param_byte_OBUF[7]_inst 
       (.I(param_byte_OBUF[7]),
        .O(param_byte[7]));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[0]_i_1_n_0 ),
        .Q(param_byte_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[1]_i_1_n_0 ),
        .Q(param_byte_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[2]_i_1_n_0 ),
        .Q(param_byte_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[3]_i_1_n_0 ),
        .Q(param_byte_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[4]_i_1_n_0 ),
        .Q(param_byte_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[5]_i_1_n_0 ),
        .Q(param_byte_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[6]_i_1_n_0 ),
        .Q(param_byte_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[7]_i_2_n_0 ),
        .Q(param_byte_OBUF[7]),
        .R(1'b0));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF spi_frame_end_IBUF_inst
       (.I(spi_frame_end),
        .O(spi_frame_end_IBUF));
  OBUF spi_func_ready_OBUF_inst
       (.I(spi_func_ready_OBUF),
        .O(spi_func_ready));
  LUT3 #(
    .INIT(8'hFB)) 
    spi_func_ready_i_1
       (.I0(current_state[0]),
        .I1(adc_data_ready_IBUF),
        .I2(current_state[1]),
        .O(spi_func_ready_i_1_n_0));
  LUT3 #(
    .INIT(8'h34)) 
    spi_func_ready_i_2
       (.I0(spi_frame_end_IBUF),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(spi_func_ready_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_func_ready_reg
       (.C(clk_IBUF_BUFG),
        .CE(spi_func_ready_i_1_n_0),
        .D(spi_func_ready_i_2_n_0),
        .Q(spi_func_ready_OBUF),
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
