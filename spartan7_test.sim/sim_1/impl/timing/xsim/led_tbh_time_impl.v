// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue May 14 15:40:01 2019
// Host        : MALIC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.sim/sim_1/impl/timing/xsim/led_tbh_time_impl.v
// Design      : led
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "e8d3ce98" *) 
(* NotValidForBitStream *)
module led
   (addr,
    din,
    dout0,
    dout1,
    dout2,
    dout3,
    dout4,
    dout5,
    dout6,
    dout7);
  input [2:0]addr;
  input din;
  output dout0;
  output dout1;
  output dout2;
  output dout3;
  output dout4;
  output dout5;
  output dout6;
  output dout7;

  wire [2:0]addr;
  wire [2:0]addr_IBUF;
  wire din;
  wire din_IBUF;
  wire dout0;
  wire dout0_OBUF;
  wire dout1;
  wire dout1_OBUF;
  wire dout2;
  wire dout2_OBUF;
  wire dout3;
  wire dout3_OBUF;
  wire dout4;
  wire dout4_OBUF;
  wire dout5;
  wire dout5_OBUF;
  wire dout6;
  wire dout6_OBUF;
  wire dout7;
  wire dout7_OBUF;

initial begin
 $sdf_annotate("led_tbh_time_impl.sdf",,,,"tool_control");
end
  IBUF \addr_IBUF[0]_inst 
       (.I(addr[0]),
        .O(addr_IBUF[0]));
  IBUF \addr_IBUF[1]_inst 
       (.I(addr[1]),
        .O(addr_IBUF[1]));
  IBUF \addr_IBUF[2]_inst 
       (.I(addr[2]),
        .O(addr_IBUF[2]));
  IBUF din_IBUF_inst
       (.I(din),
        .O(din_IBUF));
  OBUF dout0_OBUF_inst
       (.I(dout0_OBUF),
        .O(dout0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    dout0_OBUF_inst_i_1
       (.I0(addr_IBUF[1]),
        .I1(din_IBUF),
        .I2(addr_IBUF[0]),
        .I3(addr_IBUF[2]),
        .O(dout0_OBUF));
  OBUF dout1_OBUF_inst
       (.I(dout1_OBUF),
        .O(dout1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    dout1_OBUF_inst_i_1
       (.I0(addr_IBUF[1]),
        .I1(addr_IBUF[0]),
        .I2(din_IBUF),
        .I3(addr_IBUF[2]),
        .O(dout1_OBUF));
  OBUF dout2_OBUF_inst
       (.I(dout2_OBUF),
        .O(dout2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    dout2_OBUF_inst_i_1
       (.I0(addr_IBUF[0]),
        .I1(addr_IBUF[1]),
        .I2(din_IBUF),
        .I3(addr_IBUF[2]),
        .O(dout2_OBUF));
  OBUF dout3_OBUF_inst
       (.I(dout3_OBUF),
        .O(dout3));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    dout3_OBUF_inst_i_1
       (.I0(addr_IBUF[0]),
        .I1(addr_IBUF[1]),
        .I2(din_IBUF),
        .I3(addr_IBUF[2]),
        .O(dout3_OBUF));
  OBUF dout4_OBUF_inst
       (.I(dout4_OBUF),
        .O(dout4));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    dout4_OBUF_inst_i_1
       (.I0(addr_IBUF[0]),
        .I1(din_IBUF),
        .I2(addr_IBUF[2]),
        .I3(addr_IBUF[1]),
        .O(dout4_OBUF));
  OBUF dout5_OBUF_inst
       (.I(dout5_OBUF),
        .O(dout5));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    dout5_OBUF_inst_i_1
       (.I0(addr_IBUF[0]),
        .I1(din_IBUF),
        .I2(addr_IBUF[2]),
        .I3(addr_IBUF[1]),
        .O(dout5_OBUF));
  OBUF dout6_OBUF_inst
       (.I(dout6_OBUF),
        .O(dout6));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    dout6_OBUF_inst_i_1
       (.I0(addr_IBUF[1]),
        .I1(din_IBUF),
        .I2(addr_IBUF[2]),
        .I3(addr_IBUF[0]),
        .O(dout6_OBUF));
  OBUF dout7_OBUF_inst
       (.I(dout7_OBUF),
        .O(dout7));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    dout7_OBUF_inst_i_1
       (.I0(addr_IBUF[2]),
        .I1(addr_IBUF[0]),
        .I2(addr_IBUF[1]),
        .I3(din_IBUF),
        .O(dout7_OBUF));
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
