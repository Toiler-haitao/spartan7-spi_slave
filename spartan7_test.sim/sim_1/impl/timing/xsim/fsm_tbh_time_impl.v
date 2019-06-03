// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon May 13 17:43:09 2019
// Host        : MALIC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/FILES/asw_files/FPGA/spartan7_test/spartan7_test.sim/sim_1/impl/timing/xsim/fsm_tbh_time_impl.v
// Design      : fsm
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s15ftgb196-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "c333865a" *) (* S0 = "2'b00" *) (* S1 = "2'b01" *) 
(* S2 = "2'b10" *) 
(* NotValidForBitStream *)
module fsm
   (clk,
    rst_n,
    a,
    b,
    c,
    led);
  input clk;
  input rst_n;
  input a;
  input b;
  input c;
  output [1:0]led;

  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire a;
  wire a_IBUF;
  wire b;
  wire b_IBUF;
  wire c;
  wire c_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  (* RTL_KEEP = "yes" *) wire [1:0]current_state;
  wire [1:0]led;
  wire \led[0]_i_1_n_0 ;
  wire \led[1]_i_1_n_0 ;
  wire [1:0]led_OBUF;
  wire [1:1]next_state;
  wire rst_n;
  wire rst_n_IBUF;

initial begin
 $sdf_annotate("fsm_tbh_time_impl.sdf",,,,"tool_control");
end
  LUT4 #(
    .INIT(16'h002E)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(a_IBUF),
        .I1(current_state[0]),
        .I2(b_IBUF),
        .I3(current_state[1]),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0838)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(b_IBUF),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .I3(c_IBUF),
        .O(next_state));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(rst_n_IBUF),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "S1:01,S2:10,S0:00" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "S1:01,S2:10,S0:00" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .D(next_state),
        .Q(current_state[1]));
  IBUF a_IBUF_inst
       (.I(a),
        .O(a_IBUF));
  IBUF b_IBUF_inst
       (.I(b),
        .O(b_IBUF));
  IBUF c_IBUF_inst
       (.I(c),
        .O(c_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT4 #(
    .INIT(16'h0232)) 
    \led[0]_i_1 
       (.I0(a_IBUF),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(b_IBUF),
        .O(\led[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3044)) 
    \led[1]_i_1 
       (.I0(c_IBUF),
        .I1(current_state[1]),
        .I2(b_IBUF),
        .I3(current_state[0]),
        .O(\led[1]_i_1_n_0 ));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\led[0]_i_1_n_0 ),
        .Q(led_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\led[1]_i_1_n_0 ),
        .Q(led_OBUF[1]),
        .R(1'b0));
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
