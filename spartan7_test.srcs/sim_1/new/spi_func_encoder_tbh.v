`timescale 1ns / 1ps


module spi_func_encoder_tbh();
    reg clk, rst_n;

    reg spi_frame_end;
    wire spi_func_ready;
    wire [7:0] func_byte;
    wire [7:0] param_byte;

    reg fifo_rd_en;
    reg fifo_rd_clk;
    wire [7:0] fifo_data;

    reg adc_data_ready;
    reg [7:0] adc_sample_nums;
    wire adc_fifo_rd_en;
    wire adc_fifo_rd_clk;
    reg [7:0] adc_fifo_data;

    spi_func_encoder u0(clk, rst_n, spi_frame_end, spi_func_ready, func_byte, param_byte,
                     fifo_rd_en, fifo_rd_clk, fifo_data,
                     adc_data_ready, adc_sample_nums, adc_fifo_rd_en, adc_fifo_rd_clk, adc_fifo_data
                    );

    always #5 clk = ~clk;

    always @ (posedge adc_fifo_rd_clk) adc_fifo_data <= adc_fifo_data + 1'b1;

    initial begin
        clk = 0;
        rst_n = 0;

        spi_frame_end = 0;

        fifo_rd_en = 0;
        fifo_rd_clk = 0;

        adc_data_ready = 0;
        adc_sample_nums = 0;
        adc_fifo_data <= 0;

        #15 rst_n = 1;

        #100;

        #10 adc_sample_nums = 8'h01;
        #11 adc_data_ready = 1;
        #20 adc_data_ready = 0;

        #39;

        repeat(4) begin
            #10 fifo_rd_clk = 1;
            #10 fifo_rd_clk = 0;
        end

        #10 fifo_rd_en = 1;
        repeat(4) begin
            #10 fifo_rd_clk = 1;
            #30 fifo_rd_clk = 0;
        end
        #10 fifo_rd_en = 0;

        #10 fifo_rd_clk = 1;
        #10 fifo_rd_clk = 0;

        #50 spi_frame_end = 1;
        #10 spi_frame_end = 0;

    end



endmodule
