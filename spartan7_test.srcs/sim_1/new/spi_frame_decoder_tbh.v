`timescale 1ns / 1ps

module spi_frame_decoder_tbh();
    reg clk, rst_n;

    reg frame_end;

    wire fifo_rd_en, fifo_clk;

    wire [7:0] fifo_data;
    wire fifo_empty;

    wire frame_ready, frame_error;
    wire [7:0] func_byte, length_byte, param1_byte, param2_byte;


    reg wr_clk;
    reg wr_en;
    reg [7:0] din;
    wire full;

	fifo_generator_0 u1(wr_clk, fifo_clk, din, wr_en, fifo_rd_en, fifo_data, full, fifo_empty);
    spi_frame_decoder u2(clk, rst_n, frame_end, fifo_data, fifo_empty, fifo_clk, fifo_rd_en, frame_ready, frame_error, func_byte, length_byte, param1_byte, param2_byte);

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;
        wr_clk = 0;
        wr_en = 0;
        din = 0;
        frame_end = 0;

        #10;
        rst_n = 1;

        #10 wr_en = 1;

        #10 din = 8'h0A;
        #10 wr_clk = 1;
        #10 wr_clk = 0;

        #10 din = 8'hAA;
        #10 wr_clk = 1;
        #10 wr_clk = 0;

        #10 din = 8'h01;
        #10 wr_clk = 1;
        #10 wr_clk = 0;

        #10 din = 8'h00;
        #10 wr_clk = 1;
        #10 wr_clk = 0;

        #10 din = 8'hAB;
        #10 wr_clk = 1;
        #10 wr_clk = 0;


        #10 wr_en = 0;
		
		#10 wr_clk = 1;
        #10 wr_clk = 0;

        #10 frame_end = 1;
        #10 frame_end = 0;

        #300;

        #10 wr_en = 1;

        #10 din = 8'hAA;
        #10 wr_clk = 1;
        #10 wr_clk = 0;
        
        #10 din = 8'h03;
        #10 wr_clk = 1;
        #10 wr_clk = 0;
        
        #10 din = 8'h02;
        #10 wr_clk = 1;
        #10 wr_clk = 0;

        #10 din = 8'h01;
        #10 wr_clk = 1;
        #10 wr_clk = 0;

        #10 din = 8'h02;
        #10 wr_clk = 1;
        #10 wr_clk = 0;
        
        #10 din = 8'hB2;
        #10 wr_clk = 1;
        #10 wr_clk = 0;

        #10 wr_en = 0;
		
		#10 wr_clk = 1;
        #10 wr_clk = 0;

        #10 frame_end = 1;
        #10 frame_end = 0;
    end

endmodule
