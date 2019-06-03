`timescale 1ns / 1ps

module spi_frame_encoder_tbh();

    reg clk, rst_n;

    reg spi_cs_start, spi_cs_end, spi_sent_start;
    wire [7:0] spi_sent_data;

    reg spi_func_ready;
    reg [7:0] func_byte, param_byte;
    wire spi_frame_end;
    wire fifo_rd_en, fifo_rd_clk;
    reg [7:0] fifo_data;

    spi_frame_encoder u1(clk, rst_n,
                        spi_cs_start, spi_cs_end, spi_sent_start, spi_sent_data,
                        spi_func_ready, func_byte, param_byte, spi_frame_end,
                        fifo_rd_en, fifo_rd_clk,fifo_data
                        );

    always #5 clk <= ~clk;

    always @ (posedge fifo_rd_clk) fifo_data <= fifo_data + 1'b1;

    initial begin
        clk = 0;
        rst_n = 0;
        spi_cs_start = 0;
        spi_cs_end = 0;
        spi_sent_start = 0;
        spi_func_ready = 0;
        func_byte = 0;
        param_byte = 0;
        fifo_data = 0;

        #15 rst_n = 1;

        #200;
        func_byte  = 8'd7;
        param_byte = 8'd1;
        #10 spi_func_ready = 1;

        #50 spi_cs_start = 1;
        #10 spi_cs_start = 0;

        #31 spi_sent_start = 1;
        #10 spi_sent_start = 0;

        #200 spi_sent_start = 1;
        #10 spi_sent_start = 0;

        #200 spi_sent_start = 1;
        #10 spi_sent_start = 0;

        #200 spi_sent_start = 1;
        #10 spi_sent_start = 0;

        #200 spi_sent_start = 1;
        #10 spi_sent_start = 0;

        #200 spi_sent_start = 1;
        #10 spi_sent_start = 0;

        #200 spi_cs_end = 1;
        #10 spi_cs_end = 0;

        #100 spi_func_ready = 0;
        func_byte  = 8'd0;
        param_byte = 8'd0;
    end

endmodule
