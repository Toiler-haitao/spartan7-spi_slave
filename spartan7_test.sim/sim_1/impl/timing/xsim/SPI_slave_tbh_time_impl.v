// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu May 16 17:02:46 2019
// Host        : MALIC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.sim/sim_1/impl/timing/xsim/SPI_slave_tbh_time_impl.v
// Design      : SPI_Slave
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "fcc8fb3b" *) 
(* NotValidForBitStream *)
module SPI_Slave
   (clk,
    SCK,
    CS,
    MOSI,
    MISO,
    spi_cs_start,
    spi_cs_end,
    spi_sent_start,
    spi_sent_data,
    recv_fifo_full,
    recv_fifo_wr_en,
    recv_fifo_clk,
    recv_fifo_data);
  input clk;
  input SCK;
  input CS;
  input MOSI;
  output MISO;
  output spi_cs_start;
  output spi_cs_end;
  output spi_sent_start;
  input [7:0]spi_sent_data;
  input recv_fifo_full;
  output recv_fifo_wr_en;
  output recv_fifo_clk;
  output [7:0]recv_fifo_data;

  wire CS;
  wire CS_IBUF;
  wire \CSr_reg_n_0_[0] ;
  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire [1:0]MOSIr;
  wire SCK;
  wire SCK_IBUF;
  wire SCK_fallingedge;
  wire \SCKr_reg_n_0_[0] ;
  wire [2:0]bitcnt;
  wire \bitcnt[0]_i_1_n_0 ;
  wire \bitcnt[1]_i_1_n_0 ;
  wire \bitcnt[2]_i_1_n_0 ;
  wire \byte_data_received[7]_i_1_n_0 ;
  wire \byte_data_received_reg_n_0_[0] ;
  wire \byte_data_received_reg_n_0_[1] ;
  wire \byte_data_received_reg_n_0_[2] ;
  wire \byte_data_received_reg_n_0_[3] ;
  wire \byte_data_received_reg_n_0_[4] ;
  wire \byte_data_received_reg_n_0_[5] ;
  wire \byte_data_received_reg_n_0_[6] ;
  wire \byte_data_received_reg_n_0_[7] ;
  wire [6:0]byte_data_sent;
  wire \byte_data_sent[7]_i_1_n_0 ;
  wire byte_received;
  wire byte_received_i_1_n_0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:1]p_0_in;
  wire [0:0]p_0_in__0;
  wire [1:0]p_0_in__1;
  wire [7:0]p_2_in;
  wire recv_end;
  wire recv_fifo_clk;
  wire recv_fifo_clk_OBUF;
  wire recv_fifo_clk_i_1_n_0;
  wire [7:0]recv_fifo_data;
  wire [7:0]recv_fifo_data_OBUF;
  wire recv_fifo_full;
  wire recv_fifo_full_IBUF;
  wire recv_fifo_wr_en;
  wire recv_fifo_wr_en_OBUF;
  wire spi_cs_end;
  wire spi_cs_end_OBUF;
  wire spi_cs_start;
  wire spi_cs_start_OBUF;
  wire [7:0]spi_sent_data;
  wire [7:0]spi_sent_data_IBUF;
  wire spi_sent_start;
  wire spi_sent_start_OBUF;

initial begin
 $sdf_annotate("SPI_slave_tbh_time_impl.sdf",,,,"tool_control");
