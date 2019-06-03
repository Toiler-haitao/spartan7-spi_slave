// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Jun  2 22:39:44 2019
// Host        : MALIC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.sim/sim_1/impl/timing/xsim/spi_receive_tbh_time_impl.v
// Design      : spi_receive
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module SPI_Slave
   (wr_clk,
    \spi_cs_end_register_reg[0] ,
    wr_en,
    spi_cs_start,
    Q,
    \length_byte_reg[7] ,
    \spi_sent_start_reg_reg[1] ,
    clk_IBUF_BUFG,
    full,
    D,
    SCK,
    MOSI,
    spi_sent_data);
  output wr_clk;
  output \spi_cs_end_register_reg[0] ;
  output wr_en;
  output spi_cs_start;
  output [0:0]Q;
  output [7:0]\length_byte_reg[7] ;
  output \spi_sent_start_reg_reg[1] ;
  input clk_IBUF_BUFG;
  input full;
  input [0:0]D;
  input [0:0]SCK;
  input [0:0]MOSI;
  input [7:0]spi_sent_data;

  wire [2:0]CSr;
  wire [0:0]D;
  wire [0:0]MOSI;
  wire [1:0]MOSIr;
  wire [0:0]Q;
  wire [0:0]SCK;
  wire SCK_fallingedge__0;
  wire \SCKr_reg_n_0_[0] ;
  wire \SCKr_reg_n_0_[1] ;
  wire [2:0]bitcnt;
  wire \bitcnt[0]_i_1_n_0 ;
  wire \bitcnt[1]_i_1_n_0 ;
  wire \bitcnt[2]_i_1_n_0 ;
  wire [7:0]byte_data_received;
  wire \byte_data_received[7]_i_1_n_0 ;
  wire [6:0]byte_data_sent;
  wire \byte_data_sent[7]_i_1_n_0 ;
  wire byte_received;
  wire byte_received_i_1_n_0;
  wire clk_IBUF_BUFG;
  wire full;
  wire [7:0]\length_byte_reg[7] ;
  wire [1:1]p_0_in;
  wire [7:0]p_2_in;
  wire recv_end;
  wire recv_fifo_clk_i_1_n_0;
  wire \spi_cs_end_register_reg[0] ;
  wire spi_cs_start;
  wire [7:0]spi_sent_data;
  wire \spi_sent_start_reg_reg[1] ;
  wire \^wr_clk ;
  wire wr_clk_BUFG;
  wire wr_en;

  assign wr_clk = wr_clk_BUFG;
  FDRE #(
    .INIT(1'b0)) 
    \CSr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(CSr[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CSr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CSr[0]),
        .Q(CSr[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CSr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(CSr[1]),
        .Q(CSr[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSIr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(MOSI),
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
  FDRE #(
    .INIT(1'b0)) 
    \SCKr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(SCK),
        .Q(\SCKr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCKr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SCKr_reg_n_0_[0] ),
        .Q(\SCKr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SCKr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\SCKr_reg_n_0_[1] ),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00A6)) 
    \bitcnt[0]_i_1 
       (.I0(bitcnt[0]),
        .I1(\SCKr_reg_n_0_[1] ),
        .I2(p_0_in),
        .I3(CSr[1]),
        .O(\bitcnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00009AAA)) 
    \bitcnt[1]_i_1 
       (.I0(bitcnt[1]),
        .I1(p_0_in),
        .I2(\SCKr_reg_n_0_[1] ),
        .I3(bitcnt[0]),
        .I4(CSr[1]),
        .O(\bitcnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000009AAAAAAA)) 
    \bitcnt[2]_i_1 
       (.I0(bitcnt[2]),
        .I1(p_0_in),
        .I2(\SCKr_reg_n_0_[1] ),
        .I3(bitcnt[1]),
        .I4(bitcnt[0]),
        .I5(CSr[1]),
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
        .I1(\SCKr_reg_n_0_[1] ),
        .I2(CSr[1]),
        .O(\byte_data_received[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(MOSIr[1]),
        .Q(byte_data_received[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(byte_data_received[0]),
        .Q(byte_data_received[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(byte_data_received[1]),
        .Q(byte_data_received[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(byte_data_received[2]),
        .Q(byte_data_received[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(byte_data_received[3]),
        .Q(byte_data_received[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(byte_data_received[4]),
        .Q(byte_data_received[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(byte_data_received[5]),
        .Q(byte_data_received[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_received_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_received[7]_i_1_n_0 ),
        .D(byte_data_received[6]),
        .Q(byte_data_received[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF01FF00000000)) 
    \byte_data_sent[0]_i_1 
       (.I0(bitcnt[2]),
        .I1(bitcnt[0]),
        .I2(bitcnt[1]),
        .I3(p_0_in),
        .I4(\SCKr_reg_n_0_[1] ),
        .I5(spi_sent_data[0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \byte_data_sent[1]_i_1 
       (.I0(byte_data_sent[0]),
        .I1(bitcnt[1]),
        .I2(bitcnt[0]),
        .I3(bitcnt[2]),
        .I4(SCK_fallingedge__0),
        .I5(spi_sent_data[1]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \byte_data_sent[2]_i_1 
       (.I0(byte_data_sent[1]),
        .I1(bitcnt[1]),
        .I2(bitcnt[0]),
        .I3(bitcnt[2]),
        .I4(SCK_fallingedge__0),
        .I5(spi_sent_data[2]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \byte_data_sent[3]_i_1 
       (.I0(byte_data_sent[2]),
        .I1(bitcnt[1]),
        .I2(bitcnt[0]),
        .I3(bitcnt[2]),
        .I4(SCK_fallingedge__0),
        .I5(spi_sent_data[3]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \byte_data_sent[4]_i_1 
       (.I0(byte_data_sent[3]),
        .I1(bitcnt[1]),
        .I2(bitcnt[0]),
        .I3(bitcnt[2]),
        .I4(SCK_fallingedge__0),
        .I5(spi_sent_data[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \byte_data_sent[5]_i_1 
       (.I0(byte_data_sent[4]),
        .I1(bitcnt[1]),
        .I2(bitcnt[0]),
        .I3(bitcnt[2]),
        .I4(SCK_fallingedge__0),
        .I5(spi_sent_data[5]),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \byte_data_sent[6]_i_1 
       (.I0(byte_data_sent[5]),
        .I1(bitcnt[1]),
        .I2(bitcnt[0]),
        .I3(bitcnt[2]),
        .I4(SCK_fallingedge__0),
        .I5(spi_sent_data[6]),
        .O(p_2_in[6]));
  LUT3 #(
    .INIT(8'hF4)) 
    \byte_data_sent[7]_i_1 
       (.I0(\SCKr_reg_n_0_[1] ),
        .I1(p_0_in),
        .I2(CSr[2]),
        .O(\byte_data_sent[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABFFFFAAA80000)) 
    \byte_data_sent[7]_i_2 
       (.I0(byte_data_sent[6]),
        .I1(bitcnt[1]),
        .I2(bitcnt[0]),
        .I3(bitcnt[2]),
        .I4(SCK_fallingedge__0),
        .I5(spi_sent_data[7]),
        .O(p_2_in[7]));
  LUT2 #(
    .INIT(4'h2)) 
    \byte_data_sent[7]_i_3 
       (.I0(p_0_in),
        .I1(\SCKr_reg_n_0_[1] ),
        .O(SCK_fallingedge__0));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(byte_data_sent[0]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(byte_data_sent[1]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(byte_data_sent[2]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(byte_data_sent[3]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(byte_data_sent[4]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(byte_data_sent[5]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(byte_data_sent[6]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \byte_data_sent_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\byte_data_sent[7]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(Q),
        .R(CSr[1]));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    byte_received_i_1
       (.I0(\SCKr_reg_n_0_[1] ),
        .I1(p_0_in),
        .I2(bitcnt[1]),
        .I3(bitcnt[0]),
        .I4(bitcnt[2]),
        .I5(CSr[1]),
        .O(byte_received_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    byte_received_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(byte_received_i_1_n_0),
        .Q(byte_received),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    recv_end_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(byte_received),
        .Q(recv_end),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    recv_fifo_clk_i_1
       (.I0(p_0_in),
        .I1(full),
        .I2(CSr[2]),
        .I3(CSr[1]),
        .I4(recv_end),
        .O(recv_fifo_clk_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    recv_fifo_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(recv_fifo_clk_i_1_n_0),
        .Q(\^wr_clk ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(byte_data_received[0]),
        .Q(\length_byte_reg[7] [0]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(byte_data_received[1]),
        .Q(\length_byte_reg[7] [1]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(byte_data_received[2]),
        .Q(\length_byte_reg[7] [2]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(byte_data_received[3]),
        .Q(\length_byte_reg[7] [3]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(byte_data_received[4]),
        .Q(\length_byte_reg[7] [4]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(byte_data_received[5]),
        .Q(\length_byte_reg[7] [5]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(byte_data_received[6]),
        .Q(\length_byte_reg[7] [6]),
        .R(CSr[1]));
  FDRE #(
    .INIT(1'b0)) 
    \recv_fifo_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(byte_received),
        .D(byte_data_received[7]),
        .Q(\length_byte_reg[7] [7]),
        .R(CSr[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \spi_cs_end_register[0]_i_1 
       (.I0(CSr[2]),
        .I1(CSr[1]),
        .O(\spi_cs_end_register_reg[0] ));
  LUT2 #(
    .INIT(4'h2)) 
    \spi_cs_start_reg[0]_i_1 
       (.I0(CSr[2]),
        .I1(CSr[1]),
        .O(spi_cs_start));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \spi_sent_start_reg_reg[0]_srl2_i_1 
       (.I0(p_0_in),
        .I1(\SCKr_reg_n_0_[1] ),
        .I2(bitcnt[1]),
        .I3(bitcnt[0]),
        .I4(CSr[1]),
        .I5(bitcnt[2]),
        .O(\spi_sent_start_reg_reg[1] ));
  LUT2 #(
    .INIT(4'h1)) 
    u2_i_1
       (.I0(CSr[1]),
        .I1(full),
        .O(wr_en));
  (* LOPT_BUFG_CLOCK *) 
  BUFG wr_clk_BUFG_inst
       (.I(\^wr_clk ),
        .O(wr_clk_BUFG));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_2,Vivado 2018.2" *) 
module fifo_generator_0
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, PHASE 0.000" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, PHASE 0.000" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axis_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_backup_UNCONNECTED;
  wire NLW_U0_backup_marker_UNCONNECTED;
  wire NLW_U0_clk_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_injectdbiterr_UNCONNECTED;
  wire NLW_U0_injectsbiterr_UNCONNECTED;
  wire NLW_U0_int_clk_UNCONNECTED;
  wire NLW_U0_m_aclk_UNCONNECTED;
  wire NLW_U0_m_aclk_en_UNCONNECTED;
  wire NLW_U0_m_axi_arready_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awready_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_bvalid_UNCONNECTED;
  wire NLW_U0_m_axi_rlast_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_rvalid_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wready_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tready_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_rst_UNCONNECTED;
  wire NLW_U0_s_aclk_UNCONNECTED;
  wire NLW_U0_s_aclk_en_UNCONNECTED;
  wire NLW_U0_s_aresetn_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_arvalid_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_awvalid_UNCONNECTED;
  wire NLW_U0_s_axi_bready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rready_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wlast_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axi_wvalid_UNCONNECTED;
  wire NLW_U0_s_axis_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_s_axis_tvalid_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_sleep_UNCONNECTED;
  wire NLW_U0_srst_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_axi_ar_prog_empty_thresh_UNCONNECTED;
  wire [3:0]NLW_U0_axi_ar_prog_full_thresh_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_axi_aw_prog_empty_thresh_UNCONNECTED;
  wire [3:0]NLW_U0_axi_aw_prog_full_thresh_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_axi_b_prog_empty_thresh_UNCONNECTED;
  wire [3:0]NLW_U0_axi_b_prog_full_thresh_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_axi_r_prog_empty_thresh_UNCONNECTED;
  wire [9:0]NLW_U0_axi_r_prog_full_thresh_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_axi_w_prog_empty_thresh_UNCONNECTED;
  wire [9:0]NLW_U0_axi_w_prog_full_thresh_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_axis_prog_empty_thresh_UNCONNECTED;
  wire [9:0]NLW_U0_axis_prog_full_thresh_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_ruser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [4:0]NLW_U0_prog_empty_thresh_UNCONNECTED;
  wire [4:0]NLW_U0_prog_empty_thresh_assert_UNCONNECTED;
  wire [4:0]NLW_U0_prog_empty_thresh_negate_UNCONNECTED;
  wire [4:0]NLW_U0_prog_full_thresh_UNCONNECTED;
  wire [4:0]NLW_U0_prog_full_thresh_assert_UNCONNECTED;
  wire [4:0]NLW_U0_prog_full_thresh_negate_UNCONNECTED;
  wire [4:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_s_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_s_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_s_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_s_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_s_axis_tuser_UNCONNECTED;
  wire [4:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "5" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "29" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "28" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "5" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "5" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  fifo_generator_0_fifo_generator_v13_2_2 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(NLW_U0_axi_ar_injectdbiterr_UNCONNECTED),
        .axi_ar_injectsbiterr(NLW_U0_axi_ar_injectsbiterr_UNCONNECTED),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh(NLW_U0_axi_ar_prog_empty_thresh_UNCONNECTED[3:0]),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh(NLW_U0_axi_ar_prog_full_thresh_UNCONNECTED[3:0]),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(NLW_U0_axi_aw_injectdbiterr_UNCONNECTED),
        .axi_aw_injectsbiterr(NLW_U0_axi_aw_injectsbiterr_UNCONNECTED),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh(NLW_U0_axi_aw_prog_empty_thresh_UNCONNECTED[3:0]),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh(NLW_U0_axi_aw_prog_full_thresh_UNCONNECTED[3:0]),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(NLW_U0_axi_b_injectdbiterr_UNCONNECTED),
        .axi_b_injectsbiterr(NLW_U0_axi_b_injectsbiterr_UNCONNECTED),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh(NLW_U0_axi_b_prog_empty_thresh_UNCONNECTED[3:0]),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh(NLW_U0_axi_b_prog_full_thresh_UNCONNECTED[3:0]),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(NLW_U0_axi_r_injectdbiterr_UNCONNECTED),
        .axi_r_injectsbiterr(NLW_U0_axi_r_injectsbiterr_UNCONNECTED),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh(NLW_U0_axi_r_prog_empty_thresh_UNCONNECTED[9:0]),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh(NLW_U0_axi_r_prog_full_thresh_UNCONNECTED[9:0]),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(NLW_U0_axi_w_injectdbiterr_UNCONNECTED),
        .axi_w_injectsbiterr(NLW_U0_axi_w_injectsbiterr_UNCONNECTED),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh(NLW_U0_axi_w_prog_empty_thresh_UNCONNECTED[9:0]),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh(NLW_U0_axi_w_prog_full_thresh_UNCONNECTED[9:0]),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(NLW_U0_axis_injectdbiterr_UNCONNECTED),
        .axis_injectsbiterr(NLW_U0_axis_injectsbiterr_UNCONNECTED),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh(NLW_U0_axis_prog_empty_thresh_UNCONNECTED[9:0]),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh(NLW_U0_axis_prog_full_thresh_UNCONNECTED[9:0]),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(NLW_U0_backup_UNCONNECTED),
        .backup_marker(NLW_U0_backup_marker_UNCONNECTED),
        .clk(NLW_U0_clk_UNCONNECTED),
        .data_count(NLW_U0_data_count_UNCONNECTED[4:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(NLW_U0_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_U0_injectsbiterr_UNCONNECTED),
        .int_clk(NLW_U0_int_clk_UNCONNECTED),
        .m_aclk(NLW_U0_m_aclk_UNCONNECTED),
        .m_aclk_en(NLW_U0_m_aclk_en_UNCONNECTED),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(NLW_U0_m_axi_arready_UNCONNECTED),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(NLW_U0_m_axi_awready_UNCONNECTED),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(NLW_U0_m_axi_bid_UNCONNECTED[0]),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp(NLW_U0_m_axi_bresp_UNCONNECTED[1:0]),
        .m_axi_buser(NLW_U0_m_axi_buser_UNCONNECTED[0]),
        .m_axi_bvalid(NLW_U0_m_axi_bvalid_UNCONNECTED),
        .m_axi_rdata(NLW_U0_m_axi_rdata_UNCONNECTED[63:0]),
        .m_axi_rid(NLW_U0_m_axi_rid_UNCONNECTED[0]),
        .m_axi_rlast(NLW_U0_m_axi_rlast_UNCONNECTED),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp(NLW_U0_m_axi_rresp_UNCONNECTED[1:0]),
        .m_axi_ruser(NLW_U0_m_axi_ruser_UNCONNECTED[0]),
        .m_axi_rvalid(NLW_U0_m_axi_rvalid_UNCONNECTED),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(NLW_U0_m_axi_wready_UNCONNECTED),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(NLW_U0_m_axis_tready_UNCONNECTED),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh(NLW_U0_prog_empty_thresh_UNCONNECTED[4:0]),
        .prog_empty_thresh_assert(NLW_U0_prog_empty_thresh_assert_UNCONNECTED[4:0]),
        .prog_empty_thresh_negate(NLW_U0_prog_empty_thresh_negate_UNCONNECTED[4:0]),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh(NLW_U0_prog_full_thresh_UNCONNECTED[4:0]),
        .prog_full_thresh_assert(NLW_U0_prog_full_thresh_assert_UNCONNECTED[4:0]),
        .prog_full_thresh_negate(NLW_U0_prog_full_thresh_negate_UNCONNECTED[4:0]),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(rd_en),
        .rd_rst(NLW_U0_rd_rst_UNCONNECTED),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(NLW_U0_rst_UNCONNECTED),
        .s_aclk(NLW_U0_s_aclk_UNCONNECTED),
        .s_aclk_en(NLW_U0_s_aclk_en_UNCONNECTED),
        .s_aresetn(NLW_U0_s_aresetn_UNCONNECTED),
        .s_axi_araddr(NLW_U0_s_axi_araddr_UNCONNECTED[31:0]),
        .s_axi_arburst(NLW_U0_s_axi_arburst_UNCONNECTED[1:0]),
        .s_axi_arcache(NLW_U0_s_axi_arcache_UNCONNECTED[3:0]),
        .s_axi_arid(NLW_U0_s_axi_arid_UNCONNECTED[0]),
        .s_axi_arlen(NLW_U0_s_axi_arlen_UNCONNECTED[7:0]),
        .s_axi_arlock(NLW_U0_s_axi_arlock_UNCONNECTED[0]),
        .s_axi_arprot(NLW_U0_s_axi_arprot_UNCONNECTED[2:0]),
        .s_axi_arqos(NLW_U0_s_axi_arqos_UNCONNECTED[3:0]),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion(NLW_U0_s_axi_arregion_UNCONNECTED[3:0]),
        .s_axi_arsize(NLW_U0_s_axi_arsize_UNCONNECTED[2:0]),
        .s_axi_aruser(NLW_U0_s_axi_aruser_UNCONNECTED[0]),
        .s_axi_arvalid(NLW_U0_s_axi_arvalid_UNCONNECTED),
        .s_axi_awaddr(NLW_U0_s_axi_awaddr_UNCONNECTED[31:0]),
        .s_axi_awburst(NLW_U0_s_axi_awburst_UNCONNECTED[1:0]),
        .s_axi_awcache(NLW_U0_s_axi_awcache_UNCONNECTED[3:0]),
        .s_axi_awid(NLW_U0_s_axi_awid_UNCONNECTED[0]),
        .s_axi_awlen(NLW_U0_s_axi_awlen_UNCONNECTED[7:0]),
        .s_axi_awlock(NLW_U0_s_axi_awlock_UNCONNECTED[0]),
        .s_axi_awprot(NLW_U0_s_axi_awprot_UNCONNECTED[2:0]),
        .s_axi_awqos(NLW_U0_s_axi_awqos_UNCONNECTED[3:0]),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion(NLW_U0_s_axi_awregion_UNCONNECTED[3:0]),
        .s_axi_awsize(NLW_U0_s_axi_awsize_UNCONNECTED[2:0]),
        .s_axi_awuser(NLW_U0_s_axi_awuser_UNCONNECTED[0]),
        .s_axi_awvalid(NLW_U0_s_axi_awvalid_UNCONNECTED),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(NLW_U0_s_axi_bready_UNCONNECTED),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(NLW_U0_s_axi_rready_UNCONNECTED),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata(NLW_U0_s_axi_wdata_UNCONNECTED[63:0]),
        .s_axi_wid(NLW_U0_s_axi_wid_UNCONNECTED[0]),
        .s_axi_wlast(NLW_U0_s_axi_wlast_UNCONNECTED),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(NLW_U0_s_axi_wstrb_UNCONNECTED[7:0]),
        .s_axi_wuser(NLW_U0_s_axi_wuser_UNCONNECTED[0]),
        .s_axi_wvalid(NLW_U0_s_axi_wvalid_UNCONNECTED),
        .s_axis_tdata(NLW_U0_s_axis_tdata_UNCONNECTED[7:0]),
        .s_axis_tdest(NLW_U0_s_axis_tdest_UNCONNECTED[0]),
        .s_axis_tid(NLW_U0_s_axis_tid_UNCONNECTED[0]),
        .s_axis_tkeep(NLW_U0_s_axis_tkeep_UNCONNECTED[0]),
        .s_axis_tlast(NLW_U0_s_axis_tlast_UNCONNECTED),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(NLW_U0_s_axis_tstrb_UNCONNECTED[0]),
        .s_axis_tuser(NLW_U0_s_axis_tuser_UNCONNECTED[3:0]),
        .s_axis_tvalid(NLW_U0_s_axis_tvalid_UNCONNECTED),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(NLW_U0_sleep_UNCONNECTED),
        .srst(NLW_U0_srst_UNCONNECTED),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(wr_en),
        .wr_rst(NLW_U0_wr_rst_UNCONNECTED),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_2,{}" *) (* ORIG_REF_NAME = "fifo_generator_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_2_2,Vivado 2018.2" *) 
module fifo_generator_0_HD2
   (wr_clk,
    rd_clk,
    wr_en,
    rd_en,
    full,
    empty,
    din,
    dout);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, PHASE 0.000" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, PHASE 0.000" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;

  wire [7:0]din;
  wire [7:0]dout;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_injectdbiterr_UNCONNECTED;
  wire NLW_U0_axis_injectsbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_backup_UNCONNECTED;
  wire NLW_U0_backup_marker_UNCONNECTED;
  wire NLW_U0_clk_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_empty_UNCONNECTED;
  wire NLW_U0_full_UNCONNECTED;
  wire NLW_U0_injectdbiterr_UNCONNECTED;
  wire NLW_U0_injectsbiterr_UNCONNECTED;
  wire NLW_U0_int_clk_UNCONNECTED;
  wire NLW_U0_m_aclk_UNCONNECTED;
  wire NLW_U0_m_aclk_en_UNCONNECTED;
  wire NLW_U0_m_axi_arready_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awready_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_bvalid_UNCONNECTED;
  wire NLW_U0_m_axi_rlast_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_rvalid_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wready_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tready_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_rst_UNCONNECTED;
  wire NLW_U0_s_aclk_UNCONNECTED;
  wire NLW_U0_s_aclk_en_UNCONNECTED;
  wire NLW_U0_s_aresetn_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_arvalid_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_awvalid_UNCONNECTED;
  wire NLW_U0_s_axi_bready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rready_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wlast_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axi_wvalid_UNCONNECTED;
  wire NLW_U0_s_axis_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_s_axis_tvalid_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_sleep_UNCONNECTED;
  wire NLW_U0_srst_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_axi_ar_prog_empty_thresh_UNCONNECTED;
  wire [3:0]NLW_U0_axi_ar_prog_full_thresh_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_axi_aw_prog_empty_thresh_UNCONNECTED;
  wire [3:0]NLW_U0_axi_aw_prog_full_thresh_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_axi_b_prog_empty_thresh_UNCONNECTED;
  wire [3:0]NLW_U0_axi_b_prog_full_thresh_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_axi_r_prog_empty_thresh_UNCONNECTED;
  wire [9:0]NLW_U0_axi_r_prog_full_thresh_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_axi_w_prog_empty_thresh_UNCONNECTED;
  wire [9:0]NLW_U0_axi_w_prog_full_thresh_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_axis_prog_empty_thresh_UNCONNECTED;
  wire [9:0]NLW_U0_axis_prog_full_thresh_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_ruser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [4:0]NLW_U0_prog_empty_thresh_UNCONNECTED;
  wire [4:0]NLW_U0_prog_empty_thresh_assert_UNCONNECTED;
  wire [4:0]NLW_U0_prog_empty_thresh_negate_UNCONNECTED;
  wire [4:0]NLW_U0_prog_full_thresh_UNCONNECTED;
  wire [4:0]NLW_U0_prog_full_thresh_assert_UNCONNECTED;
  wire [4:0]NLW_U0_prog_full_thresh_negate_UNCONNECTED;
  wire [4:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_s_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_s_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_s_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_s_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_s_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_s_axis_tuser_UNCONNECTED;
  wire [4:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "5" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "29" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "28" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "5" *) 
  (* C_RD_DEPTH = "32" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "5" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "5" *) 
  (* C_WR_DEPTH = "32" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "5" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  fifo_generator_0_fifo_generator_v13_2_2_HD3 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(NLW_U0_axi_ar_injectdbiterr_UNCONNECTED),
        .axi_ar_injectsbiterr(NLW_U0_axi_ar_injectsbiterr_UNCONNECTED),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh(NLW_U0_axi_ar_prog_empty_thresh_UNCONNECTED[3:0]),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh(NLW_U0_axi_ar_prog_full_thresh_UNCONNECTED[3:0]),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(NLW_U0_axi_aw_injectdbiterr_UNCONNECTED),
        .axi_aw_injectsbiterr(NLW_U0_axi_aw_injectsbiterr_UNCONNECTED),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh(NLW_U0_axi_aw_prog_empty_thresh_UNCONNECTED[3:0]),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh(NLW_U0_axi_aw_prog_full_thresh_UNCONNECTED[3:0]),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(NLW_U0_axi_b_injectdbiterr_UNCONNECTED),
        .axi_b_injectsbiterr(NLW_U0_axi_b_injectsbiterr_UNCONNECTED),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh(NLW_U0_axi_b_prog_empty_thresh_UNCONNECTED[3:0]),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh(NLW_U0_axi_b_prog_full_thresh_UNCONNECTED[3:0]),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(NLW_U0_axi_r_injectdbiterr_UNCONNECTED),
        .axi_r_injectsbiterr(NLW_U0_axi_r_injectsbiterr_UNCONNECTED),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh(NLW_U0_axi_r_prog_empty_thresh_UNCONNECTED[9:0]),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh(NLW_U0_axi_r_prog_full_thresh_UNCONNECTED[9:0]),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(NLW_U0_axi_w_injectdbiterr_UNCONNECTED),
        .axi_w_injectsbiterr(NLW_U0_axi_w_injectsbiterr_UNCONNECTED),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh(NLW_U0_axi_w_prog_empty_thresh_UNCONNECTED[9:0]),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh(NLW_U0_axi_w_prog_full_thresh_UNCONNECTED[9:0]),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(NLW_U0_axis_injectdbiterr_UNCONNECTED),
        .axis_injectsbiterr(NLW_U0_axis_injectsbiterr_UNCONNECTED),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh(NLW_U0_axis_prog_empty_thresh_UNCONNECTED[9:0]),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh(NLW_U0_axis_prog_full_thresh_UNCONNECTED[9:0]),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(NLW_U0_backup_UNCONNECTED),
        .backup_marker(NLW_U0_backup_marker_UNCONNECTED),
        .clk(NLW_U0_clk_UNCONNECTED),
        .data_count(NLW_U0_data_count_UNCONNECTED[4:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(NLW_U0_empty_UNCONNECTED),
        .full(NLW_U0_full_UNCONNECTED),
        .injectdbiterr(NLW_U0_injectdbiterr_UNCONNECTED),
        .injectsbiterr(NLW_U0_injectsbiterr_UNCONNECTED),
        .int_clk(NLW_U0_int_clk_UNCONNECTED),
        .m_aclk(NLW_U0_m_aclk_UNCONNECTED),
        .m_aclk_en(NLW_U0_m_aclk_en_UNCONNECTED),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(NLW_U0_m_axi_arready_UNCONNECTED),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(NLW_U0_m_axi_awready_UNCONNECTED),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(NLW_U0_m_axi_bid_UNCONNECTED[0]),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp(NLW_U0_m_axi_bresp_UNCONNECTED[1:0]),
        .m_axi_buser(NLW_U0_m_axi_buser_UNCONNECTED[0]),
        .m_axi_bvalid(NLW_U0_m_axi_bvalid_UNCONNECTED),
        .m_axi_rdata(NLW_U0_m_axi_rdata_UNCONNECTED[63:0]),
        .m_axi_rid(NLW_U0_m_axi_rid_UNCONNECTED[0]),
        .m_axi_rlast(NLW_U0_m_axi_rlast_UNCONNECTED),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp(NLW_U0_m_axi_rresp_UNCONNECTED[1:0]),
        .m_axi_ruser(NLW_U0_m_axi_ruser_UNCONNECTED[0]),
        .m_axi_rvalid(NLW_U0_m_axi_rvalid_UNCONNECTED),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(NLW_U0_m_axi_wready_UNCONNECTED),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(NLW_U0_m_axis_tready_UNCONNECTED),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh(NLW_U0_prog_empty_thresh_UNCONNECTED[4:0]),
        .prog_empty_thresh_assert(NLW_U0_prog_empty_thresh_assert_UNCONNECTED[4:0]),
        .prog_empty_thresh_negate(NLW_U0_prog_empty_thresh_negate_UNCONNECTED[4:0]),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh(NLW_U0_prog_full_thresh_UNCONNECTED[4:0]),
        .prog_full_thresh_assert(NLW_U0_prog_full_thresh_assert_UNCONNECTED[4:0]),
        .prog_full_thresh_negate(NLW_U0_prog_full_thresh_negate_UNCONNECTED[4:0]),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[4:0]),
        .rd_en(rd_en),
        .rd_rst(NLW_U0_rd_rst_UNCONNECTED),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(NLW_U0_rst_UNCONNECTED),
        .s_aclk(NLW_U0_s_aclk_UNCONNECTED),
        .s_aclk_en(NLW_U0_s_aclk_en_UNCONNECTED),
        .s_aresetn(NLW_U0_s_aresetn_UNCONNECTED),
        .s_axi_araddr(NLW_U0_s_axi_araddr_UNCONNECTED[31:0]),
        .s_axi_arburst(NLW_U0_s_axi_arburst_UNCONNECTED[1:0]),
        .s_axi_arcache(NLW_U0_s_axi_arcache_UNCONNECTED[3:0]),
        .s_axi_arid(NLW_U0_s_axi_arid_UNCONNECTED[0]),
        .s_axi_arlen(NLW_U0_s_axi_arlen_UNCONNECTED[7:0]),
        .s_axi_arlock(NLW_U0_s_axi_arlock_UNCONNECTED[0]),
        .s_axi_arprot(NLW_U0_s_axi_arprot_UNCONNECTED[2:0]),
        .s_axi_arqos(NLW_U0_s_axi_arqos_UNCONNECTED[3:0]),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion(NLW_U0_s_axi_arregion_UNCONNECTED[3:0]),
        .s_axi_arsize(NLW_U0_s_axi_arsize_UNCONNECTED[2:0]),
        .s_axi_aruser(NLW_U0_s_axi_aruser_UNCONNECTED[0]),
        .s_axi_arvalid(NLW_U0_s_axi_arvalid_UNCONNECTED),
        .s_axi_awaddr(NLW_U0_s_axi_awaddr_UNCONNECTED[31:0]),
        .s_axi_awburst(NLW_U0_s_axi_awburst_UNCONNECTED[1:0]),
        .s_axi_awcache(NLW_U0_s_axi_awcache_UNCONNECTED[3:0]),
        .s_axi_awid(NLW_U0_s_axi_awid_UNCONNECTED[0]),
        .s_axi_awlen(NLW_U0_s_axi_awlen_UNCONNECTED[7:0]),
        .s_axi_awlock(NLW_U0_s_axi_awlock_UNCONNECTED[0]),
        .s_axi_awprot(NLW_U0_s_axi_awprot_UNCONNECTED[2:0]),
        .s_axi_awqos(NLW_U0_s_axi_awqos_UNCONNECTED[3:0]),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion(NLW_U0_s_axi_awregion_UNCONNECTED[3:0]),
        .s_axi_awsize(NLW_U0_s_axi_awsize_UNCONNECTED[2:0]),
        .s_axi_awuser(NLW_U0_s_axi_awuser_UNCONNECTED[0]),
        .s_axi_awvalid(NLW_U0_s_axi_awvalid_UNCONNECTED),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(NLW_U0_s_axi_bready_UNCONNECTED),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(NLW_U0_s_axi_rready_UNCONNECTED),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata(NLW_U0_s_axi_wdata_UNCONNECTED[63:0]),
        .s_axi_wid(NLW_U0_s_axi_wid_UNCONNECTED[0]),
        .s_axi_wlast(NLW_U0_s_axi_wlast_UNCONNECTED),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(NLW_U0_s_axi_wstrb_UNCONNECTED[7:0]),
        .s_axi_wuser(NLW_U0_s_axi_wuser_UNCONNECTED[0]),
        .s_axi_wvalid(NLW_U0_s_axi_wvalid_UNCONNECTED),
        .s_axis_tdata(NLW_U0_s_axis_tdata_UNCONNECTED[7:0]),
        .s_axis_tdest(NLW_U0_s_axis_tdest_UNCONNECTED[0]),
        .s_axis_tid(NLW_U0_s_axis_tid_UNCONNECTED[0]),
        .s_axis_tkeep(NLW_U0_s_axis_tkeep_UNCONNECTED[0]),
        .s_axis_tlast(NLW_U0_s_axis_tlast_UNCONNECTED),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(NLW_U0_s_axis_tstrb_UNCONNECTED[0]),
        .s_axis_tuser(NLW_U0_s_axis_tuser_UNCONNECTED[3:0]),
        .s_axis_tvalid(NLW_U0_s_axis_tvalid_UNCONNECTED),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(NLW_U0_sleep_UNCONNECTED),
        .srst(NLW_U0_srst_UNCONNECTED),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[4:0]),
        .wr_en(wr_en),
        .wr_rst(NLW_U0_wr_rst_UNCONNECTED),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  initial assign \dest_graysync_ff_reg[0][0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][4] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][4] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray_HD8
   (src_clk,
    dest_clk,
    src_in_bin,
    dest_out_bin);
  input src_clk;
  input dest_clk;
  input [4:0]src_in_bin;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  initial assign \dest_graysync_ff_reg[0][0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][4] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][4] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray__1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [4:0]src_in_bin;
  input dest_clk;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  initial assign \dest_graysync_ff_reg[0][0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][4] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][4] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "5" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray__1_HD9
   (src_clk,
    dest_clk,
    src_in_bin,
    dest_out_bin);
  input src_clk;
  input dest_clk;
  input [4:0]src_in_bin;
  output [4:0]dest_out_bin;

  wire [4:0]async_path;
  wire [3:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [4:0]\dest_graysync_ff[1] ;
  wire [4:0]dest_out_bin;
  wire [3:0]gray_enc;
  wire src_clk;
  wire [4:0]src_in_bin;

  initial assign \dest_graysync_ff_reg[0][0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[0][4] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][0] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][1] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][2] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][3] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  initial assign \dest_graysync_ff_reg[1][4] .notifier = 1'bx;
(* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE #(
    .INIT(1'b0),
    .XON("FALSE")) 
    \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[4]),
        .Q(async_path[4]),
        .R(1'b0));
endmodule

module spi_frame_decoder
   (frame_error_OBUF,
    \FSM_onehot_current_state_reg[0]_0 ,
    D,
    rd_clk,
    rd_en,
    \frame_ready_register_reg[0] ,
    length_byte,
    param1_byte,
    param2_byte,
    clk_IBUF_BUFG,
    \CSr_reg[2] ,
    empty,
    dout,
    rst_n);
  output frame_error_OBUF;
  output [0:0]\FSM_onehot_current_state_reg[0]_0 ;
  output [7:0]D;
  output rd_clk;
  output rd_en;
  output [0:0]\frame_ready_register_reg[0] ;
  output [7:0]length_byte;
  output [7:0]param1_byte;
  output [7:0]param2_byte;
  input clk_IBUF_BUFG;
  input \CSr_reg[2] ;
  input empty;
  input [7:0]dout;
  input rst_n;

  wire \CSr_reg[2] ;
  wire [7:0]D;
  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[10]_i_1_n_0 ;
  wire \FSM_onehot_current_state[11]_i_1_n_0 ;
  wire \FSM_onehot_current_state[11]_i_2_n_0 ;
  wire \FSM_onehot_current_state[12]_i_1_n_0 ;
  wire \FSM_onehot_current_state[12]_i_2_n_0 ;
  wire \FSM_onehot_current_state[12]_i_3_n_0 ;
  wire \FSM_onehot_current_state[13]_i_1_n_0 ;
  wire \FSM_onehot_current_state[13]_i_2_n_0 ;
  wire \FSM_onehot_current_state[13]_i_3_n_0 ;
  wire \FSM_onehot_current_state[13]_i_4_n_0 ;
  wire \FSM_onehot_current_state[13]_i_5_n_0 ;
  wire \FSM_onehot_current_state[15]_i_1_n_0 ;
  wire \FSM_onehot_current_state[15]_i_2_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_2_n_0 ;
  wire \FSM_onehot_current_state[3]_i_3_n_0 ;
  wire \FSM_onehot_current_state[5]_i_1_n_0 ;
  wire \FSM_onehot_current_state[5]_i_2_n_0 ;
  wire \FSM_onehot_current_state[7]_i_1_n_0 ;
  wire \FSM_onehot_current_state[7]_i_2_n_0 ;
  wire \FSM_onehot_current_state[7]_i_3_n_0 ;
  wire \FSM_onehot_current_state[9]_i_1_n_0 ;
  wire [0:0]\FSM_onehot_current_state_reg[0]_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[10] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[11] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[12] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[13] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[14] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[15] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[16] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[7] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[8] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[9] ;
  wire clk_IBUF_BUFG;
  wire [7:0]dout;
  wire empty;
  wire fifo_clk_i_1_n_0;
  wire fifo_clk_i_2_n_0;
  wire fifo_clk_i_3_n_0;
  wire fifo_clk_i_4_n_0;
  wire fifo_clk_i_5_n_0;
  wire fifo_clk_i_6_n_0;
  wire fifo_clk_i_7_n_0;
  wire fifo_clk_i_8_n_0;
  wire fifo_rd_en_i_1_n_0;
  wire fifo_rd_en_i_2_n_0;
  wire fifo_rd_en_i_3_n_0;
  wire fifo_rd_en_i_4_n_0;
  wire fifo_rd_en_i_5__0_n_0;
  wire fifo_rd_en_i_6_n_0;
  wire fifo_rd_en_i_7_n_0;
  wire [7:0]frame_data_sum;
  wire frame_data_sum0__2_carry__0_i_10_n_0;
  wire frame_data_sum0__2_carry__0_i_11_n_0;
  wire frame_data_sum0__2_carry__0_i_12_n_0;
  wire frame_data_sum0__2_carry__0_i_13_n_0;
  wire frame_data_sum0__2_carry__0_i_14_n_0;
  wire frame_data_sum0__2_carry__0_i_15_n_0;
  wire frame_data_sum0__2_carry__0_i_16_n_0;
  wire frame_data_sum0__2_carry__0_i_17_n_0;
  wire frame_data_sum0__2_carry__0_i_1_n_0;
  wire frame_data_sum0__2_carry__0_i_2_n_0;
  wire frame_data_sum0__2_carry__0_i_3_n_0;
  wire frame_data_sum0__2_carry__0_i_4_n_0;
  wire frame_data_sum0__2_carry__0_i_5_n_0;
  wire frame_data_sum0__2_carry__0_i_6_n_0;
  wire frame_data_sum0__2_carry__0_i_7_n_0;
  wire frame_data_sum0__2_carry__0_i_8_n_0;
  wire frame_data_sum0__2_carry__0_i_9_n_0;
  wire frame_data_sum0__2_carry__0_n_4;
  wire frame_data_sum0__2_carry__0_n_5;
  wire frame_data_sum0__2_carry__0_n_6;
  wire frame_data_sum0__2_carry__0_n_7;
  wire frame_data_sum0__2_carry_i_1_n_0;
  wire frame_data_sum0__2_carry_i_2_n_0;
  wire frame_data_sum0__2_carry_i_3_n_0;
  wire frame_data_sum0__2_carry_i_4_n_0;
  wire frame_data_sum0__2_carry_i_5_n_0;
  wire frame_data_sum0__2_carry_i_6_n_0;
  wire frame_data_sum0__2_carry_i_7_n_0;
  wire frame_data_sum0__2_carry_i_8_n_0;
  wire frame_data_sum0__2_carry_i_9_n_0;
  wire frame_data_sum0__2_carry_n_0;
  wire frame_data_sum0__2_carry_n_4;
  wire frame_data_sum0__2_carry_n_5;
  wire frame_data_sum0__2_carry_n_6;
  wire frame_data_sum0__2_carry_n_7;
  wire \frame_data_sum[0]_i_1_n_0 ;
  wire \frame_data_sum[1]_i_1_n_0 ;
  wire \frame_data_sum[2]_i_1_n_0 ;
  wire \frame_data_sum[3]_i_1_n_0 ;
  wire \frame_data_sum[4]_i_1_n_0 ;
  wire \frame_data_sum[5]_i_1_n_0 ;
  wire \frame_data_sum[6]_i_1_n_0 ;
  wire \frame_data_sum[7]_i_10_n_0 ;
  wire \frame_data_sum[7]_i_1_n_0 ;
  wire \frame_data_sum[7]_i_3_n_0 ;
  wire \frame_data_sum[7]_i_4_n_0 ;
  wire \frame_data_sum[7]_i_5_n_0 ;
  wire \frame_data_sum[7]_i_6_n_0 ;
  wire \frame_data_sum[7]_i_7_n_0 ;
  wire \frame_data_sum[7]_i_8_n_0 ;
  wire \frame_data_sum[7]_i_9_n_0 ;
  wire frame_data_sum_0;
  wire frame_error;
  wire frame_error_OBUF;
  wire frame_error_i_10_n_0;
  wire frame_error_i_11_n_0;
  wire frame_error_i_12_n_0;
  wire frame_error_i_13_n_0;
  wire frame_error_i_14_n_0;
  wire frame_error_i_2_n_0;
  wire frame_error_i_3_n_0;
  wire frame_error_i_4_n_0;
  wire frame_error_i_5_n_0;
  wire frame_error_i_6_n_0;
  wire frame_error_i_7_n_0;
  wire frame_error_i_8_n_0;
  wire frame_error_i_9_n_0;
  wire frame_ready_i_10_n_0;
  wire frame_ready_i_11_n_0;
  wire frame_ready_i_12_n_0;
  wire frame_ready_i_13_n_0;
  wire frame_ready_i_14_n_0;
  wire frame_ready_i_1_n_0;
  wire frame_ready_i_2_n_0;
  wire frame_ready_i_3_n_0;
  wire frame_ready_i_4_n_0;
  wire frame_ready_i_5_n_0;
  wire frame_ready_i_6_n_0;
  wire frame_ready_i_7_n_0;
  wire frame_ready_i_8_n_0;
  wire frame_ready_i_9_n_0;
  wire [0:0]\frame_ready_register_reg[0] ;
  wire func_byte;
  wire \func_byte[0]_i_1_n_0 ;
  wire \func_byte[1]_i_1_n_0 ;
  wire \func_byte[2]_i_1_n_0 ;
  wire \func_byte[3]_i_1_n_0 ;
  wire \func_byte[4]_i_1_n_0 ;
  wire \func_byte[5]_i_1_n_0 ;
  wire \func_byte[6]_i_1_n_0 ;
  wire \func_byte[7]_i_10_n_0 ;
  wire \func_byte[7]_i_1_n_0 ;
  wire \func_byte[7]_i_3_n_0 ;
  wire \func_byte[7]_i_4_n_0 ;
  wire \func_byte[7]_i_5_n_0 ;
  wire \func_byte[7]_i_6_n_0 ;
  wire \func_byte[7]_i_7_n_0 ;
  wire \func_byte[7]_i_8_n_0 ;
  wire \func_byte[7]_i_9_n_0 ;
  wire [7:0]length_byte;
  wire \length_byte[0]_i_1_n_0 ;
  wire \length_byte[1]_i_1_n_0 ;
  wire \length_byte[2]_i_1_n_0 ;
  wire \length_byte[3]_i_1_n_0 ;
  wire \length_byte[4]_i_1_n_0 ;
  wire \length_byte[5]_i_1_n_0 ;
  wire \length_byte[6]_i_1_n_0 ;
  wire \length_byte[7]_i_10_n_0 ;
  wire \length_byte[7]_i_11_n_0 ;
  wire \length_byte[7]_i_12_n_0 ;
  wire \length_byte[7]_i_13_n_0 ;
  wire \length_byte[7]_i_14_n_0 ;
  wire \length_byte[7]_i_15_n_0 ;
  wire \length_byte[7]_i_16_n_0 ;
  wire \length_byte[7]_i_17_n_0 ;
  wire \length_byte[7]_i_18_n_0 ;
  wire \length_byte[7]_i_1_n_0 ;
  wire \length_byte[7]_i_3_n_0 ;
  wire \length_byte[7]_i_4_n_0 ;
  wire \length_byte[7]_i_5_n_0 ;
  wire \length_byte[7]_i_6_n_0 ;
  wire \length_byte[7]_i_7_n_0 ;
  wire \length_byte[7]_i_8_n_0 ;
  wire \length_byte[7]_i_9_n_0 ;
  wire length_byte_1;
  wire [7:0]param1_byte;
  wire \param1_byte[0]_i_1_n_0 ;
  wire \param1_byte[1]_i_1_n_0 ;
  wire \param1_byte[2]_i_1_n_0 ;
  wire \param1_byte[3]_i_1_n_0 ;
  wire \param1_byte[4]_i_1_n_0 ;
  wire \param1_byte[5]_i_1_n_0 ;
  wire \param1_byte[6]_i_1_n_0 ;
  wire \param1_byte[7]_i_1_n_0 ;
  wire \param1_byte[7]_i_2_n_0 ;
  wire \param1_byte[7]_i_3_n_0 ;
  wire \param1_byte[7]_i_4_n_0 ;
  wire param1_byte_2;
  wire [7:0]param2_byte;
  wire \param2_byte[7]_i_1_n_0 ;
  wire \param2_byte[7]_i_3_n_0 ;
  wire \param2_byte[7]_i_4_n_0 ;
  wire \param2_byte[7]_i_5_n_0 ;
  wire \param2_byte[7]_i_6_n_0 ;
  wire \^rd_clk ;
  wire rd_clk_BUFG;
  wire rd_en;
  wire rst_n;
  wire [0:0]spi_cs_end_register;
  wire [7:0]state_counter;
  wire \state_counter[0]_i_1_n_0 ;
  wire \state_counter[1]_i_1_n_0 ;
  wire \state_counter[2]_i_1_n_0 ;
  wire \state_counter[2]_i_2_n_0 ;
  wire \state_counter[2]_i_3_n_0 ;
  wire \state_counter[3]_i_1_n_0 ;
  wire \state_counter[3]_i_2_n_0 ;
  wire \state_counter[4]_i_1_n_0 ;
  wire \state_counter[4]_i_2_n_0 ;
  wire \state_counter[5]_i_1_n_0 ;
  wire \state_counter[5]_i_2_n_0 ;
  wire \state_counter[6]_i_1_n_0 ;
  wire \state_counter[7]_i_10_n_0 ;
  wire \state_counter[7]_i_11_n_0 ;
  wire \state_counter[7]_i_12_n_0 ;
  wire \state_counter[7]_i_13_n_0 ;
  wire \state_counter[7]_i_14_n_0 ;
  wire \state_counter[7]_i_15_n_0 ;
  wire \state_counter[7]_i_16_n_0 ;
  wire \state_counter[7]_i_17_n_0 ;
  wire \state_counter[7]_i_18_n_0 ;
  wire \state_counter[7]_i_19_n_0 ;
  wire \state_counter[7]_i_1_n_0 ;
  wire \state_counter[7]_i_20_n_0 ;
  wire \state_counter[7]_i_21_n_0 ;
  wire \state_counter[7]_i_22_n_0 ;
  wire \state_counter[7]_i_23_n_0 ;
  wire \state_counter[7]_i_3_n_0 ;
  wire \state_counter[7]_i_4_n_0 ;
  wire \state_counter[7]_i_5_n_0 ;
  wire \state_counter[7]_i_6_n_0 ;
  wire \state_counter[7]_i_7_n_0 ;
  wire \state_counter[7]_i_8_n_0 ;
  wire \state_counter[7]_i_9_n_0 ;
  wire state_counter_3;
  wire [2:0]NLW_frame_data_sum0__2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_frame_data_sum0__2_carry__0_CO_UNCONNECTED;

  assign rd_clk = rd_clk_BUFG;
  LUT4 #(
    .INIT(16'hFBAA)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[16] ),
        .I1(spi_cs_end_register),
        .I2(\FSM_onehot_current_state_reg[0]_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \FSM_onehot_current_state[10]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(state_counter[6]),
        .I2(\FSM_onehot_current_state[11]_i_2_n_0 ),
        .I3(state_counter[7]),
        .O(\FSM_onehot_current_state[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_onehot_current_state[11]_i_1 
       (.I0(state_counter[6]),
        .I1(\FSM_onehot_current_state[11]_i_2_n_0 ),
        .I2(state_counter[7]),
        .I3(\FSM_onehot_current_state_reg_n_0_[9] ),
        .O(\FSM_onehot_current_state[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_current_state[11]_i_2 
       (.I0(state_counter[5]),
        .I1(state_counter[3]),
        .I2(state_counter[1]),
        .I3(state_counter[0]),
        .I4(state_counter[2]),
        .I5(state_counter[4]),
        .O(\FSM_onehot_current_state[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_current_state[12]_i_1 
       (.I0(\FSM_onehot_current_state[15]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_current_state[12]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state[12]_i_3_n_0 ),
        .O(\FSM_onehot_current_state[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00015555)) 
    \FSM_onehot_current_state[12]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I4(empty),
        .O(\FSM_onehot_current_state[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \FSM_onehot_current_state[12]_i_3 
       (.I0(empty),
        .I1(dout[1]),
        .I2(dout[5]),
        .I3(dout[7]),
        .I4(dout[3]),
        .I5(\FSM_onehot_current_state[7]_i_2_n_0 ),
        .O(\FSM_onehot_current_state[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004000055555555)) 
    \FSM_onehot_current_state[13]_i_1 
       (.I0(empty),
        .I1(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_current_state[13]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state[13]_i_3_n_0 ),
        .I4(\FSM_onehot_current_state[13]_i_4_n_0 ),
        .I5(\FSM_onehot_current_state[13]_i_5_n_0 ),
        .O(\FSM_onehot_current_state[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_current_state[13]_i_2 
       (.I0(frame_data_sum[3]),
        .I1(dout[3]),
        .I2(dout[5]),
        .I3(frame_data_sum[5]),
        .I4(dout[4]),
        .I5(frame_data_sum[4]),
        .O(\FSM_onehot_current_state[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \FSM_onehot_current_state[13]_i_3 
       (.I0(frame_data_sum[0]),
        .I1(dout[0]),
        .I2(dout[1]),
        .I3(frame_data_sum[1]),
        .I4(dout[2]),
        .I5(frame_data_sum[2]),
        .O(\FSM_onehot_current_state[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \FSM_onehot_current_state[13]_i_4 
       (.I0(frame_data_sum[6]),
        .I1(dout[6]),
        .I2(frame_data_sum[7]),
        .I3(dout[7]),
        .O(\FSM_onehot_current_state[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_onehot_current_state[13]_i_5 
       (.I0(\FSM_onehot_current_state_reg_n_0_[14] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[12] ),
        .O(\FSM_onehot_current_state[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \FSM_onehot_current_state[15]_i_1 
       (.I0(empty),
        .I1(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_current_state[15]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[14] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[12] ),
        .O(\FSM_onehot_current_state[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009009)) 
    \FSM_onehot_current_state[15]_i_2 
       (.I0(dout[7]),
        .I1(frame_data_sum[7]),
        .I2(dout[6]),
        .I3(frame_data_sum[6]),
        .I4(\FSM_onehot_current_state[13]_i_3_n_0 ),
        .I5(\FSM_onehot_current_state[13]_i_2_n_0 ),
        .O(\FSM_onehot_current_state[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44F44444)) 
    \FSM_onehot_current_state[1]_i_2 
       (.I0(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(spi_cs_end_register),
        .I3(\FSM_onehot_current_state_reg[0]_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(empty),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \FSM_onehot_current_state[3]_i_2 
       (.I0(dout[5]),
        .I1(dout[7]),
        .I2(dout[3]),
        .I3(dout[1]),
        .I4(\FSM_onehot_current_state[7]_i_2_n_0 ),
        .O(\FSM_onehot_current_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_current_state[3]_i_3 
       (.I0(state_counter[7]),
        .I1(state_counter[5]),
        .I2(state_counter[3]),
        .I3(\state_counter[3]_i_2_n_0 ),
        .I4(state_counter[4]),
        .I5(state_counter[6]),
        .O(\FSM_onehot_current_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_onehot_current_state[7]_i_2_n_0 ),
        .I1(dout[1]),
        .I2(dout[3]),
        .I3(dout[7]),
        .I4(dout[5]),
        .I5(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .O(\FSM_onehot_current_state[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_current_state[5]_i_2 
       (.I0(empty),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\FSM_onehot_current_state[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h00A2)) 
    \FSM_onehot_current_state[7]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_current_state[7]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state[7]_i_3_n_0 ),
        .I3(empty),
        .O(\FSM_onehot_current_state[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_current_state[7]_i_2 
       (.I0(dout[2]),
        .I1(dout[4]),
        .I2(dout[6]),
        .I3(dout[0]),
        .O(\FSM_onehot_current_state[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_current_state[7]_i_3 
       (.I0(dout[1]),
        .I1(dout[5]),
        .I2(dout[7]),
        .I3(dout[3]),
        .O(\FSM_onehot_current_state[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_onehot_current_state[9]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I2(empty),
        .O(\FSM_onehot_current_state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(rst_n),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[12]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[12] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[13]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[13] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state_reg_n_0_[13] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[14] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[15]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[15] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state_reg_n_0_[15] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[16] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "S10:00000010000000000,S06:00000000001000000,S09:00000001000000000,S08:00000000100000000,S11:00000100000000000,S02:00000000000000100,S13:10000000000000000,S16:00100000000000000,S05:00000000000100000,S07:00000000010000000,S12:01000000000000000,S01:00000000000000010,S00:00000000000000001,S15:00010000000000000,S04:00000000000010000,S03:00000000000001000,S14:00001000000000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hF0F0F1F0F0F0E0F0)) 
    fifo_clk_i_1
       (.I0(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I1(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I2(fifo_clk_i_2_n_0),
        .I3(frame_error_i_8_n_0),
        .I4(fifo_clk_i_3_n_0),
        .I5(rd_clk_BUFG),
        .O(fifo_clk_i_1_n_0));
  LUT6 #(
    .INIT(64'h0003000300020000)) 
    fifo_clk_i_2
       (.I0(fifo_clk_i_4_n_0),
        .I1(fifo_clk_i_5_n_0),
        .I2(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .I3(fifo_clk_i_6_n_0),
        .I4(fifo_clk_i_7_n_0),
        .I5(fifo_clk_i_8_n_0),
        .O(fifo_clk_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFF)) 
    fifo_clk_i_3
       (.I0(\FSM_onehot_current_state[5]_i_1_n_0 ),
        .I1(frame_ready_i_4_n_0),
        .I2(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state[12]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state[15]_i_1_n_0 ),
        .O(fifo_clk_i_3_n_0));
  LUT5 #(
    .INIT(32'h00010116)) 
    fifo_clk_i_4
       (.I0(\length_byte[7]_i_15_n_0 ),
        .I1(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[15] ),
        .I3(\FSM_onehot_current_state[13]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .O(fifo_clk_i_4_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    fifo_clk_i_5
       (.I0(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(fifo_clk_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    fifo_clk_i_6
       (.I0(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_current_state[12]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_current_state[15]_i_1_n_0 ),
        .O(fifo_clk_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    fifo_clk_i_7
       (.I0(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I1(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .O(fifo_clk_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000100010000)) 
    fifo_clk_i_8
       (.I0(\FSM_onehot_current_state[5]_i_1_n_0 ),
        .I1(frame_error_i_14_n_0),
        .I2(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .O(fifo_clk_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(fifo_clk_i_1_n_0),
        .Q(\^rd_clk ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAFBAAAAAA08)) 
    fifo_rd_en_i_1
       (.I0(fifo_rd_en_i_2_n_0),
        .I1(frame_error_i_4_n_0),
        .I2(fifo_rd_en_i_3_n_0),
        .I3(frame_error_i_7_n_0),
        .I4(fifo_rd_en_i_4_n_0),
        .I5(rd_en),
        .O(fifo_rd_en_i_1_n_0));
  LUT5 #(
    .INIT(32'h00200000)) 
    fifo_rd_en_i_2
       (.I0(fifo_rd_en_i_5__0_n_0),
        .I1(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(frame_ready_i_4_n_0),
        .I4(\state_counter[7]_i_5_n_0 ),
        .O(fifo_rd_en_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000200020222)) 
    fifo_rd_en_i_3
       (.I0(frame_error_i_11_n_0),
        .I1(\FSM_onehot_current_state[15]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state[12]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state[13]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[15] ),
        .O(fifo_rd_en_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAB)) 
    fifo_rd_en_i_4
       (.I0(fifo_rd_en_i_6_n_0),
        .I1(\FSM_onehot_current_state[12]_i_1_n_0 ),
        .I2(fifo_rd_en_i_7_n_0),
        .I3(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I4(\param2_byte[7]_i_6_n_0 ),
        .I5(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .O(fifo_rd_en_i_4_n_0));
  LUT5 #(
    .INIT(32'h000000AB)) 
    fifo_rd_en_i_5__0
       (.I0(empty),
        .I1(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(\length_byte[7]_i_16_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[9] ),
        .O(fifo_rd_en_i_5__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA8AAAA)) 
    fifo_rd_en_i_6
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I2(\length_byte[7]_i_16_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I4(\param1_byte[7]_i_4_n_0 ),
        .I5(\func_byte[7]_i_10_n_0 ),
        .O(fifo_rd_en_i_6_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    fifo_rd_en_i_7
       (.I0(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I1(\FSM_onehot_current_state[13]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[15] ),
        .O(fifo_rd_en_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_rd_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(fifo_rd_en_i_1_n_0),
        .Q(rd_en),
        .R(1'b0));
  CARRY4 frame_data_sum0__2_carry
       (.CI(1'b0),
        .CO({frame_data_sum0__2_carry_n_0,NLW_frame_data_sum0__2_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({frame_data_sum0__2_carry_i_1_n_0,frame_data_sum0__2_carry_i_2_n_0,frame_data_sum0__2_carry_i_3_n_0,D[0]}),
        .O({frame_data_sum0__2_carry_n_4,frame_data_sum0__2_carry_n_5,frame_data_sum0__2_carry_n_6,frame_data_sum0__2_carry_n_7}),
        .S({frame_data_sum0__2_carry_i_4_n_0,frame_data_sum0__2_carry_i_5_n_0,frame_data_sum0__2_carry_i_6_n_0,frame_data_sum0__2_carry_i_7_n_0}));
  CARRY4 frame_data_sum0__2_carry__0
       (.CI(frame_data_sum0__2_carry_n_0),
        .CO(NLW_frame_data_sum0__2_carry__0_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,frame_data_sum0__2_carry__0_i_1_n_0,frame_data_sum0__2_carry__0_i_2_n_0,frame_data_sum0__2_carry__0_i_3_n_0}),
        .O({frame_data_sum0__2_carry__0_n_4,frame_data_sum0__2_carry__0_n_5,frame_data_sum0__2_carry__0_n_6,frame_data_sum0__2_carry__0_n_7}),
        .S({frame_data_sum0__2_carry__0_i_4_n_0,frame_data_sum0__2_carry__0_i_5_n_0,frame_data_sum0__2_carry__0_i_6_n_0,frame_data_sum0__2_carry__0_i_7_n_0}));
  LUT5 #(
    .INIT(32'hE8FF00E8)) 
    frame_data_sum0__2_carry__0_i_1
       (.I0(param1_byte[4]),
        .I1(param2_byte[4]),
        .I2(length_byte[4]),
        .I3(frame_data_sum0__2_carry__0_i_8_n_0),
        .I4(frame_data_sum0__2_carry__0_i_9_n_0),
        .O(frame_data_sum0__2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    frame_data_sum0__2_carry__0_i_10
       (.I0(length_byte[3]),
        .I1(param1_byte[3]),
        .O(frame_data_sum0__2_carry__0_i_10_n_0));
  LUT4 #(
    .INIT(16'h066F)) 
    frame_data_sum0__2_carry__0_i_11
       (.I0(length_byte[5]),
        .I1(param1_byte[5]),
        .I2(param2_byte[5]),
        .I3(D[5]),
        .O(frame_data_sum0__2_carry__0_i_11_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    frame_data_sum0__2_carry__0_i_12
       (.I0(param1_byte[6]),
        .I1(param2_byte[6]),
        .I2(length_byte[6]),
        .O(frame_data_sum0__2_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'hA995)) 
    frame_data_sum0__2_carry__0_i_13
       (.I0(frame_data_sum0__2_carry__0_i_17_n_0),
        .I1(param1_byte[6]),
        .I2(param2_byte[6]),
        .I3(length_byte[6]),
        .O(frame_data_sum0__2_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h1EE1E11EE11E1EE1)) 
    frame_data_sum0__2_carry__0_i_14
       (.I0(param1_byte[5]),
        .I1(length_byte[5]),
        .I2(param1_byte[6]),
        .I3(param2_byte[6]),
        .I4(length_byte[6]),
        .I5(D[6]),
        .O(frame_data_sum0__2_carry__0_i_14_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    frame_data_sum0__2_carry__0_i_15
       (.I0(param1_byte[4]),
        .I1(param2_byte[4]),
        .I2(length_byte[4]),
        .O(frame_data_sum0__2_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    frame_data_sum0__2_carry__0_i_16
       (.I0(length_byte[4]),
        .I1(param2_byte[4]),
        .I2(param1_byte[4]),
        .I3(param2_byte[3]),
        .I4(D[3]),
        .I5(D[4]),
        .O(frame_data_sum0__2_carry__0_i_16_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    frame_data_sum0__2_carry__0_i_17
       (.I0(D[7]),
        .I1(param2_byte[7]),
        .I2(param1_byte[7]),
        .I3(length_byte[7]),
        .O(frame_data_sum0__2_carry__0_i_17_n_0));
  LUT5 #(
    .INIT(32'h66696999)) 
    frame_data_sum0__2_carry__0_i_2
       (.I0(frame_data_sum0__2_carry__0_i_9_n_0),
        .I1(frame_data_sum0__2_carry__0_i_8_n_0),
        .I2(length_byte[4]),
        .I3(param2_byte[4]),
        .I4(param1_byte[4]),
        .O(frame_data_sum0__2_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h6F6F6F066F060606)) 
    frame_data_sum0__2_carry__0_i_3
       (.I0(D[3]),
        .I1(param2_byte[3]),
        .I2(frame_data_sum0__2_carry__0_i_10_n_0),
        .I3(length_byte[2]),
        .I4(param2_byte[2]),
        .I5(param1_byte[2]),
        .O(frame_data_sum0__2_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h4242422BBDBDBDD4)) 
    frame_data_sum0__2_carry__0_i_4
       (.I0(frame_data_sum0__2_carry__0_i_11_n_0),
        .I1(D[6]),
        .I2(frame_data_sum0__2_carry__0_i_12_n_0),
        .I3(length_byte[5]),
        .I4(param1_byte[5]),
        .I5(frame_data_sum0__2_carry__0_i_13_n_0),
        .O(frame_data_sum0__2_carry__0_i_4_n_0));
  LUT6 #(
    .INIT(64'h556969AAAA969655)) 
    frame_data_sum0__2_carry__0_i_5
       (.I0(frame_data_sum0__2_carry__0_i_1_n_0),
        .I1(length_byte[5]),
        .I2(param1_byte[5]),
        .I3(param2_byte[5]),
        .I4(D[5]),
        .I5(frame_data_sum0__2_carry__0_i_14_n_0),
        .O(frame_data_sum0__2_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h566A6A6A)) 
    frame_data_sum0__2_carry__0_i_6
       (.I0(frame_data_sum0__2_carry__0_i_2_n_0),
        .I1(D[4]),
        .I2(frame_data_sum0__2_carry__0_i_15_n_0),
        .I3(param2_byte[3]),
        .I4(D[3]),
        .O(frame_data_sum0__2_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h6669)) 
    frame_data_sum0__2_carry__0_i_7
       (.I0(frame_data_sum0__2_carry__0_i_3_n_0),
        .I1(frame_data_sum0__2_carry__0_i_16_n_0),
        .I2(length_byte[3]),
        .I3(param1_byte[3]),
        .O(frame_data_sum0__2_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    frame_data_sum0__2_carry__0_i_8
       (.I0(D[5]),
        .I1(param2_byte[5]),
        .I2(param1_byte[5]),
        .I3(length_byte[5]),
        .O(frame_data_sum0__2_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'hE00E0E0E0EE0E0E0)) 
    frame_data_sum0__2_carry__0_i_9
       (.I0(param1_byte[3]),
        .I1(length_byte[3]),
        .I2(D[4]),
        .I3(D[3]),
        .I4(param2_byte[3]),
        .I5(frame_data_sum0__2_carry__0_i_15_n_0),
        .O(frame_data_sum0__2_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hFF96FF96FF969600)) 
    frame_data_sum0__2_carry_i_1
       (.I0(length_byte[2]),
        .I1(param2_byte[2]),
        .I2(param1_byte[2]),
        .I3(D[2]),
        .I4(length_byte[1]),
        .I5(param1_byte[1]),
        .O(frame_data_sum0__2_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'hF990)) 
    frame_data_sum0__2_carry_i_2
       (.I0(length_byte[1]),
        .I1(param1_byte[1]),
        .I2(param2_byte[1]),
        .I3(D[1]),
        .O(frame_data_sum0__2_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    frame_data_sum0__2_carry_i_3
       (.I0(param1_byte[1]),
        .I1(length_byte[1]),
        .I2(D[1]),
        .I3(param2_byte[1]),
        .O(frame_data_sum0__2_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    frame_data_sum0__2_carry_i_4
       (.I0(frame_data_sum0__2_carry_i_1_n_0),
        .I1(frame_data_sum0__2_carry_i_8_n_0),
        .I2(D[3]),
        .I3(param2_byte[3]),
        .I4(param1_byte[3]),
        .I5(length_byte[3]),
        .O(frame_data_sum0__2_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h69696996)) 
    frame_data_sum0__2_carry_i_5
       (.I0(frame_data_sum0__2_carry_i_2_n_0),
        .I1(D[2]),
        .I2(frame_data_sum0__2_carry_i_9_n_0),
        .I3(length_byte[1]),
        .I4(param1_byte[1]),
        .O(frame_data_sum0__2_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h566A)) 
    frame_data_sum0__2_carry_i_6
       (.I0(frame_data_sum0__2_carry_i_3_n_0),
        .I1(param2_byte[0]),
        .I2(param1_byte[0]),
        .I3(length_byte[0]),
        .O(frame_data_sum0__2_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    frame_data_sum0__2_carry_i_7
       (.I0(length_byte[0]),
        .I1(param1_byte[0]),
        .I2(param2_byte[0]),
        .I3(D[0]),
        .O(frame_data_sum0__2_carry_i_7_n_0));
  LUT3 #(
    .INIT(8'h17)) 
    frame_data_sum0__2_carry_i_8
       (.I0(length_byte[2]),
        .I1(param2_byte[2]),
        .I2(param1_byte[2]),
        .O(frame_data_sum0__2_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    frame_data_sum0__2_carry_i_9
       (.I0(param1_byte[2]),
        .I1(param2_byte[2]),
        .I2(length_byte[2]),
        .O(frame_data_sum0__2_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_data_sum[0]_i_1 
       (.I0(frame_data_sum0__2_carry_n_7),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\frame_data_sum[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_data_sum[1]_i_1 
       (.I0(frame_data_sum0__2_carry_n_6),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\frame_data_sum[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_data_sum[2]_i_1 
       (.I0(frame_data_sum0__2_carry_n_5),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\frame_data_sum[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_data_sum[3]_i_1 
       (.I0(frame_data_sum0__2_carry_n_4),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\frame_data_sum[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_data_sum[4]_i_1 
       (.I0(frame_data_sum0__2_carry__0_n_7),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\frame_data_sum[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \frame_data_sum[5]_i_1 
       (.I0(frame_data_sum0__2_carry__0_n_6),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\frame_data_sum[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF00400000)) 
    \frame_data_sum[6]_i_1 
       (.I0(\length_byte[7]_i_10_n_0 ),
        .I1(frame_data_sum0__2_carry__0_n_5),
        .I2(\length_byte[7]_i_11_n_0 ),
        .I3(\frame_data_sum[7]_i_4_n_0 ),
        .I4(frame_data_sum_0),
        .I5(frame_data_sum[6]),
        .O(\frame_data_sum[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8A)) 
    \frame_data_sum[7]_i_1 
       (.I0(frame_data_sum_0),
        .I1(\frame_data_sum[7]_i_4_n_0 ),
        .I2(\length_byte[7]_i_11_n_0 ),
        .O(\frame_data_sum[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBBB)) 
    \frame_data_sum[7]_i_10 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_current_state[5]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\frame_data_sum[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00155555)) 
    \frame_data_sum[7]_i_2 
       (.I0(\length_byte[7]_i_5_n_0 ),
        .I1(\frame_data_sum[7]_i_5_n_0 ),
        .I2(\frame_data_sum[7]_i_6_n_0 ),
        .I3(\frame_data_sum[7]_i_7_n_0 ),
        .I4(\length_byte[7]_i_8_n_0 ),
        .I5(\frame_data_sum[7]_i_8_n_0 ),
        .O(frame_data_sum_0));
  LUT2 #(
    .INIT(4'h2)) 
    \frame_data_sum[7]_i_3 
       (.I0(frame_data_sum0__2_carry__0_n_4),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\frame_data_sum[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \frame_data_sum[7]_i_4 
       (.I0(\length_byte[7]_i_17_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I3(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I5(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .O(\frame_data_sum[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h0002022B)) 
    \frame_data_sum[7]_i_5 
       (.I0(\frame_data_sum[7]_i_9_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I2(\FSM_onehot_current_state[12]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[15] ),
        .I4(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .O(\frame_data_sum[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010101011)) 
    \frame_data_sum[7]_i_6 
       (.I0(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(empty),
        .I3(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I5(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .O(\frame_data_sum[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000500000507)) 
    \frame_data_sum[7]_i_7 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .I2(\length_byte[7]_i_16_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .O(\frame_data_sum[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \frame_data_sum[7]_i_8 
       (.I0(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I1(frame_ready_i_4_n_0),
        .I2(\frame_data_sum[7]_i_10_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I4(\length_byte[7]_i_16_n_0 ),
        .O(\frame_data_sum[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1111110111111111)) 
    \frame_data_sum[7]_i_9 
       (.I0(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[14] ),
        .I2(\FSM_onehot_current_state[13]_i_4_n_0 ),
        .I3(\FSM_onehot_current_state[13]_i_3_n_0 ),
        .I4(\FSM_onehot_current_state[13]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[11] ),
        .O(\frame_data_sum[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_data_sum_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(frame_data_sum_0),
        .D(\frame_data_sum[0]_i_1_n_0 ),
        .Q(frame_data_sum[0]),
        .R(\frame_data_sum[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_data_sum_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(frame_data_sum_0),
        .D(\frame_data_sum[1]_i_1_n_0 ),
        .Q(frame_data_sum[1]),
        .R(\frame_data_sum[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_data_sum_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(frame_data_sum_0),
        .D(\frame_data_sum[2]_i_1_n_0 ),
        .Q(frame_data_sum[2]),
        .R(\frame_data_sum[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_data_sum_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(frame_data_sum_0),
        .D(\frame_data_sum[3]_i_1_n_0 ),
        .Q(frame_data_sum[3]),
        .R(\frame_data_sum[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_data_sum_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(frame_data_sum_0),
        .D(\frame_data_sum[4]_i_1_n_0 ),
        .Q(frame_data_sum[4]),
        .R(\frame_data_sum[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_data_sum_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(frame_data_sum_0),
        .D(\frame_data_sum[5]_i_1_n_0 ),
        .Q(frame_data_sum[5]),
        .R(\frame_data_sum[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \frame_data_sum_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\frame_data_sum[6]_i_1_n_0 ),
        .Q(frame_data_sum[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \frame_data_sum_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(frame_data_sum_0),
        .D(\frame_data_sum[7]_i_3_n_0 ),
        .Q(frame_data_sum[7]),
        .R(\frame_data_sum[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4FFFFF4)) 
    frame_error_i_1
       (.I0(frame_error_i_3_n_0),
        .I1(frame_error_i_4_n_0),
        .I2(frame_error_i_5_n_0),
        .I3(frame_error_i_6_n_0),
        .I4(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I5(frame_error_i_7_n_0),
        .O(frame_error));
  LUT4 #(
    .INIT(16'hFFFE)) 
    frame_error_i_10
       (.I0(\FSM_onehot_current_state[5]_i_1_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(frame_error_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000200020002)) 
    frame_error_i_11
       (.I0(\length_byte[7]_i_11_n_0 ),
        .I1(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I5(\length_byte[7]_i_16_n_0 ),
        .O(frame_error_i_11_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    frame_error_i_12
       (.I0(\state_counter[7]_i_7_n_0 ),
        .I1(\length_byte[7]_i_11_n_0 ),
        .I2(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .O(frame_error_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    frame_error_i_13
       (.I0(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I1(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I4(\length_byte[7]_i_11_n_0 ),
        .I5(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .O(frame_error_i_13_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFEFEFE)) 
    frame_error_i_14
       (.I0(\FSM_onehot_current_state_reg_n_0_[15] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[14] ),
        .I3(\FSM_onehot_current_state[15]_i_2_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I5(empty),
        .O(frame_error_i_14_n_0));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    frame_error_i_2
       (.I0(frame_error_i_8_n_0),
        .I1(frame_error_i_9_n_0),
        .I2(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state[15]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state[12]_i_1_n_0 ),
        .I5(frame_error_i_10_n_0),
        .O(frame_error_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000020000022A)) 
    frame_error_i_3
       (.I0(frame_error_i_11_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[15] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I3(\FSM_onehot_current_state[13]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state[12]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state[15]_i_1_n_0 ),
        .O(frame_error_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFEECCC0FFEECC00)) 
    frame_error_i_4
       (.I0(\param2_byte[7]_i_5_n_0 ),
        .I1(\length_byte[7]_i_14_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\state_counter[7]_i_7_n_0 ),
        .I5(\length_byte[7]_i_15_n_0 ),
        .O(frame_error_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    frame_error_i_5
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(frame_error_i_12_n_0),
        .O(frame_error_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    frame_error_i_6
       (.I0(frame_error_i_13_n_0),
        .I1(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[15] ),
        .I5(\frame_data_sum[7]_i_9_n_0 ),
        .O(frame_error_i_6_n_0));
  LUT3 #(
    .INIT(8'hD0)) 
    frame_error_i_7
       (.I0(\length_byte[7]_i_11_n_0 ),
        .I1(\state_counter[7]_i_7_n_0 ),
        .I2(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .O(frame_error_i_7_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    frame_error_i_8
       (.I0(frame_error_i_14_n_0),
        .I1(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(frame_error_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFFFF0E)) 
    frame_error_i_9
       (.I0(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I2(empty),
        .I3(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .O(frame_error_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    frame_error_reg
       (.C(clk_IBUF_BUFG),
        .CE(frame_error),
        .D(frame_error_i_2_n_0),
        .Q(frame_error_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAEEEFAAAA2220)) 
    frame_ready_i_1
       (.I0(frame_ready_i_2_n_0),
        .I1(frame_ready_i_3_n_0),
        .I2(frame_ready_i_4_n_0),
        .I3(frame_ready_i_5_n_0),
        .I4(frame_ready_i_6_n_0),
        .I5(\frame_ready_register_reg[0] ),
        .O(frame_ready_i_1_n_0));
  LUT4 #(
    .INIT(16'hBBBA)) 
    frame_ready_i_10
       (.I0(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I1(empty),
        .I2(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[8] ),
        .O(frame_ready_i_10_n_0));
  LUT6 #(
    .INIT(64'h000055010000FFFF)) 
    frame_ready_i_11
       (.I0(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I3(empty),
        .I4(\length_byte[7]_i_16_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[9] ),
        .O(frame_ready_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEFE)) 
    frame_ready_i_12
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(\length_byte[7]_i_15_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I5(\state_counter[7]_i_7_n_0 ),
        .O(frame_ready_i_12_n_0));
  LUT6 #(
    .INIT(64'hFEFFFEFFFEFFFEFE)) 
    frame_ready_i_13
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I3(empty),
        .I4(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[8] ),
        .O(frame_ready_i_13_n_0));
  LUT6 #(
    .INIT(64'h5555555500010101)) 
    frame_ready_i_14
       (.I0(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[14] ),
        .I3(\FSM_onehot_current_state[15]_i_2_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I5(empty),
        .O(frame_ready_i_14_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    frame_ready_i_2
       (.I0(\state_counter[7]_i_5_n_0 ),
        .I1(frame_ready_i_7_n_0),
        .I2(\length_byte[7]_i_17_n_0 ),
        .O(frame_ready_i_2_n_0));
  LUT6 #(
    .INIT(64'h333333333333373F)) 
    frame_ready_i_3
       (.I0(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I1(\state_counter[7]_i_7_n_0 ),
        .I2(\length_byte[7]_i_13_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(frame_ready_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    frame_ready_i_4
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(frame_ready_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF00A8)) 
    frame_ready_i_5
       (.I0(frame_ready_i_8_n_0),
        .I1(\FSM_onehot_current_state[15]_i_2_n_0 ),
        .I2(\length_byte[7]_i_16_n_0 ),
        .I3(frame_ready_i_9_n_0),
        .I4(frame_ready_i_10_n_0),
        .I5(frame_ready_i_11_n_0),
        .O(frame_ready_i_5_n_0));
  LUT5 #(
    .INIT(32'hFF4F44F4)) 
    frame_ready_i_6
       (.I0(\length_byte[7]_i_5_n_0 ),
        .I1(frame_ready_i_12_n_0),
        .I2(frame_error_i_12_n_0),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .O(frame_ready_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
    frame_ready_i_7
       (.I0(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I1(frame_ready_i_13_n_0),
        .I2(\FSM_onehot_current_state[15]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .O(frame_ready_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEEE)) 
    frame_ready_i_8
       (.I0(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[15] ),
        .I2(\FSM_onehot_current_state[15]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state[12]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I5(\FSM_onehot_current_state[13]_i_1_n_0 ),
        .O(frame_ready_i_8_n_0));
  LUT4 #(
    .INIT(16'h0004)) 
    frame_ready_i_9
       (.I0(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .I1(frame_ready_i_14_n_0),
        .I2(\FSM_onehot_current_state[12]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state[15]_i_1_n_0 ),
        .O(frame_ready_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    frame_ready_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(frame_ready_i_1_n_0),
        .Q(\frame_ready_register_reg[0] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \func_byte[0]_i_1 
       (.I0(dout[0]),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\func_byte[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \func_byte[1]_i_1 
       (.I0(dout[1]),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\func_byte[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \func_byte[2]_i_1 
       (.I0(dout[2]),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\func_byte[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \func_byte[3]_i_1 
       (.I0(dout[3]),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\func_byte[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \func_byte[4]_i_1 
       (.I0(dout[4]),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\func_byte[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \func_byte[5]_i_1 
       (.I0(dout[5]),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\func_byte[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \func_byte[6]_i_1 
       (.I0(dout[6]),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\func_byte[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA8A8A888)) 
    \func_byte[7]_i_1 
       (.I0(\func_byte[7]_i_4_n_0 ),
        .I1(\func_byte[7]_i_5_n_0 ),
        .I2(\func_byte[7]_i_6_n_0 ),
        .I3(\func_byte[7]_i_7_n_0 ),
        .I4(\func_byte[7]_i_8_n_0 ),
        .O(\func_byte[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888F888FFFFFFFF)) 
    \func_byte[7]_i_10 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I2(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(empty),
        .I5(\length_byte[7]_i_11_n_0 ),
        .O(\func_byte[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAE0000)) 
    \func_byte[7]_i_2 
       (.I0(\func_byte[7]_i_8_n_0 ),
        .I1(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I2(\func_byte[7]_i_9_n_0 ),
        .I3(\func_byte[7]_i_10_n_0 ),
        .I4(\func_byte[7]_i_6_n_0 ),
        .I5(\func_byte[7]_i_5_n_0 ),
        .O(func_byte));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \func_byte[7]_i_3 
       (.I0(dout[7]),
        .I1(\length_byte[7]_i_10_n_0 ),
        .O(\func_byte[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \func_byte[7]_i_4 
       (.I0(\state_counter[7]_i_7_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(\length_byte[7]_i_14_n_0 ),
        .O(\func_byte[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFCF0F0F0E3)) 
    \func_byte[7]_i_5 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(\state_counter[7]_i_7_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .I4(\length_byte[7]_i_14_n_0 ),
        .I5(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .O(\func_byte[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF3F3F3F3F3F2F3F0)) 
    \func_byte[7]_i_6 
       (.I0(\length_byte[7]_i_15_n_0 ),
        .I1(\length_byte[7]_i_11_n_0 ),
        .I2(\state_counter[7]_i_7_n_0 ),
        .I3(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(\func_byte[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDFDD)) 
    \func_byte[7]_i_7 
       (.I0(\length_byte[7]_i_11_n_0 ),
        .I1(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .I2(\func_byte[7]_i_9_n_0 ),
        .I3(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .O(\func_byte[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFEEFFEEEE08EEEA)) 
    \func_byte[7]_i_8 
       (.I0(\length_byte[7]_i_16_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_current_state[3]_i_3_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I4(\frame_data_sum[7]_i_5_n_0 ),
        .I5(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .O(\func_byte[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000F1)) 
    \func_byte[7]_i_9 
       (.I0(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I2(empty),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I4(\length_byte[7]_i_16_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[9] ),
        .O(\func_byte[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \func_byte_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(func_byte),
        .D(\func_byte[0]_i_1_n_0 ),
        .Q(D[0]),
        .R(\func_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \func_byte_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(func_byte),
        .D(\func_byte[1]_i_1_n_0 ),
        .Q(D[1]),
        .R(\func_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \func_byte_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(func_byte),
        .D(\func_byte[2]_i_1_n_0 ),
        .Q(D[2]),
        .R(\func_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \func_byte_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(func_byte),
        .D(\func_byte[3]_i_1_n_0 ),
        .Q(D[3]),
        .R(\func_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \func_byte_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(func_byte),
        .D(\func_byte[4]_i_1_n_0 ),
        .Q(D[4]),
        .R(\func_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \func_byte_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(func_byte),
        .D(\func_byte[5]_i_1_n_0 ),
        .Q(D[5]),
        .R(\func_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \func_byte_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(func_byte),
        .D(\func_byte[6]_i_1_n_0 ),
        .Q(D[6]),
        .R(\func_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \func_byte_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(func_byte),
        .D(\func_byte[7]_i_3_n_0 ),
        .Q(D[7]),
        .R(\func_byte[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \length_byte[0]_i_1 
       (.I0(\length_byte[7]_i_10_n_0 ),
        .I1(dout[0]),
        .I2(\length_byte[7]_i_11_n_0 ),
        .O(\length_byte[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \length_byte[1]_i_1 
       (.I0(\length_byte[7]_i_10_n_0 ),
        .I1(dout[1]),
        .I2(\length_byte[7]_i_11_n_0 ),
        .O(\length_byte[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \length_byte[2]_i_1 
       (.I0(\length_byte[7]_i_10_n_0 ),
        .I1(dout[2]),
        .I2(\length_byte[7]_i_11_n_0 ),
        .O(\length_byte[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \length_byte[3]_i_1 
       (.I0(\length_byte[7]_i_10_n_0 ),
        .I1(dout[3]),
        .I2(\length_byte[7]_i_11_n_0 ),
        .O(\length_byte[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \length_byte[4]_i_1 
       (.I0(\length_byte[7]_i_10_n_0 ),
        .I1(dout[4]),
        .I2(\length_byte[7]_i_11_n_0 ),
        .O(\length_byte[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \length_byte[5]_i_1 
       (.I0(\length_byte[7]_i_10_n_0 ),
        .I1(dout[5]),
        .I2(\length_byte[7]_i_11_n_0 ),
        .O(\length_byte[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \length_byte[6]_i_1 
       (.I0(\length_byte[7]_i_10_n_0 ),
        .I1(dout[6]),
        .I2(\length_byte[7]_i_11_n_0 ),
        .O(\length_byte[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AABABBBB)) 
    \length_byte[7]_i_1 
       (.I0(\length_byte[7]_i_4_n_0 ),
        .I1(\length_byte[7]_i_5_n_0 ),
        .I2(\length_byte[7]_i_6_n_0 ),
        .I3(\length_byte[7]_i_7_n_0 ),
        .I4(\length_byte[7]_i_8_n_0 ),
        .I5(\length_byte[7]_i_9_n_0 ),
        .O(\length_byte[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \length_byte[7]_i_10 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .O(\length_byte[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055555155)) 
    \length_byte[7]_i_11 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_current_state[7]_i_2_n_0 ),
        .I2(\length_byte[7]_i_18_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(empty),
        .I5(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\length_byte[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \length_byte[7]_i_12 
       (.I0(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(\frame_data_sum[7]_i_10_n_0 ),
        .O(\length_byte[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \length_byte[7]_i_13 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\length_byte[7]_i_16_n_0 ),
        .O(\length_byte[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \length_byte[7]_i_14 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(empty),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(\length_byte[7]_i_18_n_0 ),
        .I4(\FSM_onehot_current_state[7]_i_2_n_0 ),
        .O(\length_byte[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \length_byte[7]_i_15 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_current_state[3]_i_2_n_0 ),
        .I2(empty),
        .O(\length_byte[7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \length_byte[7]_i_16 
       (.I0(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[15] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I3(\FSM_onehot_current_state[13]_i_5_n_0 ),
        .I4(\state_counter[7]_i_14_n_0 ),
        .O(\length_byte[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF2F)) 
    \length_byte[7]_i_17 
       (.I0(\FSM_onehot_current_state[12]_i_3_n_0 ),
        .I1(\FSM_onehot_current_state[12]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state[13]_i_5_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[15] ),
        .O(\length_byte[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \length_byte[7]_i_18 
       (.I0(dout[1]),
        .I1(dout[3]),
        .I2(dout[7]),
        .I3(dout[5]),
        .O(\length_byte[7]_i_18_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0075)) 
    \length_byte[7]_i_2 
       (.I0(\length_byte[7]_i_8_n_0 ),
        .I1(\length_byte[7]_i_7_n_0 ),
        .I2(\length_byte[7]_i_6_n_0 ),
        .I3(\length_byte[7]_i_5_n_0 ),
        .I4(\length_byte[7]_i_4_n_0 ),
        .O(length_byte_1));
  LUT3 #(
    .INIT(8'h40)) 
    \length_byte[7]_i_3 
       (.I0(\length_byte[7]_i_10_n_0 ),
        .I1(dout[7]),
        .I2(\length_byte[7]_i_11_n_0 ),
        .O(\length_byte[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA9A9A9A99)) 
    \length_byte[7]_i_4 
       (.I0(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I1(\length_byte[7]_i_12_n_0 ),
        .I2(empty),
        .I3(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I5(\length_byte[7]_i_13_n_0 ),
        .O(\length_byte[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100050007)) 
    \length_byte[7]_i_5 
       (.I0(\length_byte[7]_i_14_n_0 ),
        .I1(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I3(\state_counter[7]_i_7_n_0 ),
        .I4(\length_byte[7]_i_15_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\length_byte[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \length_byte[7]_i_6 
       (.I0(\frame_data_sum[7]_i_5_n_0 ),
        .I1(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .O(\length_byte[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100001155)) 
    \length_byte[7]_i_7 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I4(\length_byte[7]_i_16_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[9] ),
        .O(\length_byte[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100010003)) 
    \length_byte[7]_i_8 
       (.I0(\length_byte[7]_i_15_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I5(\state_counter[7]_i_7_n_0 ),
        .O(\length_byte[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \length_byte[7]_i_9 
       (.I0(\length_byte[7]_i_17_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I4(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .O(\length_byte[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \length_byte_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(length_byte_1),
        .D(\length_byte[0]_i_1_n_0 ),
        .Q(length_byte[0]),
        .R(\length_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \length_byte_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(length_byte_1),
        .D(\length_byte[1]_i_1_n_0 ),
        .Q(length_byte[1]),
        .R(\length_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \length_byte_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(length_byte_1),
        .D(\length_byte[2]_i_1_n_0 ),
        .Q(length_byte[2]),
        .R(\length_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \length_byte_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(length_byte_1),
        .D(\length_byte[3]_i_1_n_0 ),
        .Q(length_byte[3]),
        .R(\length_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \length_byte_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(length_byte_1),
        .D(\length_byte[4]_i_1_n_0 ),
        .Q(length_byte[4]),
        .R(\length_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \length_byte_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(length_byte_1),
        .D(\length_byte[5]_i_1_n_0 ),
        .Q(length_byte[5]),
        .R(\length_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \length_byte_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(length_byte_1),
        .D(\length_byte[6]_i_1_n_0 ),
        .Q(length_byte[6]),
        .R(\length_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \length_byte_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(length_byte_1),
        .D(\length_byte[7]_i_3_n_0 ),
        .Q(length_byte[7]),
        .R(\length_byte[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \param1_byte[0]_i_1 
       (.I0(param2_byte[0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(\param1_byte[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \param1_byte[1]_i_1 
       (.I0(param2_byte[1]),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(\param1_byte[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \param1_byte[2]_i_1 
       (.I0(param2_byte[2]),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(\param1_byte[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \param1_byte[3]_i_1 
       (.I0(param2_byte[3]),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(\param1_byte[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \param1_byte[4]_i_1 
       (.I0(param2_byte[4]),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(\param1_byte[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \param1_byte[5]_i_1 
       (.I0(param2_byte[5]),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(\param1_byte[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \param1_byte[6]_i_1 
       (.I0(param2_byte[6]),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(\param1_byte[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BAAABBBB)) 
    \param1_byte[7]_i_1 
       (.I0(\param2_byte[7]_i_4_n_0 ),
        .I1(\length_byte[7]_i_5_n_0 ),
        .I2(\length_byte[7]_i_6_n_0 ),
        .I3(\param2_byte[7]_i_5_n_0 ),
        .I4(\length_byte[7]_i_8_n_0 ),
        .I5(\param1_byte[7]_i_3_n_0 ),
        .O(\param1_byte[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \param1_byte[7]_i_2 
       (.I0(param2_byte[7]),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(\param1_byte[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \param1_byte[7]_i_3 
       (.I0(\length_byte[7]_i_17_n_0 ),
        .I1(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I4(\param1_byte[7]_i_4_n_0 ),
        .I5(\length_byte[7]_i_11_n_0 ),
        .O(\param1_byte[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000000F1)) 
    \param1_byte[7]_i_4 
       (.I0(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I2(empty),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .O(\param1_byte[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param1_byte_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\param1_byte[0]_i_1_n_0 ),
        .Q(param1_byte[0]),
        .R(\param1_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param1_byte_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\param1_byte[1]_i_1_n_0 ),
        .Q(param1_byte[1]),
        .R(\param1_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param1_byte_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\param1_byte[2]_i_1_n_0 ),
        .Q(param1_byte[2]),
        .R(\param1_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param1_byte_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\param1_byte[3]_i_1_n_0 ),
        .Q(param1_byte[3]),
        .R(\param1_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param1_byte_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\param1_byte[4]_i_1_n_0 ),
        .Q(param1_byte[4]),
        .R(\param1_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param1_byte_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\param1_byte[5]_i_1_n_0 ),
        .Q(param1_byte[5]),
        .R(\param1_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param1_byte_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\param1_byte[6]_i_1_n_0 ),
        .Q(param1_byte[6]),
        .R(\param1_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param1_byte_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\param1_byte[7]_i_2_n_0 ),
        .Q(param1_byte[7]),
        .R(\param1_byte[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8A8888888A8A8A8A)) 
    \param2_byte[7]_i_1 
       (.I0(\param2_byte[7]_i_3_n_0 ),
        .I1(\param2_byte[7]_i_4_n_0 ),
        .I2(\length_byte[7]_i_5_n_0 ),
        .I3(\length_byte[7]_i_6_n_0 ),
        .I4(\param2_byte[7]_i_5_n_0 ),
        .I5(\length_byte[7]_i_8_n_0 ),
        .O(\param2_byte[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF00D5)) 
    \param2_byte[7]_i_2 
       (.I0(\length_byte[7]_i_8_n_0 ),
        .I1(\param2_byte[7]_i_5_n_0 ),
        .I2(\length_byte[7]_i_6_n_0 ),
        .I3(\length_byte[7]_i_5_n_0 ),
        .I4(\param2_byte[7]_i_4_n_0 ),
        .O(param1_byte_2));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
    \param2_byte[7]_i_3 
       (.I0(\length_byte[7]_i_17_n_0 ),
        .I1(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I3(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\param2_byte[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hAAA9)) 
    \param2_byte[7]_i_4 
       (.I0(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I1(\param2_byte[7]_i_6_n_0 ),
        .I2(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .I3(\length_byte[7]_i_16_n_0 ),
        .O(\param2_byte[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFEEE)) 
    \param2_byte[7]_i_5 
       (.I0(\length_byte[7]_i_16_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .O(\param2_byte[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \param2_byte[7]_i_6 
       (.I0(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\frame_data_sum[7]_i_10_n_0 ),
        .O(\param2_byte[7]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param2_byte_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\length_byte[0]_i_1_n_0 ),
        .Q(param2_byte[0]),
        .R(\param2_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param2_byte_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\length_byte[1]_i_1_n_0 ),
        .Q(param2_byte[1]),
        .R(\param2_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param2_byte_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\length_byte[2]_i_1_n_0 ),
        .Q(param2_byte[2]),
        .R(\param2_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param2_byte_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\length_byte[3]_i_1_n_0 ),
        .Q(param2_byte[3]),
        .R(\param2_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param2_byte_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\length_byte[4]_i_1_n_0 ),
        .Q(param2_byte[4]),
        .R(\param2_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param2_byte_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\length_byte[5]_i_1_n_0 ),
        .Q(param2_byte[5]),
        .R(\param2_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param2_byte_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\length_byte[6]_i_1_n_0 ),
        .Q(param2_byte[6]),
        .R(\param2_byte[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param2_byte_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(param1_byte_2),
        .D(\length_byte[7]_i_3_n_0 ),
        .Q(param2_byte[7]),
        .R(\param2_byte[7]_i_1_n_0 ));
  (* LOPT_BUFG_CLOCK *) 
  BUFG rd_clk_BUFG_inst
       (.I(\^rd_clk ),
        .O(rd_clk_BUFG));
  FDRE #(
    .INIT(1'b0)) 
    \spi_cs_end_register_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\CSr_reg[2] ),
        .Q(spi_cs_end_register),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_cs_end_register_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_cs_end_register),
        .Q(\FSM_onehot_current_state_reg[0]_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h001111F1)) 
    \state_counter[0]_i_1 
       (.I0(state_counter[0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(dout[0]),
        .I3(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .O(\state_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000041414141FF41)) 
    \state_counter[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(state_counter[0]),
        .I2(state_counter[1]),
        .I3(dout[1]),
        .I4(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .O(\state_counter[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \state_counter[2]_i_1 
       (.I0(\state_counter[7]_i_4_n_0 ),
        .I1(\state_counter[2]_i_2_n_0 ),
        .I2(state_counter_3),
        .I3(state_counter[2]),
        .O(\state_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFC3FFC3AAFF)) 
    \state_counter[2]_i_2 
       (.I0(dout[2]),
        .I1(state_counter[2]),
        .I2(\state_counter[2]_i_3_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I4(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .O(\state_counter[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state_counter[2]_i_3 
       (.I0(state_counter[1]),
        .I1(state_counter[0]),
        .O(\state_counter[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000041414141FF41)) 
    \state_counter[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(\state_counter[3]_i_2_n_0 ),
        .I2(state_counter[3]),
        .I3(dout[3]),
        .I4(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .O(\state_counter[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \state_counter[3]_i_2 
       (.I0(state_counter[2]),
        .I1(state_counter[0]),
        .I2(state_counter[1]),
        .O(\state_counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h023F02020202023F)) 
    \state_counter[4]_i_1 
       (.I0(dout[4]),
        .I1(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I4(\state_counter[4]_i_2_n_0 ),
        .I5(state_counter[4]),
        .O(\state_counter[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \state_counter[4]_i_2 
       (.I0(state_counter[3]),
        .I1(state_counter[1]),
        .I2(state_counter[0]),
        .I3(state_counter[2]),
        .O(\state_counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000041414141FF41)) 
    \state_counter[5]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(\state_counter[5]_i_2_n_0 ),
        .I2(state_counter[5]),
        .I3(dout[5]),
        .I4(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .O(\state_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state_counter[5]_i_2 
       (.I0(state_counter[4]),
        .I1(state_counter[2]),
        .I2(state_counter[0]),
        .I3(state_counter[1]),
        .I4(state_counter[3]),
        .O(\state_counter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000041414141FF41)) 
    \state_counter[6]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_current_state[11]_i_2_n_0 ),
        .I2(state_counter[6]),
        .I3(dout[6]),
        .I4(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .O(\state_counter[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA0002)) 
    \state_counter[7]_i_1 
       (.I0(state_counter_3),
        .I1(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I4(\state_counter[7]_i_4_n_0 ),
        .O(\state_counter[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state_counter[7]_i_10 
       (.I0(state_counter[6]),
        .I1(state_counter[4]),
        .I2(\state_counter[3]_i_2_n_0 ),
        .I3(state_counter[3]),
        .I4(state_counter[5]),
        .O(\state_counter[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h000000AB)) 
    \state_counter[7]_i_11 
       (.I0(empty),
        .I1(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(\length_byte[7]_i_16_n_0 ),
        .I4(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .O(\state_counter[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h4445)) 
    \state_counter[7]_i_12 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(empty),
        .I2(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[8] ),
        .O(\state_counter[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \state_counter[7]_i_13 
       (.I0(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\state_counter[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF2F2F2F2F0F0F000)) 
    \state_counter[7]_i_14 
       (.I0(\FSM_onehot_current_state[7]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state[7]_i_3_n_0 ),
        .I2(empty),
        .I3(\state_counter[7]_i_23_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[6] ),
        .O(\state_counter[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hA8AA)) 
    \state_counter[7]_i_15 
       (.I0(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I1(\FSM_onehot_current_state[13]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state[13]_i_3_n_0 ),
        .I3(\FSM_onehot_current_state[13]_i_4_n_0 ),
        .O(\state_counter[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAAAAFFFFFFFF)) 
    \state_counter[7]_i_16 
       (.I0(\FSM_onehot_current_state_reg_n_0_[15] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_current_state[13]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state[13]_i_3_n_0 ),
        .I4(\FSM_onehot_current_state[13]_i_4_n_0 ),
        .I5(\FSM_onehot_current_state[13]_i_5_n_0 ),
        .O(\state_counter[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAEEAE)) 
    \state_counter[7]_i_17 
       (.I0(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_current_state[7]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state[7]_i_3_n_0 ),
        .I4(empty),
        .I5(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .O(\state_counter[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hFEAAFFFFFEAAFFFE)) 
    \state_counter[7]_i_18 
       (.I0(\FSM_onehot_current_state_reg_n_0_[15] ),
        .I1(\state_counter[7]_i_15_n_0 ),
        .I2(\state_counter[7]_i_14_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I4(\frame_data_sum[7]_i_9_n_0 ),
        .I5(empty),
        .O(\state_counter[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFAE)) 
    \state_counter[7]_i_19 
       (.I0(\state_counter[7]_i_14_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_current_state[15]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[15] ),
        .I4(\FSM_onehot_current_state[13]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(\state_counter[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55750000)) 
    \state_counter[7]_i_2 
       (.I0(\state_counter[7]_i_5_n_0 ),
        .I1(\state_counter[7]_i_6_n_0 ),
        .I2(\state_counter[7]_i_7_n_0 ),
        .I3(\state_counter[7]_i_8_n_0 ),
        .I4(\func_byte[7]_i_6_n_0 ),
        .I5(\state_counter[7]_i_9_n_0 ),
        .O(state_counter_3));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \state_counter[7]_i_20 
       (.I0(\state_counter[7]_i_14_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_current_state[13]_i_5_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(\state_counter[7]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \state_counter[7]_i_21 
       (.I0(\FSM_onehot_current_state[10]_i_1_n_0 ),
        .I1(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I3(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(\state_counter[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEFE)) 
    \state_counter[7]_i_22 
       (.I0(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .I1(\state_counter[7]_i_14_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I3(\FSM_onehot_current_state[15]_i_2_n_0 ),
        .I4(\state_counter[7]_i_16_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[13] ),
        .O(\state_counter[7]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state_counter[7]_i_23 
       (.I0(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .O(\state_counter[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h000002AA03C3C3EB)) 
    \state_counter[7]_i_3 
       (.I0(dout[7]),
        .I1(state_counter[7]),
        .I2(\state_counter[7]_i_10_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\state_counter[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \state_counter[7]_i_4 
       (.I0(\frame_data_sum[7]_i_10_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I3(\state_counter[7]_i_11_n_0 ),
        .O(\state_counter[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \state_counter[7]_i_5 
       (.I0(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .I1(\length_byte[7]_i_14_n_0 ),
        .O(\state_counter[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000004FF00000404)) 
    \state_counter[7]_i_6 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(\state_counter[7]_i_12_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .I4(\length_byte[7]_i_16_n_0 ),
        .I5(\state_counter[7]_i_13_n_0 ),
        .O(\state_counter[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state_counter[7]_i_7 
       (.I0(\state_counter[7]_i_14_n_0 ),
        .I1(\state_counter[7]_i_15_n_0 ),
        .I2(\state_counter[7]_i_16_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I4(\state_counter[7]_i_17_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\state_counter[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h000000001555FFFF)) 
    \state_counter[7]_i_8 
       (.I0(\FSM_onehot_current_state[11]_i_1_n_0 ),
        .I1(\state_counter[7]_i_18_n_0 ),
        .I2(\state_counter[7]_i_19_n_0 ),
        .I3(\state_counter[7]_i_20_n_0 ),
        .I4(\length_byte[7]_i_16_n_0 ),
        .I5(\state_counter[7]_i_21_n_0 ),
        .O(\state_counter[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0001)) 
    \state_counter[7]_i_9 
       (.I0(\func_byte[7]_i_10_n_0 ),
        .I1(\FSM_onehot_current_state[9]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .I3(\state_counter[7]_i_22_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .O(\state_counter[7]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(state_counter_3),
        .D(\state_counter[0]_i_1_n_0 ),
        .Q(state_counter[0]),
        .R(\state_counter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(state_counter_3),
        .D(\state_counter[1]_i_1_n_0 ),
        .Q(state_counter[1]),
        .R(\state_counter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\state_counter[2]_i_1_n_0 ),
        .Q(state_counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \state_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(state_counter_3),
        .D(\state_counter[3]_i_1_n_0 ),
        .Q(state_counter[3]),
        .R(\state_counter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(state_counter_3),
        .D(\state_counter[4]_i_1_n_0 ),
        .Q(state_counter[4]),
        .R(\state_counter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(state_counter_3),
        .D(\state_counter[5]_i_1_n_0 ),
        .Q(state_counter[5]),
        .R(\state_counter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(state_counter_3),
        .D(\state_counter[6]_i_1_n_0 ),
        .Q(state_counter[6]),
        .R(\state_counter[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(state_counter_3),
        .D(\state_counter[7]_i_3_n_0 ),
        .Q(state_counter[7]),
        .R(\state_counter[7]_i_1_n_0 ));
endmodule

module spi_frame_encoder
   (spi_frame_end,
    adc_fifo_rd_en_reg,
    adc_fifo_rd_clk_reg,
    spi_sent_data,
    clk_IBUF_BUFG,
    \SCKr_reg[2] ,
    \spi_cs_end_register_reg[1] ,
    \func_byte_reg[0] ,
    param_byte,
    fifo_data,
    fifo_select,
    rst_n,
    D,
    spi_cs_start);
  output spi_frame_end;
  output adc_fifo_rd_en_reg;
  output adc_fifo_rd_clk_reg;
  output [7:0]spi_sent_data;
  input clk_IBUF_BUFG;
  input \SCKr_reg[2] ;
  input [0:0]\spi_cs_end_register_reg[1] ;
  input \func_byte_reg[0] ;
  input [7:0]param_byte;
  input [7:0]fifo_data;
  input [0:0]fifo_select;
  input rst_n;
  input [0:0]D;
  input spi_cs_start;

  wire [0:0]D;
  wire \FSM_onehot_current_state[0]_i_1__0_n_0 ;
  wire \FSM_onehot_current_state[12]_i_1__0_n_0 ;
  wire \FSM_onehot_current_state[13]_i_1__0_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1__0_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_1__0_n_0 ;
  wire \FSM_onehot_current_state[4]_i_1_n_0 ;
  wire \FSM_onehot_current_state[5]_i_1__0_n_0 ;
  wire \FSM_onehot_current_state[5]_i_3_n_0 ;
  wire \FSM_onehot_current_state[7]_i_1__0_n_0 ;
  wire \FSM_onehot_current_state[8]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[10] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[11] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[12] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[13] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[14] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[15] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[1] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[2] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[3] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[4] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[5] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[6] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[7] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[8] ;
  (* RTL_KEEP = "yes" *) wire \FSM_onehot_current_state_reg_n_0_[9] ;
  wire \SCKr_reg[2] ;
  wire adc_fifo_rd_clk_reg;
  wire adc_fifo_rd_en_reg;
  wire clk_IBUF_BUFG;
  wire [7:0]fifo_data;
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
  wire fifo_rd_en_i_10_n_0;
  wire fifo_rd_en_i_1__0_n_0;
  wire fifo_rd_en_i_2__0_n_0;
  wire fifo_rd_en_i_3__0_n_0;
  wire fifo_rd_en_i_5_n_0;
  wire fifo_rd_en_i_6__0_n_0;
  wire fifo_rd_en_i_7__0_n_0;
  wire fifo_rd_en_i_8_n_0;
  wire fifo_rd_en_i_9_n_0;
  wire [0:0]fifo_select;
  wire \func_byte_reg[0] ;
  wire [7:0]param_byte;
  wire rst_n;
  wire [0:0]\spi_cs_end_register_reg[1] ;
  wire spi_cs_start;
  wire [1:1]spi_cs_start_reg;
  wire \spi_cs_start_reg_reg_n_0_[0] ;
  wire spi_frame_end;
  wire spi_frame_end_i_10_n_0;
  wire spi_frame_end_i_11_n_0;
  wire spi_frame_end_i_1_n_0;
  wire spi_frame_end_i_2_n_0;
  wire spi_frame_end_i_3_n_0;
  wire spi_frame_end_i_4_n_0;
  wire spi_frame_end_i_5_n_0;
  wire spi_frame_end_i_6_n_0;
  wire spi_frame_end_i_7_n_0;
  wire spi_frame_end_i_8_n_0;
  wire spi_frame_end_i_9_n_0;
  wire [2:0]spi_func_ready_reg;
  wire [7:0]spi_sent_data;
  wire \spi_sent_data[0]_i_1_n_0 ;
  wire \spi_sent_data[0]_i_2_n_0 ;
  wire \spi_sent_data[0]_i_3_n_0 ;
  wire \spi_sent_data[0]_i_4_n_0 ;
  wire \spi_sent_data[0]_i_5_n_0 ;
  wire \spi_sent_data[0]_i_6_n_0 ;
  wire \spi_sent_data[1]_i_1_n_0 ;
  wire \spi_sent_data[2]_i_1_n_0 ;
  wire \spi_sent_data[2]_i_2_n_0 ;
  wire \spi_sent_data[3]_i_1_n_0 ;
  wire \spi_sent_data[4]_i_1_n_0 ;
  wire \spi_sent_data[4]_i_2_n_0 ;
  wire \spi_sent_data[5]_i_1_n_0 ;
  wire \spi_sent_data[6]_i_10_n_0 ;
  wire \spi_sent_data[6]_i_11_n_0 ;
  wire \spi_sent_data[6]_i_12_n_0 ;
  wire \spi_sent_data[6]_i_13_n_0 ;
  wire \spi_sent_data[6]_i_14_n_0 ;
  wire \spi_sent_data[6]_i_2_n_0 ;
  wire \spi_sent_data[6]_i_3_n_0 ;
  wire \spi_sent_data[6]_i_4_n_0 ;
  wire \spi_sent_data[6]_i_5_n_0 ;
  wire \spi_sent_data[6]_i_6_n_0 ;
  wire \spi_sent_data[6]_i_7_n_0 ;
  wire \spi_sent_data[6]_i_8_n_0 ;
  wire \spi_sent_data[6]_i_9_n_0 ;
  wire \spi_sent_data[7]_i_1_n_0 ;
  wire \spi_sent_data[7]_i_2_n_0 ;
  wire \spi_sent_data[7]_i_3_n_0 ;
  wire \spi_sent_data[7]_i_4_n_0 ;
  wire \spi_sent_data[7]_i_5_n_0 ;
  wire \spi_sent_data[7]_i_6_n_0 ;
  wire \spi_sent_data[7]_i_7_n_0 ;
  wire \spi_sent_data[7]_i_8_n_0 ;
  wire spi_sent_data_0;
  wire [2:1]spi_sent_start_reg;
  wire \spi_sent_start_reg_reg[0]_srl2_n_0 ;
  wire state_counter;
  wire \state_counter[0]_i_1_n_0 ;
  wire \state_counter[1]_i_1_n_0 ;
  wire \state_counter[2]_i_1_n_0 ;
  wire \state_counter[2]_i_3__0_n_0 ;
  wire \state_counter_reg_n_0_[0] ;
  wire \state_counter_reg_n_0_[1] ;
  wire \state_counter_reg_n_0_[2] ;
  wire tx_fifo_rd_clk;
  wire tx_fifo_rd_en;

  LUT4 #(
    .INIT(16'hFBAA)) 
    \FSM_onehot_current_state[0]_i_1__0 
       (.I0(\FSM_onehot_current_state_reg_n_0_[15] ),
        .I1(spi_func_ready_reg[1]),
        .I2(spi_func_ready_reg[2]),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF4044)) 
    \FSM_onehot_current_state[12]_i_1__0 
       (.I0(\spi_cs_end_register_reg[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I2(spi_sent_start_reg[2]),
        .I3(spi_sent_start_reg[1]),
        .I4(\FSM_onehot_current_state_reg_n_0_[11] ),
        .O(\FSM_onehot_current_state[12]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hB000)) 
    \FSM_onehot_current_state[13]_i_1__0 
       (.I0(spi_sent_start_reg[2]),
        .I1(spi_sent_start_reg[1]),
        .I2(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I3(\spi_cs_end_register_reg[1] ),
        .O(\FSM_onehot_current_state[13]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h2020FF20)) 
    \FSM_onehot_current_state[1]_i_1__0 
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(spi_func_ready_reg[2]),
        .I2(spi_func_ready_reg[1]),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(spi_cs_start_reg),
        .O(\FSM_onehot_current_state[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hF888F8F8)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(spi_cs_start_reg),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(spi_sent_start_reg[2]),
        .I4(spi_sent_start_reg[1]),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \FSM_onehot_current_state[3]_i_1__0 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(spi_sent_start_reg[1]),
        .I2(spi_sent_start_reg[2]),
        .I3(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\FSM_onehot_current_state[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(spi_sent_start_reg[1]),
        .I2(spi_sent_start_reg[2]),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\FSM_onehot_current_state[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \FSM_onehot_current_state[5]_i_2__0 
       (.I0(\state_counter_reg_n_0_[1] ),
        .I1(\state_counter_reg_n_0_[0] ),
        .I2(\state_counter_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I4(\FSM_onehot_current_state[5]_i_3_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\FSM_onehot_current_state[5]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[5]_i_3 
       (.I0(spi_sent_start_reg[1]),
        .I1(spi_sent_start_reg[2]),
        .O(\FSM_onehot_current_state[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_current_state[7]_i_1__0 
       (.I0(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I1(\state_counter_reg_n_0_[2] ),
        .I2(\state_counter_reg_n_0_[0] ),
        .I3(\state_counter_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[7]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFF20)) 
    \FSM_onehot_current_state[8]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I1(spi_sent_start_reg[2]),
        .I2(spi_sent_start_reg[1]),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\FSM_onehot_current_state[8]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1__0_n_0 ),
        .PRE(rst_n),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[12]_i_1__0_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[12] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[13]_i_1__0_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[13] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state_reg_n_0_[13] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[14] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state_reg_n_0_[14] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[15] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[1]_i_1__0_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[3]_i_1__0_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[7]_i_1__0_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "S09:0000001000000000,S08:0000000100000000,S11:0000100000000000,S02:0000000000000100,S13:0010000000000000,S05:0000000000100000,S07:0000000010000000,S01:0000000000000010,S12:0001000000000000,S00:0000000000000001,S15:1000000000000000,S04:0000000000010000,S03:0000000000001000,S14:0100000000000000,S10:0000010000000000,S06:0000000001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(\FSM_onehot_current_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[9] ));
  LUT2 #(
    .INIT(4'h8)) 
    adc_fifo_rd_clk_i_1
       (.I0(tx_fifo_rd_clk),
        .I1(fifo_select),
        .O(adc_fifo_rd_clk_reg));
  LUT2 #(
    .INIT(4'h8)) 
    adc_fifo_rd_en_i_1
       (.I0(tx_fifo_rd_en),
        .I1(fifo_select),
        .O(adc_fifo_rd_en_reg));
  LUT6 #(
    .INIT(64'hAAEFEFAAAA2020AA)) 
    fifo_rd_clk_i_1
       (.I0(fifo_rd_clk_i_2_n_0),
        .I1(fifo_rd_clk_i_3_n_0),
        .I2(fifo_rd_clk_i_4_n_0),
        .I3(fifo_rd_clk_i_5_n_0),
        .I4(\spi_sent_data[0]_i_2_n_0 ),
        .I5(tx_fifo_rd_clk),
        .O(fifo_rd_clk_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000080000)) 
    fifo_rd_clk_i_2
       (.I0(fifo_rd_clk_i_6_n_0),
        .I1(\spi_sent_data[6]_i_11_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[14] ),
        .I3(\FSM_onehot_current_state[13]_i_1__0_n_0 ),
        .I4(\spi_sent_data[7]_i_8_n_0 ),
        .I5(\spi_sent_data[6]_i_4_n_0 ),
        .O(fifo_rd_clk_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000015)) 
    fifo_rd_clk_i_3
       (.I0(fifo_rd_clk_i_7_n_0),
        .I1(\FSM_onehot_current_state[13]_i_1__0_n_0 ),
        .I2(\FSM_onehot_current_state[7]_i_1__0_n_0 ),
        .I3(\FSM_onehot_current_state[3]_i_1__0_n_0 ),
        .I4(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I5(fifo_rd_clk_i_8_n_0),
        .O(fifo_rd_clk_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFD4FFFFFFFFFFFF)) 
    fifo_rd_clk_i_4
       (.I0(\spi_sent_data[0]_i_3_n_0 ),
        .I1(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state[3]_i_1__0_n_0 ),
        .I3(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I4(\spi_sent_data[6]_i_12_n_0 ),
        .I5(\spi_sent_data[6]_i_14_n_0 ),
        .O(fifo_rd_clk_i_4_n_0));
  LUT6 #(
    .INIT(64'h000000000000FFFD)) 
    fifo_rd_clk_i_5
       (.I0(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I1(\state_counter_reg_n_0_[2] ),
        .I2(\state_counter_reg_n_0_[0] ),
        .I3(\state_counter_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state[13]_i_1__0_n_0 ),
        .I5(fifo_rd_clk_i_9_n_0),
        .O(fifo_rd_clk_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000400040449)) 
    fifo_rd_clk_i_6
       (.I0(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I1(\spi_sent_data[6]_i_10_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[10] ),
        .O(fifo_rd_clk_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    fifo_rd_clk_i_7
       (.I0(\spi_sent_data[0]_i_3_n_0 ),
        .I1(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I2(\spi_sent_data[7]_i_8_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[14] ),
        .O(fifo_rd_clk_i_7_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    fifo_rd_clk_i_8
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(\spi_sent_data[6]_i_10_n_0 ),
        .O(fifo_rd_clk_i_8_n_0));
  LUT6 #(
    .INIT(64'hFFFFFBFFF3F3FBF3)) 
    fifo_rd_clk_i_9
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\spi_sent_data[0]_i_3_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I3(spi_sent_start_reg[1]),
        .I4(spi_sent_start_reg[2]),
        .I5(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(fifo_rd_clk_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_rd_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(fifo_rd_clk_i_1_n_0),
        .Q(tx_fifo_rd_clk),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    fifo_rd_en_i_10
       (.I0(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .O(fifo_rd_en_i_10_n_0));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    fifo_rd_en_i_1__0
       (.I0(fifo_rd_en_i_2__0_n_0),
        .I1(\spi_sent_data[0]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state[7]_i_1__0_n_0 ),
        .I3(fifo_rd_en_i_3__0_n_0),
        .I4(fifo_rd_en),
        .I5(tx_fifo_rd_en),
        .O(fifo_rd_en_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    fifo_rd_en_i_2__0
       (.I0(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I1(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I2(\state_counter[2]_i_3__0_n_0 ),
        .I3(\FSM_onehot_current_state[13]_i_1__0_n_0 ),
        .O(fifo_rd_en_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h00000004)) 
    fifo_rd_en_i_3__0
       (.I0(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I1(\spi_sent_data[6]_i_10_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[14] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(fifo_rd_en_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBB2B2)) 
    fifo_rd_en_i_4__0
       (.I0(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I1(\spi_sent_data[0]_i_3_n_0 ),
        .I2(\FSM_onehot_current_state[3]_i_1__0_n_0 ),
        .I3(fifo_rd_en_i_5_n_0),
        .I4(fifo_rd_en_i_6__0_n_0),
        .I5(fifo_rd_en_i_7__0_n_0),
        .O(fifo_rd_en));
  LUT6 #(
    .INIT(64'hFFCFFF0EFFFFFFCF)) 
    fifo_rd_en_i_5
       (.I0(fifo_rd_en_i_8_n_0),
        .I1(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I2(\spi_sent_data[6]_i_14_n_0 ),
        .I3(\FSM_onehot_current_state[7]_i_1__0_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I5(\spi_sent_data[6]_i_10_n_0 ),
        .O(fifo_rd_en_i_5_n_0));
  LUT3 #(
    .INIT(8'hBF)) 
    fifo_rd_en_i_6__0
       (.I0(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I1(\spi_sent_data[6]_i_12_n_0 ),
        .I2(\spi_sent_data[6]_i_14_n_0 ),
        .O(fifo_rd_en_i_6__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h55565555)) 
    fifo_rd_en_i_7__0
       (.I0(\spi_sent_data[0]_i_2_n_0 ),
        .I1(\state_counter[2]_i_3__0_n_0 ),
        .I2(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I3(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I4(fifo_rd_en_i_3__0_n_0),
        .O(fifo_rd_en_i_7__0_n_0));
  LUT6 #(
    .INIT(64'h00000000FBB3FFFF)) 
    fifo_rd_en_i_8
       (.I0(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I1(\spi_sent_data[7]_i_8_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I4(\spi_sent_data[7]_i_4_n_0 ),
        .I5(fifo_rd_en_i_9_n_0),
        .O(fifo_rd_en_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000223)) 
    fifo_rd_en_i_9
       (.I0(\spi_sent_data[7]_i_8_n_0 ),
        .I1(fifo_rd_en_i_10_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[14] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I5(\FSM_onehot_current_state[13]_i_1__0_n_0 ),
        .O(fifo_rd_en_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    fifo_rd_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(fifo_rd_en_i_1__0_n_0),
        .Q(tx_fifo_rd_en),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_cs_start_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_cs_start),
        .Q(\spi_cs_start_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_cs_start_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\spi_cs_start_reg_reg_n_0_[0] ),
        .Q(spi_cs_start_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBABAABA88A8AA8A)) 
    spi_frame_end_i_1
       (.I0(spi_frame_end_i_2_n_0),
        .I1(spi_frame_end_i_3_n_0),
        .I2(spi_frame_end_i_4_n_0),
        .I3(spi_frame_end_i_5_n_0),
        .I4(\spi_sent_data[0]_i_2_n_0 ),
        .I5(spi_frame_end),
        .O(spi_frame_end_i_1_n_0));
  LUT5 #(
    .INIT(32'hFDFFD5FF)) 
    spi_frame_end_i_10
       (.I0(\spi_sent_data[7]_i_4_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I3(\spi_sent_data[7]_i_8_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[10] ),
        .O(spi_frame_end_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000004440004)) 
    spi_frame_end_i_11
       (.I0(fifo_rd_clk_i_8_n_0),
        .I1(\spi_sent_data[6]_i_11_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I3(\FSM_onehot_current_state[13]_i_1__0_n_0 ),
        .I4(\spi_sent_data[7]_i_8_n_0 ),
        .I5(\FSM_onehot_current_state_reg_n_0_[14] ),
        .O(spi_frame_end_i_11_n_0));
  LUT5 #(
    .INIT(32'h08000000)) 
    spi_frame_end_i_2
       (.I0(fifo_rd_en_i_2__0_n_0),
        .I1(\spi_sent_data[0]_i_2_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[14] ),
        .I4(spi_frame_end_i_4_n_0),
        .O(spi_frame_end_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFDFFF0FDF00)) 
    spi_frame_end_i_3
       (.I0(spi_frame_end_i_6_n_0),
        .I1(spi_frame_end_i_7_n_0),
        .I2(\spi_sent_data[0]_i_3_n_0 ),
        .I3(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I4(\FSM_onehot_current_state[3]_i_1__0_n_0 ),
        .I5(fifo_rd_en_i_6__0_n_0),
        .O(spi_frame_end_i_3_n_0));
  LUT6 #(
    .INIT(64'h0202000202020202)) 
    spi_frame_end_i_4
       (.I0(\spi_sent_data[6]_i_11_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I3(spi_sent_start_reg[1]),
        .I4(spi_sent_start_reg[2]),
        .I5(\FSM_onehot_current_state_reg_n_0_[12] ),
        .O(spi_frame_end_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    spi_frame_end_i_5
       (.I0(\spi_sent_data[0]_i_3_n_0 ),
        .I1(\spi_sent_data[7]_i_8_n_0 ),
        .I2(spi_frame_end_i_8_n_0),
        .I3(spi_frame_end_i_9_n_0),
        .I4(\FSM_onehot_current_state[13]_i_1__0_n_0 ),
        .I5(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .O(spi_frame_end_i_5_n_0));
  LUT6 #(
    .INIT(64'hCFCCFFCFCCCCCDCC)) 
    spi_frame_end_i_6
       (.I0(spi_frame_end_i_10_n_0),
        .I1(spi_frame_end_i_11_n_0),
        .I2(\FSM_onehot_current_state[7]_i_1__0_n_0 ),
        .I3(\spi_sent_data[6]_i_10_n_0 ),
        .I4(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I5(\spi_sent_data[6]_i_14_n_0 ),
        .O(spi_frame_end_i_6_n_0));
  LUT3 #(
    .INIT(8'h2A)) 
    spi_frame_end_i_7
       (.I0(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I1(\spi_sent_data[6]_i_14_n_0 ),
        .I2(\spi_sent_data[6]_i_12_n_0 ),
        .O(spi_frame_end_i_7_n_0));
  LUT5 #(
    .INIT(32'h00003533)) 
    spi_frame_end_i_8
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(spi_sent_start_reg[2]),
        .I3(spi_sent_start_reg[1]),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(spi_frame_end_i_8_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    spi_frame_end_i_9
       (.I0(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[10] ),
        .O(spi_frame_end_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_frame_end_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_frame_end_i_1_n_0),
        .Q(spi_frame_end),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_func_ready_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D),
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
    .INIT(64'h000000000000008E)) 
    \spi_sent_data[0]_i_1 
       (.I0(\spi_sent_data[0]_i_2_n_0 ),
        .I1(\spi_sent_data[0]_i_3_n_0 ),
        .I2(\spi_sent_data[0]_i_4_n_0 ),
        .I3(\spi_sent_data[0]_i_5_n_0 ),
        .I4(\spi_sent_data[6]_i_3_n_0 ),
        .I5(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .O(\spi_sent_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBB0BBBBB)) 
    \spi_sent_data[0]_i_2 
       (.I0(spi_cs_start_reg),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(spi_func_ready_reg[1]),
        .I3(spi_func_ready_reg[2]),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\spi_sent_data[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h002F2F2F)) 
    \spi_sent_data[0]_i_3 
       (.I0(spi_sent_start_reg[1]),
        .I1(spi_sent_start_reg[2]),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I4(spi_cs_start_reg),
        .O(\spi_sent_data[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFDDFDFFDFDDDD)) 
    \spi_sent_data[0]_i_4 
       (.I0(\spi_sent_data[7]_i_8_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I2(spi_sent_start_reg[1]),
        .I3(spi_sent_start_reg[2]),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\spi_sent_data[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3FEE000000000000)) 
    \spi_sent_data[0]_i_5 
       (.I0(\spi_sent_data[0]_i_6_n_0 ),
        .I1(\FSM_onehot_current_state[3]_i_1__0_n_0 ),
        .I2(\func_byte_reg[0] ),
        .I3(\spi_sent_data[7]_i_6_n_0 ),
        .I4(\spi_sent_data[0]_i_3_n_0 ),
        .I5(\spi_sent_data[0]_i_2_n_0 ),
        .O(\spi_sent_data[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7077)) 
    \spi_sent_data[0]_i_6 
       (.I0(\spi_sent_data[7]_i_8_n_0 ),
        .I1(param_byte[0]),
        .I2(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I3(fifo_data[0]),
        .O(\spi_sent_data[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \spi_sent_data[1]_i_1 
       (.I0(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I1(fifo_data[1]),
        .I2(\spi_sent_data[7]_i_8_n_0 ),
        .I3(param_byte[1]),
        .O(\spi_sent_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_sent_data[2]_i_1 
       (.I0(\spi_sent_data[6]_i_8_n_0 ),
        .I1(\spi_sent_data[2]_i_2_n_0 ),
        .O(\spi_sent_data[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5FF0FF3FFF0FFFFF)) 
    \spi_sent_data[2]_i_2 
       (.I0(param_byte[2]),
        .I1(fifo_data[2]),
        .I2(\spi_sent_data[0]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I4(\spi_sent_data[7]_i_8_n_0 ),
        .I5(\spi_sent_data[0]_i_3_n_0 ),
        .O(\spi_sent_data[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \spi_sent_data[3]_i_1 
       (.I0(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I1(fifo_data[3]),
        .I2(\spi_sent_data[7]_i_8_n_0 ),
        .I3(param_byte[3]),
        .O(\spi_sent_data[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \spi_sent_data[4]_i_1 
       (.I0(\spi_sent_data[6]_i_8_n_0 ),
        .I1(\spi_sent_data[4]_i_2_n_0 ),
        .O(\spi_sent_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5FF0FF3FFF0FFFFF)) 
    \spi_sent_data[4]_i_2 
       (.I0(param_byte[4]),
        .I1(fifo_data[4]),
        .I2(\spi_sent_data[0]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I4(\spi_sent_data[7]_i_8_n_0 ),
        .I5(\spi_sent_data[0]_i_3_n_0 ),
        .O(\spi_sent_data[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \spi_sent_data[5]_i_1 
       (.I0(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I1(fifo_data[5]),
        .I2(\spi_sent_data[7]_i_8_n_0 ),
        .I3(param_byte[5]),
        .O(\spi_sent_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF9F9F9F9F9F9F9FF)) 
    \spi_sent_data[6]_i_1 
       (.I0(\spi_sent_data[6]_i_3_n_0 ),
        .I1(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I2(\spi_sent_data[6]_i_4_n_0 ),
        .I3(\spi_sent_data[6]_i_5_n_0 ),
        .I4(\spi_sent_data[6]_i_6_n_0 ),
        .I5(\spi_sent_data[6]_i_7_n_0 ),
        .O(spi_sent_data_0));
  LUT4 #(
    .INIT(16'h5155)) 
    \spi_sent_data[6]_i_10 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(spi_sent_start_reg[1]),
        .I2(spi_sent_start_reg[2]),
        .I3(\FSM_onehot_current_state_reg_n_0_[12] ),
        .O(\spi_sent_data[6]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h55545555)) 
    \spi_sent_data[6]_i_11 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(\state_counter_reg_n_0_[1] ),
        .I2(\state_counter_reg_n_0_[0] ),
        .I3(\state_counter_reg_n_0_[2] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[6] ),
        .O(\spi_sent_data[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFD00000000)) 
    \spi_sent_data[6]_i_12 
       (.I0(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I1(\state_counter_reg_n_0_[2] ),
        .I2(\state_counter_reg_n_0_[0] ),
        .I3(\state_counter_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I5(\spi_sent_data[6]_i_10_n_0 ),
        .O(\spi_sent_data[6]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hFD)) 
    \spi_sent_data[6]_i_13 
       (.I0(\spi_sent_data[7]_i_8_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .O(\spi_sent_data[6]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \spi_sent_data[6]_i_14 
       (.I0(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I1(\spi_sent_data[7]_i_8_n_0 ),
        .I2(\spi_sent_data[7]_i_4_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[8] ),
        .O(\spi_sent_data[6]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \spi_sent_data[6]_i_2 
       (.I0(\spi_sent_data[6]_i_8_n_0 ),
        .I1(\spi_sent_data[6]_i_9_n_0 ),
        .O(\spi_sent_data[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \spi_sent_data[6]_i_3 
       (.I0(\spi_sent_data[6]_i_10_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I4(\spi_sent_data[7]_i_4_n_0 ),
        .I5(\spi_sent_data[6]_i_11_n_0 ),
        .O(\spi_sent_data[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFBAAFFFFFFFF)) 
    \spi_sent_data[6]_i_4 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(spi_sent_start_reg[1]),
        .I2(spi_sent_start_reg[2]),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I5(\spi_sent_data[7]_i_5_n_0 ),
        .O(\spi_sent_data[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000022A)) 
    \spi_sent_data[6]_i_5 
       (.I0(\spi_sent_data[6]_i_12_n_0 ),
        .I1(\FSM_onehot_current_state[13]_i_1__0_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[14] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I5(\spi_sent_data[6]_i_13_n_0 ),
        .O(\spi_sent_data[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h002020A000000000)) 
    \spi_sent_data[6]_i_6 
       (.I0(\spi_sent_data[6]_i_12_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I2(\spi_sent_data[7]_i_8_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I5(\spi_sent_data[7]_i_4_n_0 ),
        .O(\spi_sent_data[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4D00)) 
    \spi_sent_data[6]_i_7 
       (.I0(\FSM_onehot_current_state[7]_i_1__0_n_0 ),
        .I1(\spi_sent_data[6]_i_10_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I3(\spi_sent_data[6]_i_14_n_0 ),
        .O(\spi_sent_data[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000010011110111)) 
    \spi_sent_data[6]_i_8 
       (.I0(\spi_sent_data[6]_i_3_n_0 ),
        .I1(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(spi_sent_start_reg[1]),
        .I4(spi_sent_start_reg[2]),
        .I5(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\spi_sent_data[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5FF0FF3FFF0FFFFF)) 
    \spi_sent_data[6]_i_9 
       (.I0(param_byte[6]),
        .I1(fifo_data[6]),
        .I2(\spi_sent_data[0]_i_2_n_0 ),
        .I3(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I4(\spi_sent_data[7]_i_8_n_0 ),
        .I5(\spi_sent_data[0]_i_3_n_0 ),
        .O(\spi_sent_data[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA8AAAAAAAAAAA)) 
    \spi_sent_data[7]_i_1 
       (.I0(spi_sent_data_0),
        .I1(\spi_sent_data[7]_i_3_n_0 ),
        .I2(\spi_sent_data[7]_i_4_n_0 ),
        .I3(\spi_sent_data[7]_i_5_n_0 ),
        .I4(\spi_sent_data[7]_i_6_n_0 ),
        .I5(\spi_sent_data[7]_i_7_n_0 ),
        .O(\spi_sent_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \spi_sent_data[7]_i_2 
       (.I0(\spi_sent_data[7]_i_8_n_0 ),
        .I1(param_byte[7]),
        .I2(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I3(fifo_data[7]),
        .O(\spi_sent_data[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFBA8A)) 
    \spi_sent_data[7]_i_3 
       (.I0(\FSM_onehot_current_state_reg_n_0_[3] ),
        .I1(spi_sent_start_reg[2]),
        .I2(spi_sent_start_reg[1]),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .O(\spi_sent_data[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0111011111110111)) 
    \spi_sent_data[7]_i_4 
       (.I0(\FSM_onehot_current_state_reg_n_0_[13] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[14] ),
        .I2(\spi_cs_end_register_reg[1] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I4(spi_sent_start_reg[1]),
        .I5(spi_sent_start_reg[2]),
        .O(\spi_sent_data[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0777070700000000)) 
    \spi_sent_data[7]_i_5 
       (.I0(spi_cs_start_reg),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(spi_sent_start_reg[2]),
        .I4(spi_sent_start_reg[1]),
        .I5(\spi_sent_data[0]_i_2_n_0 ),
        .O(\spi_sent_data[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h20222A22)) 
    \spi_sent_data[7]_i_6 
       (.I0(\spi_sent_data[7]_i_8_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I2(spi_sent_start_reg[2]),
        .I3(spi_sent_start_reg[1]),
        .I4(\FSM_onehot_current_state_reg_n_0_[3] ),
        .O(\spi_sent_data[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \spi_sent_data[7]_i_7 
       (.I0(\FSM_onehot_current_state[7]_i_1__0_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(\spi_sent_data[6]_i_10_n_0 ),
        .I3(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[9] ),
        .O(\spi_sent_data[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h55550455)) 
    \spi_sent_data[7]_i_8 
       (.I0(\FSM_onehot_current_state_reg_n_0_[11] ),
        .I1(spi_sent_start_reg[1]),
        .I2(spi_sent_start_reg[2]),
        .I3(\FSM_onehot_current_state_reg_n_0_[12] ),
        .I4(\spi_cs_end_register_reg[1] ),
        .O(\spi_sent_data[7]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_sent_data_0),
        .D(\spi_sent_data[0]_i_1_n_0 ),
        .Q(spi_sent_data[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_sent_data_0),
        .D(\spi_sent_data[1]_i_1_n_0 ),
        .Q(spi_sent_data[1]),
        .R(\spi_sent_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_sent_data_0),
        .D(\spi_sent_data[2]_i_1_n_0 ),
        .Q(spi_sent_data[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_sent_data_0),
        .D(\spi_sent_data[3]_i_1_n_0 ),
        .Q(spi_sent_data[3]),
        .R(\spi_sent_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_sent_data_0),
        .D(\spi_sent_data[4]_i_1_n_0 ),
        .Q(spi_sent_data[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_sent_data_0),
        .D(\spi_sent_data[5]_i_1_n_0 ),
        .Q(spi_sent_data[5]),
        .R(\spi_sent_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_sent_data_0),
        .D(\spi_sent_data[6]_i_2_n_0 ),
        .Q(spi_sent_data[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(spi_sent_data_0),
        .D(\spi_sent_data[7]_i_2_n_0 ),
        .Q(spi_sent_data[7]),
        .R(\spi_sent_data[7]_i_1_n_0 ));
  (* srl_bus_name = "\u5/spi_sent_start_reg_reg " *) 
  (* srl_name = "\u5/spi_sent_start_reg_reg[0]_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \spi_sent_start_reg_reg[0]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(clk_IBUF_BUFG),
        .D(\SCKr_reg[2] ),
        .Q(\spi_sent_start_reg_reg[0]_srl2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \spi_sent_start_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\spi_sent_start_reg_reg[0]_srl2_n_0 ),
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
  LUT3 #(
    .INIT(8'h38)) 
    \state_counter[0]_i_1 
       (.I0(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I1(state_counter),
        .I2(\state_counter_reg_n_0_[0] ),
        .O(\state_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h8F40)) 
    \state_counter[1]_i_1 
       (.I0(\state_counter_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I2(state_counter),
        .I3(\state_counter_reg_n_0_[1] ),
        .O(\state_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hFDFF5700)) 
    \state_counter[2]_i_1 
       (.I0(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I1(\state_counter_reg_n_0_[0] ),
        .I2(\state_counter_reg_n_0_[1] ),
        .I3(state_counter),
        .I4(\state_counter_reg_n_0_[2] ),
        .O(\state_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0028000000000000)) 
    \state_counter[2]_i_2__0 
       (.I0(spi_frame_end_i_4_n_0),
        .I1(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .I2(\FSM_onehot_current_state[5]_i_1__0_n_0 ),
        .I3(\state_counter[2]_i_3__0_n_0 ),
        .I4(\spi_sent_data[7]_i_4_n_0 ),
        .I5(\spi_sent_data[0]_i_2_n_0 ),
        .O(state_counter));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    \state_counter[2]_i_3__0 
       (.I0(\FSM_onehot_current_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I2(\spi_sent_data[7]_i_8_n_0 ),
        .I3(\FSM_onehot_current_state[3]_i_1__0_n_0 ),
        .I4(\spi_sent_data[0]_i_3_n_0 ),
        .O(\state_counter[2]_i_3__0_n_0 ));
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

module spi_func_decoder
   (func_error_OBUF,
    overlay_start_OBUF,
    overlay_stop_OBUF,
    dac_start_OBUF,
    adc_start_OBUF,
    adc_data_request_OBUF,
    \length_byte_reg_reg[0]_0 ,
    dac_data_OBUF,
    adc_sampling_rate_OBUF,
    adc_sample_nums_OBUF,
    adc_request_nums_OBUF,
    clk_IBUF_BUFG,
    rst_n_IBUF,
    D,
    \func_byte_reg[7] ,
    \length_byte_reg[7] ,
    \param2_byte_reg[7] ,
    \param1_byte_reg[7] );
  output func_error_OBUF;
  output overlay_start_OBUF;
  output overlay_stop_OBUF;
  output dac_start_OBUF;
  output adc_start_OBUF;
  output adc_data_request_OBUF;
  output \length_byte_reg_reg[0]_0 ;
  output [11:0]dac_data_OBUF;
  output [7:0]adc_sampling_rate_OBUF;
  output [7:0]adc_sample_nums_OBUF;
  output [7:0]adc_request_nums_OBUF;
  input clk_IBUF_BUFG;
  input rst_n_IBUF;
  input [0:0]D;
  input [7:0]\func_byte_reg[7] ;
  input [7:0]\length_byte_reg[7] ;
  input [7:0]\param2_byte_reg[7] ;
  input [7:0]\param1_byte_reg[7] ;

  wire [0:0]D;
  wire \FSM_onehot_current_state[0]_i_2_n_0 ;
  wire \FSM_onehot_current_state[1]_i_2__0_n_0 ;
  wire \FSM_onehot_current_state[3]_i_2__0_n_0 ;
  wire \FSM_onehot_current_state[3]_i_3__0_n_0 ;
  wire \FSM_onehot_current_state[7]_i_2__0_n_0 ;
  wire \FSM_onehot_current_state[9]_i_2_n_0 ;
  wire \FSM_onehot_current_state[9]_i_3_n_0 ;
  wire \FSM_onehot_current_state[9]_i_4_n_0 ;
  wire \FSM_onehot_current_state[9]_i_5_n_0 ;
  wire \FSM_onehot_current_state[9]_i_6_n_0 ;
  wire adc_data_request;
  wire adc_data_request_OBUF;
  wire adc_data_request_i_2_n_0;
  wire adc_data_request_i_3_n_0;
  wire adc_data_request_i_4_n_0;
  wire adc_request_nums;
  wire \adc_request_nums[7]_i_1_n_0 ;
  wire [7:0]adc_request_nums_OBUF;
  wire [7:0]adc_sample_nums_OBUF;
  wire adc_sampling_rate;
  wire \adc_sampling_rate[7]_i_1_n_0 ;
  wire \adc_sampling_rate[7]_i_3_n_0 ;
  wire \adc_sampling_rate[7]_i_4_n_0 ;
  wire \adc_sampling_rate[7]_i_5_n_0 ;
  wire [7:0]adc_sampling_rate_OBUF;
  wire adc_start;
  wire adc_start_OBUF;
  wire adc_start_i_2_n_0;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [9:0]current_state;
  wire dac_data;
  wire \dac_data[11]_i_1_n_0 ;
  wire \dac_data[11]_i_3_n_0 ;
  wire \dac_data[11]_i_4_n_0 ;
  wire \dac_data[11]_i_5_n_0 ;
  wire [11:0]dac_data_OBUF;
  wire dac_start;
  wire dac_start_OBUF;
  wire dac_start_i_2_n_0;
  wire dac_start_i_3_n_0;
  wire dac_start_i_4_n_0;
  wire \frame_ready_register_reg_n_0_[0] ;
  wire [7:0]\func_byte_reg[7] ;
  wire \func_byte_reg[7]_i_1_n_0 ;
  wire func_error;
  wire func_error_OBUF;
  wire func_error_i_2_n_0;
  wire func_error_i_3_n_0;
  wire func_error_i_4_n_0;
  wire func_error_i_5_n_0;
  wire func_error_i_6_n_0;
  wire func_error_i_7_n_0;
  wire [7:0]length_byte_reg;
  wire [7:0]\length_byte_reg[7] ;
  wire \length_byte_reg_reg[0]_0 ;
  wire [9:0]next_state__0;
  wire overlay_start;
  wire overlay_start_OBUF;
  wire overlay_start_i_2_n_0;
  wire overlay_start_i_3_n_0;
  wire overlay_start_i_4_n_0;
  wire overlay_stop;
  wire overlay_stop_OBUF;
  wire overlay_stop_i_2_n_0;
  wire overlay_stop_i_3_n_0;
  wire [1:0]p_0_in;
  wire [7:0]param1_byte_reg;
  wire [7:0]\param1_byte_reg[7] ;
  wire [7:0]param2_byte_reg;
  wire [7:0]\param2_byte_reg[7] ;
  wire rst_n_IBUF;
  wire [7:0]sel0;

  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_current_state[0]_i_1__1 
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
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_current_state[16]_i_1 
       (.I0(rst_n_IBUF),
        .O(\length_byte_reg_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[1]_i_1__1 
       (.I0(\FSM_onehot_current_state[1]_i_2__0_n_0 ),
        .I1(sel0[2]),
        .O(next_state__0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current_state[1]_i_2__0 
       (.I0(\adc_sampling_rate[7]_i_5_n_0 ),
        .I1(sel0[0]),
        .O(\FSM_onehot_current_state[1]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[2]_i_1__0 
       (.I0(\FSM_onehot_current_state[3]_i_2__0_n_0 ),
        .I1(sel0[0]),
        .O(next_state__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current_state[3]_i_1__1 
       (.I0(\FSM_onehot_current_state[3]_i_2__0_n_0 ),
        .I1(sel0[0]),
        .O(next_state__0[3]));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_current_state[3]_i_2__0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(\FSM_onehot_current_state[3]_i_3__0_n_0 ),
        .O(\FSM_onehot_current_state[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_current_state[3]_i_3__0 
       (.I0(func_error_i_4_n_0),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[3]),
        .I4(sel0[7]),
        .I5(sel0[6]),
        .O(\FSM_onehot_current_state[3]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_onehot_current_state[4]_i_1__0 
       (.I0(length_byte_reg[0]),
        .I1(\FSM_onehot_current_state[9]_i_3_n_0 ),
        .I2(length_byte_reg[1]),
        .I3(current_state[3]),
        .O(next_state__0[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_current_state[5]_i_1__1 
       (.I0(\FSM_onehot_current_state[7]_i_2__0_n_0 ),
        .I1(sel0[0]),
        .O(next_state__0[5]));
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(length_byte_reg[1]),
        .I1(\FSM_onehot_current_state[9]_i_3_n_0 ),
        .I2(length_byte_reg[0]),
        .I3(current_state[5]),
        .O(next_state__0[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current_state[7]_i_1__1 
       (.I0(\FSM_onehot_current_state[7]_i_2__0_n_0 ),
        .I1(sel0[0]),
        .O(next_state__0[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_current_state[7]_i_2__0 
       (.I0(\adc_sampling_rate[7]_i_5_n_0 ),
        .I1(sel0[2]),
        .O(\FSM_onehot_current_state[7]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \FSM_onehot_current_state[8]_i_1__0 
       (.I0(length_byte_reg[1]),
        .I1(length_byte_reg[0]),
        .I2(current_state[7]),
        .I3(\FSM_onehot_current_state[9]_i_3_n_0 ),
        .O(next_state__0[8]));
  LUT6 #(
    .INIT(64'hFFEAEAEAFFEAFFEA)) 
    \FSM_onehot_current_state[9]_i_1__0 
       (.I0(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state[9]_i_3_n_0 ),
        .I2(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I3(current_state[7]),
        .I4(length_byte_reg[1]),
        .I5(length_byte_reg[0]),
        .O(next_state__0[9]));
  LUT6 #(
    .INIT(64'hE0EEFFFFE0EEE0EE)) 
    \FSM_onehot_current_state[9]_i_2 
       (.I0(current_state[3]),
        .I1(current_state[5]),
        .I2(length_byte_reg[0]),
        .I3(length_byte_reg[1]),
        .I4(func_error_i_4_n_0),
        .I5(\FSM_onehot_current_state[9]_i_5_n_0 ),
        .O(\FSM_onehot_current_state[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_current_state[9]_i_3 
       (.I0(length_byte_reg[6]),
        .I1(length_byte_reg[7]),
        .I2(length_byte_reg[4]),
        .I3(length_byte_reg[5]),
        .I4(length_byte_reg[3]),
        .I5(length_byte_reg[2]),
        .O(\FSM_onehot_current_state[9]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_current_state[9]_i_4 
       (.I0(current_state[5]),
        .I1(current_state[3]),
        .I2(current_state[7]),
        .O(\FSM_onehot_current_state[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFC1)) 
    \FSM_onehot_current_state[9]_i_5 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[7]),
        .I4(sel0[6]),
        .I5(\FSM_onehot_current_state[9]_i_6_n_0 ),
        .O(\FSM_onehot_current_state[9]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_current_state[9]_i_6 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[3]),
        .O(\FSM_onehot_current_state[9]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state__0[0]),
        .PRE(\length_byte_reg_reg[0]_0 ),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(next_state__0[1]),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(next_state__0[2]),
        .Q(current_state[2]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(next_state__0[3]),
        .Q(current_state[3]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(next_state__0[4]),
        .Q(current_state[4]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(next_state__0[5]),
        .Q(current_state[5]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(next_state__0[6]),
        .Q(current_state[6]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(next_state__0[7]),
        .Q(current_state[7]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(next_state__0[8]),
        .Q(current_state[8]));
  (* FSM_ENCODED_STATES = "S00:0000000001,S09:1000000000,S04:0000010000,S03:0000001000,S08:0100000000,S02:0000000100,S07:0010000000,S05:0000100000,S01:0000000010,S06:0001000000" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(next_state__0[9]),
        .Q(current_state[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0040)) 
    adc_data_request_i_1
       (.I0(length_byte_reg[1]),
        .I1(length_byte_reg[0]),
        .I2(current_state[7]),
        .I3(\FSM_onehot_current_state[9]_i_3_n_0 ),
        .I4(adc_data_request_i_3_n_0),
        .I5(\dac_data[11]_i_5_n_0 ),
        .O(adc_data_request));
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
        .I3(\FSM_onehot_current_state[9]_i_3_n_0 ),
        .I4(length_byte_reg[1]),
        .I5(adc_data_request_i_4_n_0),
        .O(adc_data_request_i_3_n_0));
  LUT4 #(
    .INIT(16'hAEAA)) 
    adc_data_request_i_4
       (.I0(current_state[7]),
        .I1(current_state[0]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .O(adc_data_request_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    adc_data_request_reg
       (.C(clk_IBUF_BUFG),
        .CE(adc_data_request),
        .D(adc_data_request_i_2_n_0),
        .Q(adc_data_request_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEA2A)) 
    \adc_request_nums[7]_i_1 
       (.I0(overlay_stop_i_3_n_0),
        .I1(sel0[0]),
        .I2(\FSM_onehot_current_state[7]_i_2__0_n_0 ),
        .I3(current_state[7]),
        .I4(current_state[3]),
        .I5(current_state[5]),
        .O(\adc_request_nums[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \adc_request_nums[7]_i_2 
       (.I0(sel0[0]),
        .I1(\FSM_onehot_current_state[7]_i_2__0_n_0 ),
        .I2(overlay_stop_i_3_n_0),
        .O(adc_request_nums));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_request_nums),
        .D(param2_byte_reg[0]),
        .Q(adc_request_nums_OBUF[0]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_request_nums),
        .D(param2_byte_reg[1]),
        .Q(adc_request_nums_OBUF[1]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_request_nums),
        .D(param2_byte_reg[2]),
        .Q(adc_request_nums_OBUF[2]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_request_nums),
        .D(param2_byte_reg[3]),
        .Q(adc_request_nums_OBUF[3]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_request_nums),
        .D(param2_byte_reg[4]),
        .Q(adc_request_nums_OBUF[4]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_request_nums),
        .D(param2_byte_reg[5]),
        .Q(adc_request_nums_OBUF[5]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_request_nums),
        .D(param2_byte_reg[6]),
        .Q(adc_request_nums_OBUF[6]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_request_nums_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_request_nums),
        .D(param2_byte_reg[7]),
        .Q(adc_request_nums_OBUF[7]),
        .R(\adc_request_nums[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param2_byte_reg[0]),
        .Q(adc_sample_nums_OBUF[0]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param2_byte_reg[1]),
        .Q(adc_sample_nums_OBUF[1]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param2_byte_reg[2]),
        .Q(adc_sample_nums_OBUF[2]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param2_byte_reg[3]),
        .Q(adc_sample_nums_OBUF[3]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param2_byte_reg[4]),
        .Q(adc_sample_nums_OBUF[4]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param2_byte_reg[5]),
        .Q(adc_sample_nums_OBUF[5]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param2_byte_reg[6]),
        .Q(adc_sample_nums_OBUF[6]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sample_nums_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
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
        .I5(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .O(\adc_sampling_rate[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEEFFE2)) 
    \adc_sampling_rate[7]_i_2 
       (.I0(func_error_i_4_n_0),
        .I1(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I2(\FSM_onehot_current_state[3]_i_2__0_n_0 ),
        .I3(next_state__0[5]),
        .I4(\FSM_onehot_current_state[1]_i_2__0_n_0 ),
        .I5(\adc_sampling_rate[7]_i_3_n_0 ),
        .O(adc_sampling_rate));
  LUT6 #(
    .INIT(64'hFFFFFFFF02000000)) 
    \adc_sampling_rate[7]_i_3 
       (.I0(current_state[5]),
        .I1(length_byte_reg[0]),
        .I2(\FSM_onehot_current_state[9]_i_3_n_0 ),
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
        .I3(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I4(\FSM_onehot_current_state[3]_i_2__0_n_0 ),
        .O(\adc_sampling_rate[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \adc_sampling_rate[7]_i_5 
       (.I0(\FSM_onehot_current_state[3]_i_3__0_n_0 ),
        .I1(sel0[1]),
        .O(\adc_sampling_rate[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param1_byte_reg[0]),
        .Q(adc_sampling_rate_OBUF[0]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param1_byte_reg[1]),
        .Q(adc_sampling_rate_OBUF[1]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param1_byte_reg[2]),
        .Q(adc_sampling_rate_OBUF[2]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param1_byte_reg[3]),
        .Q(adc_sampling_rate_OBUF[3]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param1_byte_reg[4]),
        .Q(adc_sampling_rate_OBUF[4]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param1_byte_reg[5]),
        .Q(adc_sampling_rate_OBUF[5]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param1_byte_reg[6]),
        .Q(adc_sampling_rate_OBUF[6]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adc_sampling_rate_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(adc_sampling_rate),
        .D(param1_byte_reg[7]),
        .Q(adc_sampling_rate_OBUF[7]),
        .R(\adc_sampling_rate[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEAE)) 
    adc_start_i_1
       (.I0(dac_start_i_3_n_0),
        .I1(next_state__0[4]),
        .I2(func_error_i_4_n_0),
        .I3(current_state[7]),
        .I4(dac_start_i_4_n_0),
        .I5(next_state__0[6]),
        .O(adc_start));
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
        .CE(adc_start),
        .D(adc_start_i_2_n_0),
        .Q(adc_start_OBUF),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000002222202)) 
    \dac_data[11]_i_1 
       (.I0(dac_data),
        .I1(\dac_data[11]_i_3_n_0 ),
        .I2(func_error_i_5_n_0),
        .I3(length_byte_reg[0]),
        .I4(length_byte_reg[1]),
        .I5(\dac_data[11]_i_4_n_0 ),
        .O(\dac_data[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \dac_data[11]_i_2 
       (.I0(sel0[0]),
        .I1(\FSM_onehot_current_state[3]_i_2__0_n_0 ),
        .I2(\dac_data[11]_i_5_n_0 ),
        .I3(overlay_start_i_3_n_0),
        .O(dac_data));
  LUT6 #(
    .INIT(64'hA8A8A8B830203333)) 
    \dac_data[11]_i_3 
       (.I0(\FSM_onehot_current_state[9]_i_3_n_0 ),
        .I1(func_error_i_4_n_0),
        .I2(\FSM_onehot_current_state[9]_i_5_n_0 ),
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
  LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
    \dac_data[11]_i_5 
       (.I0(\FSM_onehot_current_state[9]_i_3_n_0 ),
        .I1(length_byte_reg[0]),
        .I2(current_state[5]),
        .I3(length_byte_reg[1]),
        .I4(current_state[3]),
        .I5(dac_start_i_3_n_0),
        .O(\dac_data[11]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(dac_data),
        .D(param2_byte_reg[0]),
        .Q(dac_data_OBUF[0]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(dac_data),
        .D(param1_byte_reg[2]),
        .Q(dac_data_OBUF[10]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(dac_data),
        .D(param1_byte_reg[3]),
        .Q(dac_data_OBUF[11]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(dac_data),
        .D(param2_byte_reg[1]),
        .Q(dac_data_OBUF[1]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(dac_data),
        .D(param2_byte_reg[2]),
        .Q(dac_data_OBUF[2]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(dac_data),
        .D(param2_byte_reg[3]),
        .Q(dac_data_OBUF[3]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(dac_data),
        .D(param2_byte_reg[4]),
        .Q(dac_data_OBUF[4]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(dac_data),
        .D(param2_byte_reg[5]),
        .Q(dac_data_OBUF[5]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(dac_data),
        .D(param2_byte_reg[6]),
        .Q(dac_data_OBUF[6]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(dac_data),
        .D(param2_byte_reg[7]),
        .Q(dac_data_OBUF[7]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(dac_data),
        .D(param1_byte_reg[0]),
        .Q(dac_data_OBUF[8]),
        .R(\dac_data[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dac_data_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(dac_data),
        .D(param1_byte_reg[1]),
        .Q(dac_data_OBUF[9]),
        .R(\dac_data[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEEAE)) 
    dac_start_i_1
       (.I0(dac_start_i_3_n_0),
        .I1(next_state__0[6]),
        .I2(func_error_i_4_n_0),
        .I3(current_state[7]),
        .I4(dac_start_i_4_n_0),
        .I5(next_state__0[4]),
        .O(dac_start));
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
        .I2(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I3(sel0[1]),
        .I4(\FSM_onehot_current_state[3]_i_3__0_n_0 ),
        .I5(sel0[2]),
        .O(dac_start_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA0800)) 
    dac_start_i_4
       (.I0(next_state__0[8]),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(current_state[0]),
        .I4(current_state[3]),
        .I5(current_state[5]),
        .O(dac_start_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dac_start_reg
       (.C(clk_IBUF_BUFG),
        .CE(dac_start),
        .D(dac_start_i_2_n_0),
        .Q(dac_start_OBUF),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \frame_ready_register_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(D),
        .Q(\frame_ready_register_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \frame_ready_register_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\frame_ready_register_reg_n_0_[0] ),
        .Q(p_0_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \frame_ready_register_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(p_0_in[0]),
        .Q(p_0_in[1]));
  LUT3 #(
    .INIT(8'h10)) 
    \func_byte_reg[7]_i_1 
       (.I0(p_0_in[1]),
        .I1(p_0_in[0]),
        .I2(D),
        .O(\func_byte_reg[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\func_byte_reg[7] [0]),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\func_byte_reg[7] [1]),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\func_byte_reg[7] [2]),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\func_byte_reg[7] [3]),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\func_byte_reg[7] [4]),
        .Q(sel0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\func_byte_reg[7] [5]),
        .Q(sel0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\func_byte_reg[7] [6]),
        .Q(sel0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \func_byte_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\func_byte_reg[7] [7]),
        .Q(sel0[7]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFEEFFFFE)) 
    func_error_i_1
       (.I0(\FSM_onehot_current_state[9]_i_2_n_0 ),
        .I1(func_error_i_3_n_0),
        .I2(current_state[3]),
        .I3(current_state[5]),
        .I4(func_error_i_4_n_0),
        .I5(current_state[7]),
        .O(func_error));
  LUT5 #(
    .INIT(32'hFFFFC88C)) 
    func_error_i_2
       (.I0(\FSM_onehot_current_state[9]_i_3_n_0 ),
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
        .I5(\FSM_onehot_current_state[9]_i_3_n_0 ),
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
        .I5(\FSM_onehot_current_state[9]_i_5_n_0 ),
        .O(func_error_i_5_n_0));
  LUT6 #(
    .INIT(64'hAABAAAAA0F330C00)) 
    func_error_i_6
       (.I0(func_error_i_3_n_0),
        .I1(func_error_i_4_n_0),
        .I2(length_byte_reg[1]),
        .I3(func_error_i_7_n_0),
        .I4(\FSM_onehot_current_state[9]_i_5_n_0 ),
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
        .CE(func_error),
        .D(func_error_i_2_n_0),
        .Q(func_error_OBUF),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\length_byte_reg[7] [0]),
        .Q(length_byte_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\length_byte_reg[7] [1]),
        .Q(length_byte_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\length_byte_reg[7] [2]),
        .Q(length_byte_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\length_byte_reg[7] [3]),
        .Q(length_byte_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\length_byte_reg[7] [4]),
        .Q(length_byte_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\length_byte_reg[7] [5]),
        .Q(length_byte_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\length_byte_reg[7] [6]),
        .Q(length_byte_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \length_byte_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\length_byte_reg[7] [7]),
        .Q(length_byte_reg[7]));
  LUT6 #(
    .INIT(64'hFFF8FFFFFFF8FFF8)) 
    overlay_start_i_1
       (.I0(current_state[5]),
        .I1(next_state__0[4]),
        .I2(overlay_start_i_3_n_0),
        .I3(overlay_start_i_4_n_0),
        .I4(sel0[2]),
        .I5(\FSM_onehot_current_state[1]_i_2__0_n_0 ),
        .O(overlay_start));
  LUT5 #(
    .INIT(32'h00010000)) 
    overlay_start_i_2
       (.I0(sel0[2]),
        .I1(current_state[5]),
        .I2(current_state[3]),
        .I3(current_state[7]),
        .I4(\FSM_onehot_current_state[1]_i_2__0_n_0 ),
        .O(overlay_start_i_2_n_0));
  LUT6 #(
    .INIT(64'h000000000BA00020)) 
    overlay_start_i_3
       (.I0(func_error_i_7_n_0),
        .I1(func_error_i_4_n_0),
        .I2(length_byte_reg[1]),
        .I3(length_byte_reg[0]),
        .I4(current_state[7]),
        .I5(\FSM_onehot_current_state[9]_i_3_n_0 ),
        .O(overlay_start_i_3_n_0));
  LUT5 #(
    .INIT(32'h48FF4800)) 
    overlay_start_i_4
       (.I0(sel0[2]),
        .I1(\FSM_onehot_current_state[3]_i_3__0_n_0 ),
        .I2(sel0[1]),
        .I3(\FSM_onehot_current_state[9]_i_4_n_0 ),
        .I4(func_error_i_4_n_0),
        .O(overlay_start_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    overlay_start_reg
       (.C(clk_IBUF_BUFG),
        .CE(overlay_start),
        .D(overlay_start_i_2_n_0),
        .Q(overlay_start_OBUF),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    overlay_stop_i_1
       (.I0(sel0[0]),
        .I1(\FSM_onehot_current_state[3]_i_2__0_n_0 ),
        .I2(overlay_stop_i_3_n_0),
        .O(overlay_stop));
  LUT5 #(
    .INIT(32'h00010000)) 
    overlay_stop_i_2
       (.I0(sel0[0]),
        .I1(current_state[5]),
        .I2(current_state[3]),
        .I3(current_state[7]),
        .I4(\FSM_onehot_current_state[3]_i_2__0_n_0 ),
        .O(overlay_stop_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    overlay_stop_i_3
       (.I0(overlay_start_i_3_n_0),
        .I1(\dac_data[11]_i_5_n_0 ),
        .O(overlay_stop_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    overlay_stop_reg
       (.C(clk_IBUF_BUFG),
        .CE(overlay_stop),
        .D(overlay_stop_i_2_n_0),
        .Q(overlay_stop_OBUF),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param1_byte_reg[7] [0]),
        .Q(param1_byte_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param1_byte_reg[7] [1]),
        .Q(param1_byte_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param1_byte_reg[7] [2]),
        .Q(param1_byte_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param1_byte_reg[7] [3]),
        .Q(param1_byte_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param1_byte_reg[7] [4]),
        .Q(param1_byte_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param1_byte_reg[7] [5]),
        .Q(param1_byte_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param1_byte_reg[7] [6]),
        .Q(param1_byte_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \param1_byte_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param1_byte_reg[7] [7]),
        .Q(param1_byte_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param2_byte_reg[7] [0]),
        .Q(param2_byte_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param2_byte_reg[7] [1]),
        .Q(param2_byte_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param2_byte_reg[7] [2]),
        .Q(param2_byte_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param2_byte_reg[7] [3]),
        .Q(param2_byte_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param2_byte_reg[7] [4]),
        .Q(param2_byte_reg[4]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param2_byte_reg[7] [5]),
        .Q(param2_byte_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param2_byte_reg[7] [6]),
        .Q(param2_byte_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \param2_byte_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\func_byte_reg[7]_i_1_n_0 ),
        .CLR(\length_byte_reg_reg[0]_0 ),
        .D(\param2_byte_reg[7] [7]),
        .Q(param2_byte_reg[7]));
endmodule

module spi_func_encoder
   (rd_en,
    rd_clk,
    D,
    fifo_select,
    \spi_sent_data_reg[0] ,
    param_byte,
    fifo_data,
    fifo_rd_en_reg,
    clk_IBUF_BUFG,
    fifo_rd_clk_reg,
    spi_frame_end,
    tx_adc_data_ready_IBUF,
    tx_adc_sample_nums_IBUF,
    dout,
    rst_n,
    lopt,
    lopt_1);
  output rd_en;
  output rd_clk;
  output [0:0]D;
  output [0:0]fifo_select;
  output \spi_sent_data_reg[0] ;
  output [7:0]param_byte;
  output [7:0]fifo_data;
  input fifo_rd_en_reg;
  input clk_IBUF_BUFG;
  input fifo_rd_clk_reg;
  input spi_frame_end;
  input tx_adc_data_ready_IBUF;
  input [7:0]tx_adc_sample_nums_IBUF;
  input [7:0]dout;
  input rst_n;
  output lopt;
  output lopt_1;

  wire [0:0]D;
  wire adc_fifo_rd_clk_reg_lopt_replica_1;
  wire adc_fifo_rd_en_reg_lopt_replica_1;
  wire clk_IBUF_BUFG;
  wire [1:0]current_state;
  wire [7:0]dout;
  wire [7:0]fifo_data;
  wire \fifo_data[7]_i_1_n_0 ;
  wire fifo_rd_clk_reg;
  wire fifo_rd_en_reg;
  wire [0:0]fifo_select;
  wire \fifo_select[0]_i_1_n_0 ;
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
  wire \^rd_clk ;
  wire rd_clk_BUFG;
  wire rd_en;
  wire rst_n;
  wire spi_frame_end;
  wire spi_func_ready_i_1_n_0;
  wire \spi_sent_data_reg[0] ;
  wire tx_adc_data_ready_IBUF;
  wire [7:0]tx_adc_sample_nums_IBUF;

  assign lopt = adc_fifo_rd_clk_reg_lopt_replica_1;
  assign lopt_1 = adc_fifo_rd_en_reg_lopt_replica_1;
  assign rd_clk = rd_clk_BUFG;
  FDRE #(
    .INIT(1'b0)) 
    adc_fifo_rd_clk_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(fifo_rd_clk_reg),
        .Q(\^rd_clk ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    adc_fifo_rd_clk_reg_lopt_replica
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(fifo_rd_clk_reg),
        .Q(adc_fifo_rd_clk_reg_lopt_replica_1),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    adc_fifo_rd_en_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(fifo_rd_en_reg),
        .Q(rd_en),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  FDRE #(
    .INIT(1'b0)) 
    adc_fifo_rd_en_reg_lopt_replica
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(fifo_rd_en_reg),
        .Q(adc_fifo_rd_en_reg_lopt_replica_1),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h34)) 
    \current_state[0]_i_1 
       (.I0(spi_frame_end),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(next_state[0]));
  LUT3 #(
    .INIT(8'h02)) 
    \current_state[1]_i_1 
       (.I0(tx_adc_data_ready_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .O(next_state[1]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(next_state[0]),
        .Q(current_state[0]));
  FDCE #(
    .INIT(1'b0)) 
    \current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_n),
        .D(next_state[1]),
        .Q(current_state[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_data[7]_i_1 
       (.I0(fifo_select),
        .O(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[0]),
        .Q(fifo_data[0]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[1]),
        .Q(fifo_data[1]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[2]),
        .Q(fifo_data[2]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[3]),
        .Q(fifo_data[3]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[4]),
        .Q(fifo_data[4]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[5]),
        .Q(fifo_data[5]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[6]),
        .Q(fifo_data[6]),
        .R(\fifo_data[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_data_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(dout[7]),
        .Q(fifo_data[7]),
        .R(\fifo_data[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0E3E0202)) 
    \fifo_select[0]_i_1 
       (.I0(tx_adc_data_ready_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(spi_frame_end),
        .I4(fifo_select),
        .O(\fifo_select[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \fifo_select_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\fifo_select[0]_i_1_n_0 ),
        .Q(fifo_select),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \func_byte_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(next_state[1]),
        .Q(\spi_sent_data_reg[0] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \param_byte[0]_i_1 
       (.I0(tx_adc_sample_nums_IBUF[0]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(tx_adc_data_ready_IBUF),
        .O(\param_byte[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \param_byte[1]_i_1 
       (.I0(tx_adc_sample_nums_IBUF[1]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(tx_adc_data_ready_IBUF),
        .O(\param_byte[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \param_byte[2]_i_1 
       (.I0(tx_adc_sample_nums_IBUF[2]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(tx_adc_data_ready_IBUF),
        .O(\param_byte[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \param_byte[3]_i_1 
       (.I0(tx_adc_sample_nums_IBUF[3]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(tx_adc_data_ready_IBUF),
        .O(\param_byte[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \param_byte[4]_i_1 
       (.I0(tx_adc_sample_nums_IBUF[4]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(tx_adc_data_ready_IBUF),
        .O(\param_byte[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \param_byte[5]_i_1 
       (.I0(tx_adc_sample_nums_IBUF[5]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(tx_adc_data_ready_IBUF),
        .O(\param_byte[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \param_byte[6]_i_1 
       (.I0(tx_adc_sample_nums_IBUF[6]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(tx_adc_data_ready_IBUF),
        .O(\param_byte[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD9)) 
    \param_byte[7]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(spi_frame_end),
        .O(\param_byte[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \param_byte[7]_i_2 
       (.I0(tx_adc_sample_nums_IBUF[7]),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(tx_adc_data_ready_IBUF),
        .O(\param_byte[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[0]_i_1_n_0 ),
        .Q(param_byte[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[1]_i_1_n_0 ),
        .Q(param_byte[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[2]_i_1_n_0 ),
        .Q(param_byte[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[3]_i_1_n_0 ),
        .Q(param_byte[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[4]_i_1_n_0 ),
        .Q(param_byte[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[5]_i_1_n_0 ),
        .Q(param_byte[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[6]_i_1_n_0 ),
        .Q(param_byte[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \param_byte_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\param_byte[7]_i_1_n_0 ),
        .D(\param_byte[7]_i_2_n_0 ),
        .Q(param_byte[7]),
        .R(1'b0));
  (* LOPT_BUFG_CLOCK *) 
  BUFG rd_clk_BUFG_inst
       (.I(\^rd_clk ),
        .O(rd_clk_BUFG));
  LUT5 #(
    .INIT(32'h37343434)) 
    spi_func_ready_i_1
       (.I0(spi_frame_end),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(tx_adc_data_ready_IBUF),
        .I4(D),
        .O(spi_func_ready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    spi_func_ready_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(spi_func_ready_i_1_n_0),
        .Q(D),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "64321198" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module spi_receive
   (clk,
    rst_n,
    SCK,
    CS,
    MOSI,
    MISO,
    frame_error,
    func_error,
    overlay_start,
    overlay_stop,
    dac_start,
    dac_data,
    adc_start,
    adc_sampling_rate,
    adc_sample_nums,
    adc_data_request,
    adc_request_nums,
    tx_adc_data_ready,
    tx_adc_sample_nums,
    tx_adc_fifo_rd_en,
    tx_adc_fifo_rd_clk,
    tx_adc_fifo_data,
    tx_fifo_wr_en,
    tx_fifo_wr_clk,
    tx_fifo_wr_data);
  input clk;
  input rst_n;
  input SCK;
  input CS;
  input MOSI;
  output MISO;
  output frame_error;
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
  input tx_adc_data_ready;
  input [7:0]tx_adc_sample_nums;
  output tx_adc_fifo_rd_en;
  output tx_adc_fifo_rd_clk;
  output [7:0]tx_adc_fifo_data;
  input tx_fifo_wr_en;
  input tx_fifo_wr_clk;
  input [7:0]tx_fifo_wr_data;

  wire CS;
  wire CS_IBUF;
  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire SCK;
  wire SCK_IBUF;
  wire adc_data_request;
  wire adc_data_request_OBUF;
  wire [7:0]adc_request_nums;
  wire [7:0]adc_request_nums_OBUF;
  wire [7:0]adc_sample_nums;
  wire [7:0]adc_sample_nums_OBUF;
  wire [7:0]adc_sampling_rate;
  wire [7:0]adc_sampling_rate_OBUF;
  wire adc_start;
  wire adc_start_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [11:0]dac_data;
  wire [11:0]dac_data_OBUF;
  wire dac_start;
  wire dac_start_OBUF;
  wire [7:0]fifo_data;
  wire fifo_empty;
  wire fifo_full;
  wire fifo_rd_clk;
  wire [7:0]fifo_rd_data;
  wire fifo_rd_en;
  wire [0:0]fifo_select;
  wire fifo_wr_clk;
  wire [7:0]fifo_wr_data;
  wire frame_error;
  wire frame_error_OBUF;
  wire frame_ready;
  wire func_error;
  wire func_error_OBUF;
  wire [7:0]length_byte;
  wire lopt;
  wire lopt_1;
  wire overlay_start;
  wire overlay_start_OBUF;
  wire overlay_stop;
  wire overlay_stop_OBUF;
  wire [7:0]param1_byte;
  wire [7:0]param2_byte;
  wire [7:0]param_byte;
  wire rst_n;
  wire rst_n_IBUF;
  wire [1:1]spi_cs_end_register;
  wire spi_cs_start;
  wire spi_frame_end;
  wire spi_func_ready;
  wire [7:0]spi_sent_data;
  wire tx_adc_data_ready;
  wire tx_adc_data_ready_IBUF;
  wire [7:0]tx_adc_fifo_data;
  wire [7:0]tx_adc_fifo_data_OBUF;
  wire tx_adc_fifo_rd_clk;
  wire tx_adc_fifo_rd_clk_OBUF;
  wire tx_adc_fifo_rd_en;
  wire tx_adc_fifo_rd_en_OBUF;
  wire [7:0]tx_adc_sample_nums;
  wire [7:0]tx_adc_sample_nums_IBUF;
  wire tx_fifo_wr_clk;
  wire tx_fifo_wr_clk_IBUF;
  wire tx_fifo_wr_clk_IBUF_BUFG;
  wire [7:0]tx_fifo_wr_data;
  wire [7:0]tx_fifo_wr_data_IBUF;
  wire tx_fifo_wr_en;
  wire tx_fifo_wr_en_IBUF;
  wire u1_n_1;
  wire u1_n_13;
  wire u1_n_2;
  wire u3_n_2;
  wire u3_n_3;
  wire u3_n_4;
  wire u3_n_5;
  wire u3_n_6;
  wire u3_n_7;
  wire u3_n_8;
  wire u3_n_9;
  wire u4_n_6;
  wire u5_n_1;
  wire u5_n_2;
  wire u6_n_4;
  wire NLW_u7_empty_UNCONNECTED;
  wire NLW_u7_full_UNCONNECTED;

initial begin
 $sdf_annotate("spi_receive_tbh_time_impl.sdf",,,,"tool_control");
end
  IBUF CS_IBUF_inst
       (.I(CS),
        .O(CS_IBUF));
  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SCK_IBUF_inst
       (.I(SCK),
        .O(SCK_IBUF));
  OBUF adc_data_request_OBUF_inst
       (.I(adc_data_request_OBUF),
        .O(adc_data_request));
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
  OBUF adc_start_OBUF_inst
       (.I(adc_start_OBUF),
        .O(adc_start));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
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
  OBUF dac_start_OBUF_inst
       (.I(dac_start_OBUF),
        .O(dac_start));
  OBUF frame_error_OBUF_inst
       (.I(frame_error_OBUF),
        .O(frame_error));
  OBUF func_error_OBUF_inst
       (.I(func_error_OBUF),
        .O(func_error));
  OBUF overlay_start_OBUF_inst
       (.I(overlay_start_OBUF),
        .O(overlay_start));
  OBUF overlay_stop_OBUF_inst
       (.I(overlay_stop_OBUF),
        .O(overlay_stop));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  IBUF tx_adc_data_ready_IBUF_inst
       (.I(tx_adc_data_ready),
        .O(tx_adc_data_ready_IBUF));
  OBUF \tx_adc_fifo_data_OBUF[0]_inst 
       (.I(tx_adc_fifo_data_OBUF[0]),
        .O(tx_adc_fifo_data[0]));
  OBUF \tx_adc_fifo_data_OBUF[1]_inst 
       (.I(tx_adc_fifo_data_OBUF[1]),
        .O(tx_adc_fifo_data[1]));
  OBUF \tx_adc_fifo_data_OBUF[2]_inst 
       (.I(tx_adc_fifo_data_OBUF[2]),
        .O(tx_adc_fifo_data[2]));
  OBUF \tx_adc_fifo_data_OBUF[3]_inst 
       (.I(tx_adc_fifo_data_OBUF[3]),
        .O(tx_adc_fifo_data[3]));
  OBUF \tx_adc_fifo_data_OBUF[4]_inst 
       (.I(tx_adc_fifo_data_OBUF[4]),
        .O(tx_adc_fifo_data[4]));
  OBUF \tx_adc_fifo_data_OBUF[5]_inst 
       (.I(tx_adc_fifo_data_OBUF[5]),
        .O(tx_adc_fifo_data[5]));
  OBUF \tx_adc_fifo_data_OBUF[6]_inst 
       (.I(tx_adc_fifo_data_OBUF[6]),
        .O(tx_adc_fifo_data[6]));
  OBUF \tx_adc_fifo_data_OBUF[7]_inst 
       (.I(tx_adc_fifo_data_OBUF[7]),
        .O(tx_adc_fifo_data[7]));
  OBUF tx_adc_fifo_rd_clk_OBUF_inst
       (.I(lopt),
        .O(tx_adc_fifo_rd_clk));
  OBUF tx_adc_fifo_rd_en_OBUF_inst
       (.I(lopt_1),
        .O(tx_adc_fifo_rd_en));
  IBUF \tx_adc_sample_nums_IBUF[0]_inst 
       (.I(tx_adc_sample_nums[0]),
        .O(tx_adc_sample_nums_IBUF[0]));
  IBUF \tx_adc_sample_nums_IBUF[1]_inst 
       (.I(tx_adc_sample_nums[1]),
        .O(tx_adc_sample_nums_IBUF[1]));
  IBUF \tx_adc_sample_nums_IBUF[2]_inst 
       (.I(tx_adc_sample_nums[2]),
        .O(tx_adc_sample_nums_IBUF[2]));
  IBUF \tx_adc_sample_nums_IBUF[3]_inst 
       (.I(tx_adc_sample_nums[3]),
        .O(tx_adc_sample_nums_IBUF[3]));
  IBUF \tx_adc_sample_nums_IBUF[4]_inst 
       (.I(tx_adc_sample_nums[4]),
        .O(tx_adc_sample_nums_IBUF[4]));
  IBUF \tx_adc_sample_nums_IBUF[5]_inst 
       (.I(tx_adc_sample_nums[5]),
        .O(tx_adc_sample_nums_IBUF[5]));
  IBUF \tx_adc_sample_nums_IBUF[6]_inst 
       (.I(tx_adc_sample_nums[6]),
        .O(tx_adc_sample_nums_IBUF[6]));
  IBUF \tx_adc_sample_nums_IBUF[7]_inst 
       (.I(tx_adc_sample_nums[7]),
        .O(tx_adc_sample_nums_IBUF[7]));
  (* LOPT_BUFG_CLOCK *) 
  BUFG tx_fifo_wr_clk_IBUF_BUFG_inst
       (.I(tx_fifo_wr_clk_IBUF),
        .O(tx_fifo_wr_clk_IBUF_BUFG));
  IBUF tx_fifo_wr_clk_IBUF_inst
       (.I(tx_fifo_wr_clk),
        .O(tx_fifo_wr_clk_IBUF));
  IBUF \tx_fifo_wr_data_IBUF[0]_inst 
       (.I(tx_fifo_wr_data[0]),
        .O(tx_fifo_wr_data_IBUF[0]));
  IBUF \tx_fifo_wr_data_IBUF[1]_inst 
       (.I(tx_fifo_wr_data[1]),
        .O(tx_fifo_wr_data_IBUF[1]));
  IBUF \tx_fifo_wr_data_IBUF[2]_inst 
       (.I(tx_fifo_wr_data[2]),
        .O(tx_fifo_wr_data_IBUF[2]));
  IBUF \tx_fifo_wr_data_IBUF[3]_inst 
       (.I(tx_fifo_wr_data[3]),
        .O(tx_fifo_wr_data_IBUF[3]));
  IBUF \tx_fifo_wr_data_IBUF[4]_inst 
       (.I(tx_fifo_wr_data[4]),
        .O(tx_fifo_wr_data_IBUF[4]));
  IBUF \tx_fifo_wr_data_IBUF[5]_inst 
       (.I(tx_fifo_wr_data[5]),
        .O(tx_fifo_wr_data_IBUF[5]));
  IBUF \tx_fifo_wr_data_IBUF[6]_inst 
       (.I(tx_fifo_wr_data[6]),
        .O(tx_fifo_wr_data_IBUF[6]));
  IBUF \tx_fifo_wr_data_IBUF[7]_inst 
       (.I(tx_fifo_wr_data[7]),
        .O(tx_fifo_wr_data_IBUF[7]));
  IBUF tx_fifo_wr_en_IBUF_inst
       (.I(tx_fifo_wr_en),
        .O(tx_fifo_wr_en_IBUF));
  SPI_Slave u1
       (.D(CS_IBUF),
        .MOSI(MOSI_IBUF),
        .Q(MISO_OBUF),
        .SCK(SCK_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .full(fifo_full),
        .\length_byte_reg[7] (fifo_wr_data),
        .\spi_cs_end_register_reg[0] (u1_n_1),
        .spi_cs_start(spi_cs_start),
        .spi_sent_data(spi_sent_data),
        .\spi_sent_start_reg_reg[1] (u1_n_13),
        .wr_clk(fifo_wr_clk),
        .wr_en(u1_n_2));
  (* x_core_info = "fifo_generator_v13_2_2,Vivado 2018.2" *) 
  fifo_generator_0 u2
       (.din(fifo_wr_data),
        .dout(fifo_rd_data),
        .empty(fifo_empty),
        .full(fifo_full),
        .rd_clk(fifo_rd_clk),
        .rd_en(fifo_rd_en),
        .wr_clk(fifo_wr_clk),
        .wr_en(u1_n_2));
  spi_frame_decoder u3
       (.\CSr_reg[2] (u1_n_1),
        .D({u3_n_2,u3_n_3,u3_n_4,u3_n_5,u3_n_6,u3_n_7,u3_n_8,u3_n_9}),
        .\FSM_onehot_current_state_reg[0]_0 (spi_cs_end_register),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dout(fifo_rd_data),
        .empty(fifo_empty),
        .frame_error_OBUF(frame_error_OBUF),
        .\frame_ready_register_reg[0] (frame_ready),
        .length_byte(length_byte),
        .param1_byte(param1_byte),
        .param2_byte(param2_byte),
        .rd_clk(fifo_rd_clk),
        .rd_en(fifo_rd_en),
        .rst_n(u4_n_6));
  spi_func_decoder u4
       (.D(frame_ready),
        .adc_data_request_OBUF(adc_data_request_OBUF),
        .adc_request_nums_OBUF(adc_request_nums_OBUF),
        .adc_sample_nums_OBUF(adc_sample_nums_OBUF),
        .adc_sampling_rate_OBUF(adc_sampling_rate_OBUF),
        .adc_start_OBUF(adc_start_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dac_data_OBUF(dac_data_OBUF),
        .dac_start_OBUF(dac_start_OBUF),
        .\func_byte_reg[7] ({u3_n_2,u3_n_3,u3_n_4,u3_n_5,u3_n_6,u3_n_7,u3_n_8,u3_n_9}),
        .func_error_OBUF(func_error_OBUF),
        .\length_byte_reg[7] (length_byte),
        .\length_byte_reg_reg[0]_0 (u4_n_6),
        .overlay_start_OBUF(overlay_start_OBUF),
        .overlay_stop_OBUF(overlay_stop_OBUF),
        .\param1_byte_reg[7] (param1_byte),
        .\param2_byte_reg[7] (param2_byte),
        .rst_n_IBUF(rst_n_IBUF));
  spi_frame_encoder u5
       (.D(spi_func_ready),
        .\SCKr_reg[2] (u1_n_13),
        .adc_fifo_rd_clk_reg(u5_n_2),
        .adc_fifo_rd_en_reg(u5_n_1),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .fifo_data(fifo_data),
        .fifo_select(fifo_select),
        .\func_byte_reg[0] (u6_n_4),
        .param_byte(param_byte),
        .rst_n(u4_n_6),
        .\spi_cs_end_register_reg[1] (spi_cs_end_register),
        .spi_cs_start(spi_cs_start),
        .spi_frame_end(spi_frame_end),
        .spi_sent_data(spi_sent_data));
  spi_func_encoder u6
       (.D(spi_func_ready),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dout(tx_adc_fifo_data_OBUF),
        .fifo_data(fifo_data),
        .fifo_rd_clk_reg(u5_n_2),
        .fifo_rd_en_reg(u5_n_1),
        .fifo_select(fifo_select),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .param_byte(param_byte),
        .rd_clk(tx_adc_fifo_rd_clk_OBUF),
        .rd_en(tx_adc_fifo_rd_en_OBUF),
        .rst_n(u4_n_6),
        .spi_frame_end(spi_frame_end),
        .\spi_sent_data_reg[0] (u6_n_4),
        .tx_adc_data_ready_IBUF(tx_adc_data_ready_IBUF),
        .tx_adc_sample_nums_IBUF(tx_adc_sample_nums_IBUF));
  (* x_core_info = "fifo_generator_v13_2_2,Vivado 2018.2" *) 
  fifo_generator_0_HD2 u7
       (.din(tx_fifo_wr_data_IBUF),
        .dout(tx_adc_fifo_data_OBUF),
        .empty(NLW_u7_empty_UNCONNECTED),
        .full(NLW_u7_full_UNCONNECTED),
        .rd_clk(tx_adc_fifo_rd_clk_OBUF),
        .rd_en(tx_adc_fifo_rd_en_OBUF),
        .wr_clk(tx_fifo_wr_clk_IBUF_BUFG),
        .wr_en(tx_fifo_wr_en_IBUF));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module fifo_generator_0_blk_mem_gen_generic_cstr
   (dout,
    rd_clk,
    wr_clk,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  output [7:0]dout;
  input rd_clk;
  input wr_clk;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;

  fifo_generator_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.E(E),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gic0.gc0.count_d2_reg[4] (\gic0.gc0.count_d2_reg[4] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module fifo_generator_0_blk_mem_gen_generic_cstr_HD20
   (rd_clk,
    wr_clk,
    dout,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  input rd_clk;
  input wr_clk;
  output [7:0]dout;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;

  fifo_generator_0_blk_mem_gen_prim_width_HD21 \ramloop[0].ram.r 
       (.E(E),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gic0.gc0.count_d2_reg[4] (\gic0.gc0.count_d2_reg[4] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module fifo_generator_0_blk_mem_gen_prim_width
   (dout,
    rd_clk,
    wr_clk,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  output [7:0]dout;
  input rd_clk;
  input wr_clk;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;

  fifo_generator_0_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.E(E),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gic0.gc0.count_d2_reg[4] (\gic0.gc0.count_d2_reg[4] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module fifo_generator_0_blk_mem_gen_prim_width_HD21
   (rd_clk,
    wr_clk,
    dout,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  input rd_clk;
  input wr_clk;
  output [7:0]dout;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;

  fifo_generator_0_blk_mem_gen_prim_wrapper_HD22 \prim_noinit.ram 
       (.E(E),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gic0.gc0.count_d2_reg[4] (\gic0.gc0.count_d2_reg[4] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module fifo_generator_0_blk_mem_gen_prim_wrapper
   (dout,
    rd_clk,
    wr_clk,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  output [7:0]dout;
  input rd_clk;
  input wr_clk;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,\gc0.count_d1_reg[4] ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,\gic0.gc0.count_d2_reg[4] ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(rd_clk),
        .CLKBWRCLK(wr_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[3:2],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[1:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7:6],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[5:4]}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED [15:10],dout[3:2],\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED [7:2],dout[1:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED [15:10],dout[7:6],\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED [7:2],dout[5:4]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(E),
        .ENBWREN(ram_full_fb_i_reg),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module fifo_generator_0_blk_mem_gen_prim_wrapper_HD22
   (rd_clk,
    wr_clk,
    dout,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  input rd_clk;
  input wr_clk;
  output [7:0]dout;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,\gc0.count_d1_reg[4] ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,\gic0.gc0.count_d2_reg[4] ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(rd_clk),
        .CLKBWRCLK(wr_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[3:2],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[1:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7:6],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[5:4]}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED [15:10],dout[3:2],\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOADO_UNCONNECTED [7:2],dout[1:0]}),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED [15:10],dout[7:6],\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOBDO_UNCONNECTED [7:2],dout[5:4]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(E),
        .ENBWREN(ram_full_fb_i_reg),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg,ram_full_fb_i_reg}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module fifo_generator_0_blk_mem_gen_top
   (dout,
    rd_clk,
    wr_clk,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  output [7:0]dout;
  input rd_clk;
  input wr_clk;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;

  fifo_generator_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.E(E),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gic0.gc0.count_d2_reg[4] (\gic0.gc0.count_d2_reg[4] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module fifo_generator_0_blk_mem_gen_top_HD19
   (rd_clk,
    wr_clk,
    dout,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  input rd_clk;
  input wr_clk;
  output [7:0]dout;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;

  fifo_generator_0_blk_mem_gen_generic_cstr_HD20 \valid.cstr 
       (.E(E),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gic0.gc0.count_d2_reg[4] (\gic0.gc0.count_d2_reg[4] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) 
module fifo_generator_0_blk_mem_gen_v8_4_1
   (dout,
    rd_clk,
    wr_clk,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  output [7:0]dout;
  input rd_clk;
  input wr_clk;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;

  fifo_generator_0_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.E(E),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gic0.gc0.count_d2_reg[4] (\gic0.gc0.count_d2_reg[4] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1" *) 
module fifo_generator_0_blk_mem_gen_v8_4_1_HD17
   (rd_clk,
    wr_clk,
    dout,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  input rd_clk;
  input wr_clk;
  output [7:0]dout;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;

  fifo_generator_0_blk_mem_gen_v8_4_1_synth_HD18 inst_blk_mem_gen
       (.E(E),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gic0.gc0.count_d2_reg[4] (\gic0.gc0.count_d2_reg[4] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module fifo_generator_0_blk_mem_gen_v8_4_1_synth
   (dout,
    rd_clk,
    wr_clk,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  output [7:0]dout;
  input rd_clk;
  input wr_clk;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;

  fifo_generator_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.E(E),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gic0.gc0.count_d2_reg[4] (\gic0.gc0.count_d2_reg[4] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_1_synth" *) 
module fifo_generator_0_blk_mem_gen_v8_4_1_synth_HD18
   (rd_clk,
    wr_clk,
    dout,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  input rd_clk;
  input wr_clk;
  output [7:0]dout;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;

  fifo_generator_0_blk_mem_gen_top_HD19 \gnbram.gnativebmg.native_blk_mem_gen 
       (.E(E),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gic0.gc0.count_d2_reg[4] (\gic0.gc0.count_d2_reg[4] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module fifo_generator_0_clk_x_pntrs
   (ram_empty_i_reg,
    WR_PNTR_RD,
    ram_empty_i_reg_0,
    ram_full_i_reg,
    RD_PNTR_WR,
    ram_full_i_reg_0,
    Q,
    \gc0.count_reg[4] ,
    \gic0.gc0.count_d1_reg[1] ,
    \gic0.gc0.count_reg[1] ,
    wr_clk,
    \gic0.gc0.count_d2_reg[4] ,
    rd_clk);
  output ram_empty_i_reg;
  output [1:0]WR_PNTR_RD;
  output ram_empty_i_reg_0;
  output ram_full_i_reg;
  output [2:0]RD_PNTR_WR;
  output ram_full_i_reg_0;
  input [4:0]Q;
  input [2:0]\gc0.count_reg[4] ;
  input [1:0]\gic0.gc0.count_d1_reg[1] ;
  input [1:0]\gic0.gc0.count_reg[1] ;
  input wr_clk;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input rd_clk;

  wire [4:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire [1:0]WR_PNTR_RD;
  wire [2:0]\gc0.count_reg[4] ;
  wire [1:0]\gic0.gc0.count_d1_reg[1] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [1:0]\gic0.gc0.count_reg[1] ;
  wire [4:2]p_22_out;
  wire [1:0]p_23_out;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire rd_clk;
  wire wr_clk;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_2
       (.I0(p_22_out[3]),
        .I1(Q[3]),
        .I2(p_22_out[2]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(p_22_out[4]),
        .O(ram_empty_i_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_5
       (.I0(p_22_out[3]),
        .I1(\gc0.count_reg[4] [1]),
        .I2(p_22_out[2]),
        .I3(\gc0.count_reg[4] [0]),
        .I4(\gc0.count_reg[4] [2]),
        .I5(p_22_out[4]),
        .O(ram_empty_i_reg_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_3
       (.I0(p_23_out[0]),
        .I1(\gic0.gc0.count_d1_reg[1] [0]),
        .I2(p_23_out[1]),
        .I3(\gic0.gc0.count_d1_reg[1] [1]),
        .O(ram_full_i_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_4
       (.I0(p_23_out[0]),
        .I1(\gic0.gc0.count_reg[1] [0]),
        .I2(p_23_out[1]),
        .I3(\gic0.gc0.count_reg[1] [1]),
        .O(ram_full_i_reg_0));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_generator_0_xpm_cdc_gray rd_pntr_cdc_inst
       (.dest_clk(wr_clk),
        .dest_out_bin({RD_PNTR_WR,p_23_out}),
        .src_clk(rd_clk),
        .src_in_bin(Q));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_generator_0_xpm_cdc_gray__1 wr_pntr_cdc_inst
       (.dest_clk(rd_clk),
        .dest_out_bin({p_22_out,WR_PNTR_RD}),
        .src_clk(wr_clk),
        .src_in_bin(\gic0.gc0.count_d2_reg[4] ));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module fifo_generator_0_clk_x_pntrs_HD7
   (ram_empty_i_reg,
    ram_empty_i_reg_0,
    ram_full_i_reg,
    ram_full_i_reg_0,
    wr_clk,
    rd_clk,
    WR_PNTR_RD,
    RD_PNTR_WR,
    Q,
    \gc0.count_reg[4] ,
    \gic0.gc0.count_d1_reg[1] ,
    \gic0.gc0.count_reg[1] ,
    \gic0.gc0.count_d2_reg[4] );
  output ram_empty_i_reg;
  output ram_empty_i_reg_0;
  output ram_full_i_reg;
  output ram_full_i_reg_0;
  input wr_clk;
  input rd_clk;
  output [1:0]WR_PNTR_RD;
  output [2:0]RD_PNTR_WR;
  input [4:0]Q;
  input [2:0]\gc0.count_reg[4] ;
  input [1:0]\gic0.gc0.count_d1_reg[1] ;
  input [1:0]\gic0.gc0.count_reg[1] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;

  wire [4:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire [1:0]WR_PNTR_RD;
  wire [2:0]\gc0.count_reg[4] ;
  wire [1:0]\gic0.gc0.count_d1_reg[1] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [1:0]\gic0.gc0.count_reg[1] ;
  wire [4:2]p_22_out;
  wire [1:0]p_23_out;
  wire ram_empty_i_reg;
  wire ram_empty_i_reg_0;
  wire ram_full_i_reg;
  wire ram_full_i_reg_0;
  wire rd_clk;
  wire wr_clk;

  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_2
       (.I0(p_22_out[3]),
        .I1(Q[3]),
        .I2(p_22_out[2]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(p_22_out[4]),
        .O(ram_empty_i_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_empty_i_i_5
       (.I0(p_22_out[3]),
        .I1(\gc0.count_reg[4] [1]),
        .I2(p_22_out[2]),
        .I3(\gc0.count_reg[4] [0]),
        .I4(\gc0.count_reg[4] [2]),
        .I5(p_22_out[4]),
        .O(ram_empty_i_reg_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_3
       (.I0(p_23_out[0]),
        .I1(\gic0.gc0.count_d1_reg[1] [0]),
        .I2(p_23_out[1]),
        .I3(\gic0.gc0.count_d1_reg[1] [1]),
        .O(ram_full_i_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_full_i_i_4
       (.I0(p_23_out[0]),
        .I1(\gic0.gc0.count_reg[1] [0]),
        .I2(p_23_out[1]),
        .I3(\gic0.gc0.count_reg[1] [1]),
        .O(ram_full_i_reg_0));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_generator_0_xpm_cdc_gray_HD8 rd_pntr_cdc_inst
       (.dest_clk(wr_clk),
        .dest_out_bin({RD_PNTR_WR,p_23_out}),
        .src_clk(rd_clk),
        .src_in_bin(Q));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "5" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  fifo_generator_0_xpm_cdc_gray__1_HD9 wr_pntr_cdc_inst
       (.dest_clk(rd_clk),
        .dest_out_bin({p_22_out,WR_PNTR_RD}),
        .src_clk(wr_clk),
        .src_in_bin(\gic0.gc0.count_d2_reg[4] ));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module fifo_generator_0_fifo_generator_ramfifo
   (dout,
    empty,
    full,
    rd_clk,
    wr_clk,
    din,
    rd_en,
    wr_en);
  output [7:0]dout;
  output empty;
  output full;
  input rd_clk;
  input wr_clk;
  input [7:0]din;
  input rd_en;
  input wr_en;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_3 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_4 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_8 ;
  wire [4:0]p_0_out;
  wire [4:0]p_12_out;
  wire [1:0]p_13_out;
  wire p_18_out;
  wire [1:0]p_22_out;
  wire [4:2]p_23_out;
  wire ram_rd_en_i;
  wire rd_clk;
  wire rd_en;
  wire [4:2]rd_pntr_plus1;
  wire wr_clk;
  wire wr_en;
  wire [1:0]wr_pntr_plus2;

  fifo_generator_0_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.Q(p_0_out),
        .RD_PNTR_WR(p_23_out),
        .WR_PNTR_RD(p_22_out),
        .\gc0.count_reg[4] (rd_pntr_plus1),
        .\gic0.gc0.count_d1_reg[1] (p_13_out),
        .\gic0.gc0.count_d2_reg[4] (p_12_out),
        .\gic0.gc0.count_reg[1] (wr_pntr_plus2),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .ram_empty_i_reg_0(\gntv_or_sync_fifo.gcx.clkx_n_3 ),
        .ram_full_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_4 ),
        .ram_full_i_reg_0(\gntv_or_sync_fifo.gcx.clkx_n_8 ),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
  fifo_generator_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (p_0_out),
        .E(ram_rd_en_i),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(p_22_out),
        .\dest_out_bin_ff_reg[3] (\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .\dest_out_bin_ff_reg[3]_0 (\gntv_or_sync_fifo.gcx.clkx_n_3 ),
        .empty(empty),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  fifo_generator_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (p_12_out),
        .E(p_18_out),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(p_23_out),
        .\dest_out_bin_ff_reg[0] (\gntv_or_sync_fifo.gcx.clkx_n_4 ),
        .\dest_out_bin_ff_reg[0]_0 (\gntv_or_sync_fifo.gcx.clkx_n_8 ),
        .full(full),
        .\gic0.gc0.count_d2_reg[1] (p_13_out),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  fifo_generator_0_memory \gntv_or_sync_fifo.mem 
       (.E(ram_rd_en_i),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (p_0_out),
        .\gic0.gc0.count_d2_reg[4] (p_12_out),
        .ram_full_fb_i_reg(p_18_out),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module fifo_generator_0_fifo_generator_ramfifo_HD6
   (empty,
    full,
    rd_clk,
    wr_clk,
    rd_en,
    wr_en,
    dout,
    din);
  output empty;
  output full;
  input rd_clk;
  input wr_clk;
  input rd_en;
  input wr_en;
  output [7:0]dout;
  input [7:0]din;

  wire [7:0]din;
  wire [7:0]dout;
  wire \gntv_or_sync_fifo.gcx.clkx_n_0 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_3 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_4 ;
  wire \gntv_or_sync_fifo.gcx.clkx_n_8 ;
  wire [4:0]p_0_out;
  wire [4:0]p_12_out;
  wire [1:0]p_13_out;
  wire p_18_out;
  wire [1:0]p_22_out;
  wire [4:2]p_23_out;
  wire ram_rd_en_i;
  wire rd_clk;
  wire rd_en;
  wire [4:2]rd_pntr_plus1;
  wire wr_clk;
  wire wr_en;
  wire [1:0]wr_pntr_plus2;
  wire \NLW_gntv_or_sync_fifo.gl0.rd_empty_UNCONNECTED ;
  wire \NLW_gntv_or_sync_fifo.gl0.wr_full_UNCONNECTED ;

  fifo_generator_0_clk_x_pntrs_HD7 \gntv_or_sync_fifo.gcx.clkx 
       (.Q(p_0_out),
        .RD_PNTR_WR(p_23_out),
        .WR_PNTR_RD(p_22_out),
        .\gc0.count_reg[4] (rd_pntr_plus1),
        .\gic0.gc0.count_d1_reg[1] (p_13_out),
        .\gic0.gc0.count_d2_reg[4] (p_12_out),
        .\gic0.gc0.count_reg[1] (wr_pntr_plus2),
        .ram_empty_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .ram_empty_i_reg_0(\gntv_or_sync_fifo.gcx.clkx_n_3 ),
        .ram_full_i_reg(\gntv_or_sync_fifo.gcx.clkx_n_4 ),
        .ram_full_i_reg_0(\gntv_or_sync_fifo.gcx.clkx_n_8 ),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
  fifo_generator_0_rd_logic_HD10 \gntv_or_sync_fifo.gl0.rd 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (p_0_out),
        .E(ram_rd_en_i),
        .Q(rd_pntr_plus1),
        .WR_PNTR_RD(p_22_out),
        .\dest_out_bin_ff_reg[3] (\gntv_or_sync_fifo.gcx.clkx_n_0 ),
        .\dest_out_bin_ff_reg[3]_0 (\gntv_or_sync_fifo.gcx.clkx_n_3 ),
        .empty(\NLW_gntv_or_sync_fifo.gl0.rd_empty_UNCONNECTED ),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  fifo_generator_0_wr_logic_HD13 \gntv_or_sync_fifo.gl0.wr 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (p_12_out),
        .E(p_18_out),
        .Q(wr_pntr_plus2),
        .RD_PNTR_WR(p_23_out),
        .\dest_out_bin_ff_reg[0] (\gntv_or_sync_fifo.gcx.clkx_n_4 ),
        .\dest_out_bin_ff_reg[0]_0 (\gntv_or_sync_fifo.gcx.clkx_n_8 ),
        .full(\NLW_gntv_or_sync_fifo.gl0.wr_full_UNCONNECTED ),
        .\gic0.gc0.count_d2_reg[1] (p_13_out),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  fifo_generator_0_memory_HD16 \gntv_or_sync_fifo.mem 
       (.E(ram_rd_en_i),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (p_0_out),
        .\gic0.gc0.count_d2_reg[4] (p_12_out),
        .ram_full_fb_i_reg(p_18_out),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module fifo_generator_0_fifo_generator_top
   (dout,
    empty,
    full,
    rd_clk,
    wr_clk,
    din,
    rd_en,
    wr_en);
  output [7:0]dout;
  output empty;
  output full;
  input rd_clk;
  input wr_clk;
  input [7:0]din;
  input rd_en;
  input wr_en;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  fifo_generator_0_fifo_generator_ramfifo \grf.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module fifo_generator_0_fifo_generator_top_HD5
   (empty,
    full,
    rd_clk,
    wr_clk,
    rd_en,
    wr_en,
    dout,
    din);
  output empty;
  output full;
  input rd_clk;
  input wr_clk;
  input rd_en;
  input wr_en;
  output [7:0]dout;
  input [7:0]din;

  wire [7:0]din;
  wire [7:0]dout;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
  wire \NLW_grf.rf_empty_UNCONNECTED ;
  wire \NLW_grf.rf_full_UNCONNECTED ;

  fifo_generator_0_fifo_generator_ramfifo_HD6 \grf.rf 
       (.din(din),
        .dout(dout),
        .empty(\NLW_grf.rf_empty_UNCONNECTED ),
        .full(\NLW_grf.rf_full_UNCONNECTED ),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "5" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "8" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "8" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "spartan7" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "0" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "29" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "28" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "5" *) 
(* C_RD_DEPTH = "32" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "5" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "5" *) 
(* C_WR_DEPTH = "32" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "5" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_2" *) 
module fifo_generator_0_fifo_generator_v13_2_2
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input [4:0]prog_empty_thresh;
  input [4:0]prog_empty_thresh_assert;
  input [4:0]prog_empty_thresh_negate;
  input [4:0]prog_full_thresh;
  input [4:0]prog_full_thresh_assert;
  input [4:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [7:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [4:0]data_count;
  output [4:0]rd_data_count;
  output [4:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  fifo_generator_0_fifo_generator_v13_2_2_synth inst_fifo_gen
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "5" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "8" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "8" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "0" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "spartan7" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "0" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "29" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "28" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "5" *) 
(* C_RD_DEPTH = "32" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "5" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "0" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "5" *) 
(* C_WR_DEPTH = "32" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "5" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_2" *) 
module fifo_generator_0_fifo_generator_v13_2_2_HD3
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    wr_en,
    rd_en,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty,
    din,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    dout,
    data_count,
    rd_data_count,
    wr_data_count,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wuser,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wuser,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_ruser,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_ruser,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input wr_en;
  input rd_en;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input s_axi_awvalid;
  output s_axi_awready;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output s_axi_bvalid;
  input s_axi_bready;
  output m_axi_awvalid;
  input m_axi_awready;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input m_axi_bvalid;
  output m_axi_bready;
  input s_axi_arvalid;
  output s_axi_arready;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output m_axi_arvalid;
  input m_axi_arready;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input s_axis_tlast;
  output m_axis_tvalid;
  input m_axis_tready;
  output m_axis_tlast;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;
  input [7:0]din;
  input [4:0]prog_empty_thresh;
  input [4:0]prog_empty_thresh_assert;
  input [4:0]prog_empty_thresh_negate;
  input [4:0]prog_full_thresh;
  input [4:0]prog_full_thresh_assert;
  input [4:0]prog_full_thresh_negate;
  output [7:0]dout;
  output [4:0]data_count;
  output [4:0]rd_data_count;
  output [4:0]wr_data_count;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input [0:0]s_axi_wuser;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output [0:0]m_axi_wuser;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_ruser;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input [0:0]m_axi_ruser;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;

  wire [7:0]din;
  wire [7:0]dout;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
  wire NLW_inst_fifo_gen_empty_UNCONNECTED;
  wire NLW_inst_fifo_gen_full_UNCONNECTED;

  fifo_generator_0_fifo_generator_v13_2_2_synth_HD4 inst_fifo_gen
       (.din(din),
        .dout(dout),
        .empty(NLW_inst_fifo_gen_empty_UNCONNECTED),
        .full(NLW_inst_fifo_gen_full_UNCONNECTED),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_2_synth" *) 
module fifo_generator_0_fifo_generator_v13_2_2_synth
   (dout,
    empty,
    full,
    rd_clk,
    wr_clk,
    din,
    rd_en,
    wr_en);
  output [7:0]dout;
  output empty;
  output full;
  input rd_clk;
  input wr_clk;
  input [7:0]din;
  input rd_en;
  input wr_en;

  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  fifo_generator_0_fifo_generator_top \gconvfifo.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_2_synth" *) 
module fifo_generator_0_fifo_generator_v13_2_2_synth_HD4
   (empty,
    full,
    rd_clk,
    wr_clk,
    rd_en,
    wr_en,
    dout,
    din);
  output empty;
  output full;
  input rd_clk;
  input wr_clk;
  input rd_en;
  input wr_en;
  output [7:0]dout;
  input [7:0]din;

  wire [7:0]din;
  wire [7:0]dout;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
  wire \NLW_gconvfifo.rf_empty_UNCONNECTED ;
  wire \NLW_gconvfifo.rf_full_UNCONNECTED ;

  fifo_generator_0_fifo_generator_top_HD5 \gconvfifo.rf 
       (.din(din),
        .dout(dout),
        .empty(\NLW_gconvfifo.rf_empty_UNCONNECTED ),
        .full(\NLW_gconvfifo.rf_full_UNCONNECTED ),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module fifo_generator_0_memory
   (dout,
    rd_clk,
    wr_clk,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  output [7:0]dout;
  input rd_clk;
  input wr_clk;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;

  fifo_generator_0_blk_mem_gen_v8_4_1 \gbm.gbmg.gbmga.ngecc.bmg 
       (.E(E),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gic0.gc0.count_d2_reg[4] (\gic0.gc0.count_d2_reg[4] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module fifo_generator_0_memory_HD16
   (rd_clk,
    wr_clk,
    dout,
    E,
    ram_full_fb_i_reg,
    \gc0.count_d1_reg[4] ,
    \gic0.gc0.count_d2_reg[4] ,
    din);
  input rd_clk;
  input wr_clk;
  output [7:0]dout;
  input [0:0]E;
  input [0:0]ram_full_fb_i_reg;
  input [4:0]\gc0.count_d1_reg[4] ;
  input [4:0]\gic0.gc0.count_d2_reg[4] ;
  input [7:0]din;

  wire [0:0]E;
  wire [7:0]din;
  wire [7:0]dout;
  wire [4:0]\gc0.count_d1_reg[4] ;
  wire [4:0]\gic0.gc0.count_d2_reg[4] ;
  wire [0:0]ram_full_fb_i_reg;
  wire rd_clk;
  wire wr_clk;

  fifo_generator_0_blk_mem_gen_v8_4_1_HD17 \gbm.gbmg.gbmga.ngecc.bmg 
       (.E(E),
        .din(din),
        .dout(dout),
        .\gc0.count_d1_reg[4] (\gc0.count_d1_reg[4] ),
        .\gic0.gc0.count_d2_reg[4] (\gic0.gc0.count_d2_reg[4] ),
        .ram_full_fb_i_reg(ram_full_fb_i_reg),
        .rd_clk(rd_clk),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module fifo_generator_0_rd_bin_cntr
   (ram_empty_i_reg,
    Q,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \dest_out_bin_ff_reg[3] ,
    rd_en,
    out,
    \dest_out_bin_ff_reg[3]_0 ,
    WR_PNTR_RD,
    E,
    rd_clk);
  output ram_empty_i_reg;
  output [2:0]Q;
  output [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input \dest_out_bin_ff_reg[3] ;
  input rd_en;
  input out;
  input \dest_out_bin_ff_reg[3]_0 ;
  input [1:0]WR_PNTR_RD;
  input [0:0]E;
  input rd_clk;

  wire [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [0:0]E;
  wire [2:0]Q;
  wire [1:0]WR_PNTR_RD;
  wire \dest_out_bin_ff_reg[3] ;
  wire \dest_out_bin_ff_reg[3]_0 ;
  wire out;
  wire [4:0]plusOp;
  wire ram_empty_i_i_3_n_0;
  wire ram_empty_i_i_4_n_0;
  wire ram_empty_i_reg;
  wire rd_clk;
  wire rd_en;
  wire [1:0]rd_pntr_plus1;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(Q[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(Q[0]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(Q[0]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(Q[1]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(Q[2]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[0]),
        .Q(rd_pntr_plus1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[2]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[3]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[4]),
        .Q(Q[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    ram_empty_i_i_1
       (.I0(\dest_out_bin_ff_reg[3] ),
        .I1(ram_empty_i_i_3_n_0),
        .I2(rd_en),
        .I3(out),
        .I4(ram_empty_i_i_4_n_0),
        .I5(\dest_out_bin_ff_reg[3]_0 ),
        .O(ram_empty_i_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_3
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [0]),
        .I1(WR_PNTR_RD[0]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [1]),
        .I3(WR_PNTR_RD[1]),
        .O(ram_empty_i_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_4
       (.I0(rd_pntr_plus1[0]),
        .I1(WR_PNTR_RD[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(WR_PNTR_RD[1]),
        .O(ram_empty_i_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module fifo_generator_0_rd_bin_cntr_HD12
   (ram_empty_i_reg,
    \dest_out_bin_ff_reg[3] ,
    rd_en,
    out,
    \dest_out_bin_ff_reg[3]_0 ,
    rd_clk,
    Q,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    WR_PNTR_RD,
    E);
  output ram_empty_i_reg;
  input \dest_out_bin_ff_reg[3] ;
  input rd_en;
  input out;
  input \dest_out_bin_ff_reg[3]_0 ;
  input rd_clk;
  output [2:0]Q;
  output [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [1:0]WR_PNTR_RD;
  input [0:0]E;

  wire [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [0:0]E;
  wire [2:0]Q;
  wire [1:0]WR_PNTR_RD;
  wire \dest_out_bin_ff_reg[3] ;
  wire \dest_out_bin_ff_reg[3]_0 ;
  wire out;
  wire [4:0]plusOp;
  wire ram_empty_i_i_3_n_0;
  wire ram_empty_i_i_4_n_0;
  wire ram_empty_i_reg;
  wire rd_clk;
  wire rd_en;
  wire [1:0]rd_pntr_plus1;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gc0.count[0]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .O(plusOp[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc0.count[1]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc0.count[2]_i_1 
       (.I0(rd_pntr_plus1[0]),
        .I1(rd_pntr_plus1[1]),
        .I2(Q[0]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc0.count[3]_i_1 
       (.I0(rd_pntr_plus1[1]),
        .I1(rd_pntr_plus1[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc0.count[4]_i_1 
       (.I0(Q[0]),
        .I1(rd_pntr_plus1[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(plusOp[4]));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(Q[0]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(Q[1]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_d1_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(Q[2]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \gc0.count_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[0]),
        .Q(rd_pntr_plus1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[1]),
        .Q(rd_pntr_plus1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[2]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[3]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gc0.count_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp[4]),
        .Q(Q[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    ram_empty_i_i_1
       (.I0(\dest_out_bin_ff_reg[3] ),
        .I1(ram_empty_i_i_3_n_0),
        .I2(rd_en),
        .I3(out),
        .I4(ram_empty_i_i_4_n_0),
        .I5(\dest_out_bin_ff_reg[3]_0 ),
        .O(ram_empty_i_reg));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_3
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [0]),
        .I1(WR_PNTR_RD[0]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [1]),
        .I3(WR_PNTR_RD[1]),
        .O(ram_empty_i_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    ram_empty_i_i_4
       (.I0(rd_pntr_plus1[0]),
        .I1(WR_PNTR_RD[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(WR_PNTR_RD[1]),
        .O(ram_empty_i_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module fifo_generator_0_rd_logic
   (empty,
    E,
    Q,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    rd_clk,
    rd_en,
    \dest_out_bin_ff_reg[3] ,
    \dest_out_bin_ff_reg[3]_0 ,
    WR_PNTR_RD);
  output empty;
  output [0:0]E;
  output [2:0]Q;
  output [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input rd_clk;
  input rd_en;
  input \dest_out_bin_ff_reg[3] ;
  input \dest_out_bin_ff_reg[3]_0 ;
  input [1:0]WR_PNTR_RD;

  wire [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [0:0]E;
  wire [2:0]Q;
  wire [1:0]WR_PNTR_RD;
  wire \dest_out_bin_ff_reg[3] ;
  wire \dest_out_bin_ff_reg[3]_0 ;
  wire empty;
  wire p_2_out;
  wire rd_clk;
  wire rd_en;
  wire rpntr_n_0;

  fifo_generator_0_rd_status_flags_as \gras.rsts 
       (.E(E),
        .empty(empty),
        .out(p_2_out),
        .ram_empty_fb_i_reg_0(rpntr_n_0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  fifo_generator_0_rd_bin_cntr rpntr
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\dest_out_bin_ff_reg[3] (\dest_out_bin_ff_reg[3] ),
        .\dest_out_bin_ff_reg[3]_0 (\dest_out_bin_ff_reg[3]_0 ),
        .out(p_2_out),
        .ram_empty_i_reg(rpntr_n_0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module fifo_generator_0_rd_logic_HD10
   (empty,
    rd_clk,
    rd_en,
    \dest_out_bin_ff_reg[3] ,
    \dest_out_bin_ff_reg[3]_0 ,
    E,
    Q,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    WR_PNTR_RD);
  output empty;
  input rd_clk;
  input rd_en;
  input \dest_out_bin_ff_reg[3] ;
  input \dest_out_bin_ff_reg[3]_0 ;
  output [0:0]E;
  output [2:0]Q;
  output [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [1:0]WR_PNTR_RD;

  wire [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [0:0]E;
  wire [2:0]Q;
  wire [1:0]WR_PNTR_RD;
  wire \dest_out_bin_ff_reg[3] ;
  wire \dest_out_bin_ff_reg[3]_0 ;
  wire p_2_out;
  wire rd_clk;
  wire rd_en;
  wire rpntr_n_0;
  wire \NLW_gras.rsts_empty_UNCONNECTED ;

  fifo_generator_0_rd_status_flags_as_HD11 \gras.rsts 
       (.E(E),
        .empty(\NLW_gras.rsts_empty_UNCONNECTED ),
        .out(p_2_out),
        .ram_empty_fb_i_reg_0(rpntr_n_0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  fifo_generator_0_rd_bin_cntr_HD12 rpntr
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\dest_out_bin_ff_reg[3] (\dest_out_bin_ff_reg[3] ),
        .\dest_out_bin_ff_reg[3]_0 (\dest_out_bin_ff_reg[3]_0 ),
        .out(p_2_out),
        .ram_empty_i_reg(rpntr_n_0),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module fifo_generator_0_rd_status_flags_as
   (empty,
    out,
    E,
    ram_empty_fb_i_reg_0,
    rd_clk,
    rd_en);
  output empty;
  output out;
  output [0:0]E;
  input ram_empty_fb_i_reg_0;
  input rd_clk;
  input rd_en;

  wire [0:0]E;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  wire ram_empty_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  assign empty = ram_empty_i;
  assign out = ram_empty_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_fb_i_reg_0),
        .Q(ram_empty_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_fb_i_reg_0),
        .Q(ram_empty_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module fifo_generator_0_rd_status_flags_as_HD11
   (empty,
    out,
    ram_empty_fb_i_reg_0,
    rd_clk,
    rd_en,
    E);
  output empty;
  output out;
  input ram_empty_fb_i_reg_0;
  input rd_clk;
  input rd_en;
  output [0:0]E;

  wire [0:0]E;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  wire ram_empty_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire rd_clk;
  wire rd_en;

  assign empty = ram_empty_i;
  assign out = ram_empty_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_fb_i_reg_0),
        .Q(ram_empty_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_fb_i_reg_0),
        .Q(ram_empty_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module fifo_generator_0_wr_bin_cntr
   (ram_full_i_reg,
    Q,
    \gic0.gc0.count_d2_reg[1]_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \dest_out_bin_ff_reg[0] ,
    wr_en,
    out,
    \dest_out_bin_ff_reg[0]_0 ,
    RD_PNTR_WR,
    E,
    wr_clk);
  output ram_full_i_reg;
  output [1:0]Q;
  output [1:0]\gic0.gc0.count_d2_reg[1]_0 ;
  output [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input \dest_out_bin_ff_reg[0] ;
  input wr_en;
  input out;
  input \dest_out_bin_ff_reg[0]_0 ;
  input [2:0]RD_PNTR_WR;
  input [0:0]E;
  input wr_clk;

  wire [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [0:0]E;
  wire [1:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[0] ;
  wire \dest_out_bin_ff_reg[0]_0 ;
  wire [1:0]\gic0.gc0.count_d2_reg[1]_0 ;
  wire out;
  wire [4:2]p_13_out;
  wire [4:0]plusOp__0;
  wire ram_full_i_i_2_n_0;
  wire ram_full_i_i_5_n_0;
  wire ram_full_i_reg;
  wire wr_clk;
  wire wr_en;
  wire [4:2]wr_pntr_plus2;

  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(wr_pntr_plus2[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(wr_pntr_plus2[2]),
        .I3(wr_pntr_plus2[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc0.count[4]_i_1 
       (.I0(wr_pntr_plus2[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(wr_pntr_plus2[3]),
        .I4(wr_pntr_plus2[4]),
        .O(plusOp__0[4]));
  FDRE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[0]),
        .Q(\gic0.gc0.count_d2_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[1]),
        .Q(\gic0.gc0.count_d2_reg[1]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus2[2]),
        .Q(p_13_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus2[3]),
        .Q(p_13_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus2[4]),
        .Q(p_13_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d2_reg[1]_0 [0]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d2_reg[1]_0 [1]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(p_13_out[2]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(p_13_out[3]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(p_13_out[4]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(wr_pntr_plus2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(wr_pntr_plus2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(wr_pntr_plus2[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    ram_full_i_i_1
       (.I0(ram_full_i_i_2_n_0),
        .I1(\dest_out_bin_ff_reg[0] ),
        .I2(wr_en),
        .I3(out),
        .I4(\dest_out_bin_ff_reg[0]_0 ),
        .I5(ram_full_i_i_5_n_0),
        .O(ram_full_i_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_2
       (.I0(p_13_out[3]),
        .I1(RD_PNTR_WR[1]),
        .I2(p_13_out[2]),
        .I3(RD_PNTR_WR[0]),
        .I4(RD_PNTR_WR[2]),
        .I5(p_13_out[4]),
        .O(ram_full_i_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_5
       (.I0(wr_pntr_plus2[3]),
        .I1(RD_PNTR_WR[1]),
        .I2(wr_pntr_plus2[2]),
        .I3(RD_PNTR_WR[0]),
        .I4(RD_PNTR_WR[2]),
        .I5(wr_pntr_plus2[4]),
        .O(ram_full_i_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module fifo_generator_0_wr_bin_cntr_HD15
   (ram_full_i_reg,
    \dest_out_bin_ff_reg[0] ,
    wr_en,
    out,
    \dest_out_bin_ff_reg[0]_0 ,
    wr_clk,
    Q,
    \gic0.gc0.count_d2_reg[1]_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    RD_PNTR_WR,
    E);
  output ram_full_i_reg;
  input \dest_out_bin_ff_reg[0] ;
  input wr_en;
  input out;
  input \dest_out_bin_ff_reg[0]_0 ;
  input wr_clk;
  output [1:0]Q;
  output [1:0]\gic0.gc0.count_d2_reg[1]_0 ;
  output [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [2:0]RD_PNTR_WR;
  input [0:0]E;

  wire [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [0:0]E;
  wire [1:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[0] ;
  wire \dest_out_bin_ff_reg[0]_0 ;
  wire [1:0]\gic0.gc0.count_d2_reg[1]_0 ;
  wire out;
  wire [4:2]p_13_out;
  wire [4:0]plusOp__0;
  wire ram_full_i_i_2_n_0;
  wire ram_full_i_i_5_n_0;
  wire ram_full_i_reg;
  wire wr_clk;
  wire wr_en;
  wire [4:2]wr_pntr_plus2;

  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(wr_pntr_plus2[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc0.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(wr_pntr_plus2[2]),
        .I3(wr_pntr_plus2[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc0.count[4]_i_1 
       (.I0(wr_pntr_plus2[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(wr_pntr_plus2[3]),
        .I4(wr_pntr_plus2[4]),
        .O(plusOp__0[4]));
  FDRE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[0]),
        .Q(\gic0.gc0.count_d2_reg[1]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[1]),
        .Q(\gic0.gc0.count_d2_reg[1]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus2[2]),
        .Q(p_13_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus2[3]),
        .Q(p_13_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d1_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus2[4]),
        .Q(p_13_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d2_reg[1]_0 [0]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc0.count_d2_reg[1]_0 [1]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(p_13_out[2]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(p_13_out[3]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_d2_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(p_13_out[4]),
        .Q(\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \gic0.gc0.count_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(wr_pntr_plus2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(wr_pntr_plus2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc0.count_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(wr_pntr_plus2[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    ram_full_i_i_1
       (.I0(ram_full_i_i_2_n_0),
        .I1(\dest_out_bin_ff_reg[0] ),
        .I2(wr_en),
        .I3(out),
        .I4(\dest_out_bin_ff_reg[0]_0 ),
        .I5(ram_full_i_i_5_n_0),
        .O(ram_full_i_reg));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_2
       (.I0(p_13_out[3]),
        .I1(RD_PNTR_WR[1]),
        .I2(p_13_out[2]),
        .I3(RD_PNTR_WR[0]),
        .I4(RD_PNTR_WR[2]),
        .I5(p_13_out[4]),
        .O(ram_full_i_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    ram_full_i_i_5
       (.I0(wr_pntr_plus2[3]),
        .I1(RD_PNTR_WR[1]),
        .I2(wr_pntr_plus2[2]),
        .I3(RD_PNTR_WR[0]),
        .I4(RD_PNTR_WR[2]),
        .I5(wr_pntr_plus2[4]),
        .O(ram_full_i_i_5_n_0));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module fifo_generator_0_wr_logic
   (full,
    E,
    Q,
    \gic0.gc0.count_d2_reg[1] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    wr_clk,
    \dest_out_bin_ff_reg[0] ,
    wr_en,
    \dest_out_bin_ff_reg[0]_0 ,
    RD_PNTR_WR);
  output full;
  output [0:0]E;
  output [1:0]Q;
  output [1:0]\gic0.gc0.count_d2_reg[1] ;
  output [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input wr_clk;
  input \dest_out_bin_ff_reg[0] ;
  input wr_en;
  input \dest_out_bin_ff_reg[0]_0 ;
  input [2:0]RD_PNTR_WR;

  wire [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [0:0]E;
  wire [1:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[0] ;
  wire \dest_out_bin_ff_reg[0]_0 ;
  wire full;
  wire [1:0]\gic0.gc0.count_d2_reg[1] ;
  wire \gwas.wsts_n_1 ;
  wire wpntr_n_0;
  wire wr_clk;
  wire wr_en;

  fifo_generator_0_wr_status_flags_as \gwas.wsts 
       (.E(E),
        .full(full),
        .out(\gwas.wsts_n_1 ),
        .ram_full_fb_i_reg_0(wpntr_n_0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  fifo_generator_0_wr_bin_cntr wpntr
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\dest_out_bin_ff_reg[0] (\dest_out_bin_ff_reg[0] ),
        .\dest_out_bin_ff_reg[0]_0 (\dest_out_bin_ff_reg[0]_0 ),
        .\gic0.gc0.count_d2_reg[1]_0 (\gic0.gc0.count_d2_reg[1] ),
        .out(\gwas.wsts_n_1 ),
        .ram_full_i_reg(wpntr_n_0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module fifo_generator_0_wr_logic_HD13
   (full,
    wr_clk,
    \dest_out_bin_ff_reg[0] ,
    wr_en,
    \dest_out_bin_ff_reg[0]_0 ,
    E,
    Q,
    \gic0.gc0.count_d2_reg[1] ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    RD_PNTR_WR);
  output full;
  input wr_clk;
  input \dest_out_bin_ff_reg[0] ;
  input wr_en;
  input \dest_out_bin_ff_reg[0]_0 ;
  output [0:0]E;
  output [1:0]Q;
  output [1:0]\gic0.gc0.count_d2_reg[1] ;
  output [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [2:0]RD_PNTR_WR;

  wire [4:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [0:0]E;
  wire [1:0]Q;
  wire [2:0]RD_PNTR_WR;
  wire \dest_out_bin_ff_reg[0] ;
  wire \dest_out_bin_ff_reg[0]_0 ;
  wire [1:0]\gic0.gc0.count_d2_reg[1] ;
  wire \gwas.wsts_n_1 ;
  wire wpntr_n_0;
  wire wr_clk;
  wire wr_en;
  wire \NLW_gwas.wsts_full_UNCONNECTED ;

  fifo_generator_0_wr_status_flags_as_HD14 \gwas.wsts 
       (.E(E),
        .full(\NLW_gwas.wsts_full_UNCONNECTED ),
        .out(\gwas.wsts_n_1 ),
        .ram_full_fb_i_reg_0(wpntr_n_0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  fifo_generator_0_wr_bin_cntr_HD15 wpntr
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .E(E),
        .Q(Q),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\dest_out_bin_ff_reg[0] (\dest_out_bin_ff_reg[0] ),
        .\dest_out_bin_ff_reg[0]_0 (\dest_out_bin_ff_reg[0]_0 ),
        .\gic0.gc0.count_d2_reg[1]_0 (\gic0.gc0.count_d2_reg[1] ),
        .out(\gwas.wsts_n_1 ),
        .ram_full_i_reg(wpntr_n_0),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module fifo_generator_0_wr_status_flags_as
   (full,
    out,
    E,
    ram_full_fb_i_reg_0,
    wr_clk,
    wr_en);
  output full;
  output out;
  output [0:0]E;
  input ram_full_fb_i_reg_0;
  input wr_clk;
  input wr_en;

  wire [0:0]E;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  wire ram_full_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_full_i;
  wire wr_clk;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg_0),
        .Q(ram_full_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg_0),
        .Q(ram_full_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module fifo_generator_0_wr_status_flags_as_HD14
   (full,
    out,
    ram_full_fb_i_reg_0,
    wr_clk,
    wr_en,
    E);
  output full;
  output out;
  input ram_full_fb_i_reg_0;
  input wr_clk;
  input wr_en;
  output [0:0]E;

  wire [0:0]E;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  wire ram_full_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_full_i;
  wire wr_clk;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg_0),
        .Q(ram_full_fb_i),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_fb_i_reg_0),
        .Q(ram_full_i),
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
