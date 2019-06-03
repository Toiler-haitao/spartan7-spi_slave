`timescale 1ns / 1ps

module spi_func_decoder_tbh();
    reg clk, rst_n;

    reg frame_ready;
    reg [7:0] func_byte, length_byte, param1_byte, param2_byte;

    wire func_error;
    wire overlay_start;
    wire overlay_stop;
    wire dac_start;
    wire [11:0] dac_data;
    wire adc_start;
    wire [7:0] adc_sampling_rate;
    wire [7:0] adc_sample_nums;
    wire adc_data_request;
    wire [7:0] adc_request_nums;

    spi_func_decoder u0(clk, rst_n, frame_ready, func_byte, length_byte, param1_byte, param2_byte,
                        func_error, overlay_start, overlay_stop, dac_start, dac_data,
                        adc_start, adc_sampling_rate, adc_sample_nums, adc_data_request, adc_request_nums
                        );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst_n = 0;
        frame_ready = 0;
        func_byte   = 0;
        length_byte = 0;
        param1_byte = 0;
        param2_byte = 0;

        #15 rst_n = 1;

        // 测试集（正集）
        #101;
        func_byte = 1;
        #10 frame_ready = 1;
        #20 frame_ready = 0;
        func_byte = 0;

        #100;
        func_byte = 2;
        #10 frame_ready = 1;
        #20 frame_ready = 0;
        func_byte = 0;

        #100;
        func_byte = 3;
        length_byte = 2;
        param1_byte = 3;
        param2_byte = 8'hAA;
        #10 frame_ready = 1;
        #20 frame_ready = 0;
        func_byte = 0;
        length_byte = 0;
        param1_byte = 0;
        param2_byte = 8'd0;

        #100;
        func_byte = 4;
        length_byte = 2;
        param1_byte = 3;
        param2_byte = 4;
        #10 frame_ready = 1;
        #20 frame_ready = 0;
        func_byte = 0;
        length_byte = 0;
        param1_byte = 0;
        param2_byte = 0;

        #100;
        func_byte = 5;
        length_byte = 1;
        param2_byte = 5;
        #10 frame_ready = 1;
        #20 frame_ready = 0;
        func_byte = 0;
        length_byte = 0;
        param2_byte = 0;

        // 测试集（反集）
        #100;
        func_byte = 8;
        #10 frame_ready = 1;
        #20 frame_ready = 0;
        func_byte = 0;

        #100;
        func_byte = 3;
        length_byte = 1;
        param2_byte = 1;
        #10 frame_ready = 1;
        #20 frame_ready = 0;
        func_byte = 0;
        length_byte = 0;
        param2_byte = 0;

        #100;
        func_byte = 4;
        length_byte = 3;
        param2_byte = 1;
        #10 frame_ready = 1;
        #20 frame_ready = 0;
        func_byte = 0;
        length_byte = 0;
        param2_byte = 0;

    end

endmodule