end
  IBUF CS_IBUF_inst
       (.I(CS),
        .O(CS_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \CSr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CS_IBUF),
        .Q(\CSr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CSr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CSr_reg_n_0_[0] ),
        .Q(p_0_in__1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CSr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[0]),
        .Q(p_0_in__1[1]),
        .R(1'b0));
  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \MOSIr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(MOSI_IBUF),
        .Q(MOSIr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSIr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(MOSIr[0]),
        .Q(MOSIr[1]),
        .R(1'b0));
  IBUF SCK_IBUF_inst
       (.I(SCK),
        .O(SCK_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \SCKr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SCK_IBUF),
        .Q(\SCKr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCKr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SCKr_reg_n_0_[0] ),
        .Q(p_0_in__0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCKr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00A6)) 
    \bitcnt[0]_i_1 
       (.I0(bitcnt[0]),
        .I1(p_0_in__0),
        .I2(p_0_in),
        .I3(p_0_in__1[0]),
        .O(\bitcnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00009AAA)) 
    \bitcnt[1]_i_1 
       (.I0(bitcnt[1]),
        .I1(p_0_in),
        .I2(p_0_in__0),
        .I3(bitcnt[0]),
        .I4(p_0_in__1[0]),
        .O(\bitcnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000009AAAAAAA)) 
    \bitcnt[2]_i_1 
       (.I0(bitcnt[2]),
        .I1(p_0_in),
        .I2(p_0_in__0),
        .I3(bitcnt[1]),
        .I4(bitcnt[0]),
        .I5(p_0_in__1[0]),
        .O(\bitcnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bitcnt_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bitcnt[0]_i_1_n_0 ),
        .Q(bitcnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitcnt_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bitcnt[1]_i_1_n_0 ),
        .Q(bitcnt[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bitcnt_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\bitcnt[2]_i_1_n_0 ),
        .Q(bitcnt[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \byte_data_received[7]_i_1 
       (.I0(p_0_in),
        .I1(p_0_in__0),
        .I2(p_0_in__1[0]),
        .O(\byte_data_received[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(MOSIr[1]),
        .Q(\byte_data_received_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(\byte_data_received_reg_n_0_[0] ),
        .Q(\byte_data_received_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(\byte_data_received_reg_n_0_[1] ),
        .Q(\byte_data_received_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(\byte_data_received_reg_n_0_[2] ),
        .Q(\byte_data_received_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(\byte_data_received_reg_n_0_[3] ),
        .Q(\byte_data_received_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(\byte_data_received_reg_n_0_[4] ),
        .Q(\byte_data_received_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(\byte_data_received_reg_n_0_[5] ),
        .Q(\byte_data_received_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(\byte_data_received_reg_n_0_[6] ),
        .Q(\byte_data_received_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF01FF00000000)) 
    \byte_data_sent[0]_i_1 
       (.I0(bitcnt[2]),
        .I1(bitcnt[0]),
        .I2(bitcnt[1]),
        .I3(p_0_in),
        .I4(p_0_in__0),
        .I5(spi_sent_data_IBUF[0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hFF01FFFFFE000000)) 
    \byte_data_sent[1]_i_1 
       (.I0(bitcnt[1]),
        .I1(bitcnt[0]),
        .I2(bitcnt[2]),
        .I3(byte_data_sent[0]),
        .I4(SCK_fallingedge),
        .I5(spi_sent_data_IBUF[1]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hFF01FFFFFE000000)) 
    \byte_data_sent[2]_i_1 
       (.I0(bitcnt[1]),
        .I1(bitcnt[0]),
        .I2(bitcnt[2]),
        .I3(byte_data_sent[1]),
        .I4(SCK_fallingedge),
        .I5(spi_sent_data_IBUF[2]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hFF01FFFFFE000000)) 
    \byte_data_sent[3]_i_1 
       (.I0(bitcnt[1]),
        .I1(bitcnt[0]),
        .I2(bitcnt[2]),
        .I3(byte_data_sent[2]),
        .I4(SCK_fallingedge),
        .I5(spi_sent_data_IBUF[3]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hFF01FFFFFE000000)) 
    \byte_data_sent[4]_i_1 
       (.I0(bitcnt[1]),
        .I1(bitcnt[0]),
        .I2(bitcnt[2]),
        .I3(byte_data_sent[3]),
        .I4(SCK_fallingedge),
        .I5(spi_sent_data_IBUF[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hFF01FFFFFE000000)) 
    \byte_data_sent[5]_i_1 
       (.I0(bitcnt[1]),
        .I1(bitcnt[0]),
        .I2(bitcnt[2]),
        .I3(byte_data_sent[4]),
        .I4(SCK_fallingedge),
        .I5(spi_sent_data_IBUF[5]),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hFF01FFFFFE000000)) 
    \byte_data_sent[6]_i_1 
       (.I0(bitcnt[1]),
        .I1(bitcnt[0]),
        .I2(bitcnt[2]),
        .I3(byte_data_sent[5]),
        .I4(SCK_fallingedge),
        .I5(spi_sent_data_IBUF[6]),
        .O(p_2_in[6]));
  LUT3 #(
    .INIT(8'hBA)) 
    \byte_data_sent[7]_i_1 
       (.I0(p_0_in__1[1]),
        .I1(p_0_in__0),
        .I2(p_0_in),
        .O(\byte_data_sent[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF01FFFFFE000000)) 
    \byte_data_sent[7]_i_2 
       (.I0(bitcnt[1]),
        .I1(bitcnt[0]),
        .I2(bitcnt[2]),
        .I3(byte_data_sent[6]),
        .I4(SCK_fallingedge),
        .I5(spi_sent_data_IBUF[7]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \byte_data_sent[7]_i_3 
       (.I0(p_0_in),
        .I1(p_0_in__0),
        .O(SCK_fallingedge));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(byte_data_sent[0]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(byte_data_sent[1]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(byte_data_sent[2]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(byte_data_sent[3]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(byte_data_sent[4]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(byte_data_sent[5]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(byte_data_sent[6]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(MISO_OBUF),
        .R(p_0_in__1[0]));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    byte_received_i_1
       (.I0(p_0_in__0),
        .I1(p_0_in),
        .I2(bitcnt[1]),
        .I3(bitcnt[0]),
        .I4(bitcnt[2]),
        .I5(p_0_in__1[0]),
        .O(byte_received_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    byte_received_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(byte_received_i_1_n_0),
        .Q(byte_received),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    recv_end_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(byte_received),
        .Q(recv_end),
        .R(1'b0));
  OBUF recv_fifo_clk_OBUF_inst
       (.I(recv_fifo_clk_OBUF),
        .O(recv_fifo_clk));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    recv_fifo_clk_i_1
       (.I0(p_0_in),
        .I1(recv_fifo_full_IBUF),
        .I2(p_0_in__1[1]),
        .I3(p_0_in__1[0]),
        .I4(recv_end),
        .O(recv_fifo_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    recv_fifo_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(recv_fifo_clk_i_1_n_0),
        .Q(recv_fifo_clk_OBUF),
        .R(1'b0));
  OBUF \recv_fifo_data_OBUF[0]_inst 
       (.I(recv_fifo_data_OBUF[0]),
        .O(recv_fifo_data[0]));
  OBUF \recv_fifo_data_OBUF[1]_inst 
       (.I(recv_fifo_data_OBUF[1]),
        .O(recv_fifo_data[1]));
  OBUF \recv_fifo_data_OBUF[2]_inst 
       (.I(recv_fifo_data_OBUF[2]),
        .O(recv_fifo_data[2]));
  OBUF \recv_fifo_data_OBUF[3]_inst 
       (.I(recv_fifo_data_OBUF[3]),
        .O(recv_fifo_data[3]));
  OBUF \recv_fifo_data_OBUF[4]_inst 
       (.I(recv_fifo_data_OBUF[4]),
        .O(recv_fifo_data[4]));
  OBUF \recv_fifo_data_OBUF[5]_inst 
       (.I(recv_fifo_data_OBUF[5]),
        .O(recv_fifo_data[5]));
  OBUF \recv_fifo_data_OBUF[6]_inst 
       (.I(recv_fifo_data_OBUF[6]),
        .O(recv_fifo_data[6]));
  OBUF \recv_fifo_data_OBUF[7]_inst 
       (.I(recv_fifo_data_OBUF[7]),
        .O(recv_fifo_data[7]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(\byte_data_received_reg_n_0_[0] ),
        .Q(recv_fifo_data_OBUF[0]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(\byte_data_received_reg_n_0_[1] ),
        .Q(recv_fifo_data_OBUF[1]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(\byte_data_received_reg_n_0_[2] ),
        .Q(recv_fifo_data_OBUF[2]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(\byte_data_received_reg_n_0_[3] ),
        .Q(recv_fifo_data_OBUF[3]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(\byte_data_received_reg_n_0_[4] ),
        .Q(recv_fifo_data_OBUF[4]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(\byte_data_received_reg_n_0_[5] ),
        .Q(recv_fifo_data_OBUF[5]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(\byte_data_received_reg_n_0_[6] ),
        .Q(recv_fifo_data_OBUF[6]),
        .R(p_0_in__1[0]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(\byte_data_received_reg_n_0_[7] ),
        .Q(recv_fifo_data_OBUF[7]),
        .R(p_0_in__1[0]));
  IBUF recv_fifo_full_IBUF_inst
       (.I(recv_fifo_full),
        .O(recv_fifo_full_IBUF));
  OBUF recv_fifo_wr_en_OBUF_inst
       (.I(recv_fifo_wr_en_OBUF),
        .O(recv_fifo_wr_en));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    recv_fifo_wr_en_OBUF_inst_i_1
       (.I0(p_0_in__1[0]),
        .I1(recv_fifo_full_IBUF),
        .O(recv_fifo_wr_en_OBUF));
  OBUF spi_cs_end_OBUF_inst
       (.I(spi_cs_end_OBUF),
        .O(spi_cs_end));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    spi_cs_end_OBUF_inst_i_1
       (.I0(p_0_in__1[0]),
        .I1(p_0_in__1[1]),
        .O(spi_cs_end_OBUF));
  OBUF spi_cs_start_OBUF_inst
       (.I(spi_cs_start_OBUF),
        .O(spi_cs_start));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    spi_cs_start_OBUF_inst_i_1
       (.I0(p_0_in__1[1]),
        .I1(p_0_in__1[0]),
        .O(spi_cs_start_OBUF));
  IBUF \spi_sent_data_IBUF[0]_inst 
       (.I(spi_sent_data[0]),
        .O(spi_sent_data_IBUF[0]));
  IBUF \spi_sent_data_IBUF[1]_inst 
       (.I(spi_sent_data[1]),
        .O(spi_sent_data_IBUF[1]));
  IBUF \spi_sent_data_IBUF[2]_inst 
       (.I(spi_sent_data[2]),
        .O(spi_sent_data_IBUF[2]));
  IBUF \spi_sent_data_IBUF[3]_inst 
       (.I(spi_sent_data[3]),
        .O(spi_sent_data_IBUF[3]));
  IBUF \spi_sent_data_IBUF[4]_inst 
       (.I(spi_sent_data[4]),
        .O(spi_sent_data_IBUF[4]));
  IBUF \spi_sent_data_IBUF[5]_inst 
       (.I(spi_sent_data[5]),
        .O(spi_sent_data_IBUF[5]));
  IBUF \spi_sent_data_IBUF[6]_inst 
       (.I(spi_sent_data[6]),
        .O(spi_sent_data_IBUF[6]));
  IBUF \spi_sent_data_IBUF[7]_inst 
       (.I(spi_sent_data[7]),
        .O(spi_sent_data_IBUF[7]));
  OBUF spi_sent_start_OBUF_inst
       (.I(spi_sent_start_OBUF),
        .O(spi_sent_start));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    spi_sent_start_OBUF_inst_i_1
       (.I0(p_0_in),
        .I1(p_0_in__0),
        .I2(bitcnt[2]),
        .I3(bitcnt[0]),
        .I4(bitcnt[1]),
        .O(spi_sent_start_OBUF));
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
