`timescale 1ns / 1ps

module spi_receive(
    input clk,
    input rst_n,

    input SCK, CS, MOSI,
    output MISO,

    output overlay_start,
    output overlay_stop,
    output dac_start,
    output [11:0] dac_data,
    output adc_start,
    output [7:0] adc_sampling_rate,
    output [7:0] adc_sample_nums,
    output adc_data_request,
    output [7:0] adc_request_nums,

    input tx_adc_data_ready,
    input [7:0] tx_adc_sample_nums,
    output tx_adc_fifo_rd_en, tx_adc_fifo_rd_clk,
    input [7:0] tx_adc_fifo_data
    );

    wire spi_cs_start, spi_cs_end, spi_sent_start;
    wire [7:0] spi_sent_data;

    wire fifo_full, fifo_empty;
    wire fifo_wr_en, fifo_wr_clk, fifo_rd_en, fifo_rd_clk;
    wire [7:0] fifo_wr_data, fifo_rd_data;

    wire frame_ready, frame_error, func_error;

    wire [7:0] func_byte, length_byte, param1_byte, param2_byte;
    
    wire tx_spi_func_ready;
    wire [7:0] tx_func_byte, tx_param_byte;
    wire tx_spi_frame_end;
    wire tx_fifo_rd_en, tx_fifo_rd_clk;
    wire [7:0] tx_fifo_data;


    spi_slave u1(clk, SCK, CS, MOSI, MISO,
                spi_cs_start, spi_cs_end, spi_sent_start,
                spi_sent_data,
                fifo_full, fifo_wr_en, fifo_wr_clk, fifo_wr_data
                );

    fifo_generator_0 u2(fifo_wr_clk, fifo_rd_clk, fifo_wr_data, fifo_wr_en, fifo_rd_en, fifo_rd_data, fifo_full, fifo_empty);

    spi_frame_decoder u3(clk, rst_n, spi_cs_end,
                        fifo_rd_data, fifo_empty, fifo_rd_clk, fifo_rd_en,
                        frame_ready, frame_error,
                        func_byte, length_byte, param1_byte, param2_byte
                        );

    spi_func_decoder u4(clk, rst_n,
                        frame_ready,
                        func_byte, length_byte, param1_byte, param2_byte,
                        func_error,
                        overlay_start,
                        overlay_stop,
                        dac_start, dac_data,
                        adc_start, adc_sampling_rate, adc_sample_nums,
                        adc_data_request, adc_request_nums
                        );

    spi_frame_encoder u5(clk, rst_n,
                        spi_cs_start, spi_cs_end, spi_sent_start,
                        spi_sent_data,
                        tx_spi_func_ready,
                        tx_func_byte, tx_param_byte,
                        tx_spi_frame_end,
                        tx_fifo_rd_en, tx_fifo_rd_clk, tx_fifo_data
                        );

    spi_func_encoder u6(clk, rst_n,
                        tx_spi_frame_end,
                        tx_spi_func_ready, tx_func_byte, tx_param_byte,
                        tx_fifo_rd_en, tx_fifo_rd_clk, tx_fifo_data,
                        tx_adc_data_ready, tx_adc_sample_nums,
                        tx_adc_fifo_rd_en, tx_adc_fifo_rd_clk, tx_adc_fifo_data
                        );

endmodule
