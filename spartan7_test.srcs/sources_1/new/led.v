`timescale 1ns / 1ps

// ÐÞ¸Ä

module led(
    input [2:0] addr,
    input din,
    output dout0, dout1, dout2, dout3, dout4, dout5, dout6, dout7
    );
    
    assign dout0 = (addr==3'd0) ? din : 1'b0;
    assign dout1 = (addr==3'd1) ? din : 1'b0;
    assign dout2 = (addr==3'd2) ? din : 1'b0;
    assign dout3 = (addr==3'd3) ? din : 1'b0;
    assign dout4 = (addr==3'd4) ? din : 1'b0;
    assign dout5 = (addr==3'd5) ? din : 1'b0;
    assign dout6 = (addr==3'd6) ? din : 1'b0;
    assign dout7 = (addr==3'd7) ? din : 1'b0;
    
endmodule
