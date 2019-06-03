`timescale 1ns / 1ps

module spi_receive_tbh();

    reg clk, rst_n;
    reg CS, SCK, MOSI;
    wire MISO;

    reg [7:0] spi_tx_data;

    reg tx_adc_data_ready;
    reg [7:0] tx_adc_sample_nums;
    wire tx_adc_fifo_rd_en, tx_adc_fifo_rd_clk;
    wire [7:0] tx_adc_fifo_data;

    reg tx_fifo_wr_en, tx_fifo_wr_clk;
    reg [7:0] tx_fifo_wr_data;

    wire frame_error, func_error;

    wire overlay_start, overlay_stop;

    wire dac_start;
    wire [11:0] dac_data;

    wire adc_start;
    wire [7:0] adc_sampling_rate, adc_sample_nums;

    wire adc_data_request;
    wire [7:0] adc_request_nums;

    spi_receive u0(clk, rst_n,
                    SCK, CS, MOSI, MISO,

                    frame_error, func_error,

                    overlay_start,
                    overlay_stop,
                    dac_start, dac_data,
                    adc_start, adc_sampling_rate, adc_sample_nums,
                    adc_data_request, adc_request_nums,

                    tx_adc_data_ready, tx_adc_sample_nums,
                    tx_adc_fifo_rd_en, tx_adc_fifo_rd_clk, tx_adc_fifo_data
                    );

    always #10 clk = ~clk;

    task spi_wr;
        input reg [7:0] wr_data;
        reg [3:0] cnt;
        begin
            MOSI = wr_data[7];
            for(cnt=0; cnt<8; cnt = cnt+1) begin
                #100 SCK = 1;
                #100 SCK = 0;
                wr_data = {wr_data[6:0], 1'b0};
                MOSI = wr_data[7];
            end
        end
    endtask

    task spi_wr_2;
        input reg [7:0] wr_data;
        output reg [7:0] data;
        reg [3:0] cnt;
        begin
            MOSI = wr_data[7];
            for(cnt=0; cnt<8; cnt = cnt+1) begin
                #100 SCK = 1;
                data = {data[6:0], MISO};
                #100 SCK = 0;
                wr_data = {wr_data[6:0], 1'b0};
                MOSI = wr_data[7];
            end
        end
    endtask

    initial begin
        clk = 0;
        rst_n = 0;
        SCK = 0;
        CS = 1;
        MOSI = 0;

        spi_tx_data = 0;

        tx_adc_data_ready = 0;
        tx_adc_sample_nums = 0;
        
        tx_fifo_wr_en = 0;
        tx_fifo_wr_clk = 0;
        tx_fifo_wr_data = 0;


        #20 rst_n = 1;
        
        #200;

        repeat(4) begin
            #10 tx_fifo_wr_clk = 1;
            #10 tx_fifo_wr_clk = 0;
        end
        #10 tx_fifo_wr_en = 1;
        tx_fifo_wr_data = 8'h11;
        #10 tx_fifo_wr_clk = 1;
        #10 tx_fifo_wr_clk = 0;
        tx_fifo_wr_data = 8'h22;
        #10 tx_fifo_wr_clk = 1;
        #10 tx_fifo_wr_clk = 0;
        #10 tx_fifo_wr_en = 0;
        #10 tx_fifo_wr_clk = 1;
        #10 tx_fifo_wr_clk = 0;
        

        // 发送测试
        tx_adc_sample_nums = 8'h06;
        #100 tx_adc_data_ready = 1;
        #100 tx_adc_data_ready = 0;

        #100 CS = 0;
        #100 spi_wr_2(8'h00, spi_tx_data);
        #100 spi_wr_2(8'h00, spi_tx_data);
        #100 spi_wr_2(8'h00, spi_tx_data);
        #100 spi_wr_2(8'h00, spi_tx_data);
        #100 spi_wr_2(8'h00, spi_tx_data);
        #100 spi_wr_2(8'h00, spi_tx_data);
        #100 CS = 1;




        // 接收测试集 反集
        // 帧前多
        #1000;
        #100 CS = 0;
        #100 spi_wr(8'h03);
        #100 spi_wr(8'hAA);
        #100 spi_wr(8'h03);
        #100 spi_wr(8'h02);
        #100 spi_wr(8'h01);
        #100 spi_wr(8'hFF);
        #100 spi_wr(8'hAF);
        #100 CS = 1;

        // 校验和错
        #100 CS = 0;
        #100 spi_wr(8'hAA);
        #100 spi_wr(8'h03);
        #100 spi_wr(8'h02);
        #100 spi_wr(8'h01);
        #100 spi_wr(8'hFF);
        #100 spi_wr(8'hA0);
        #100 CS = 1;

        // 测试集 正集
        #100 CS = 0;
        #100 spi_wr(8'hAA);
        #100 spi_wr(8'h01);
        #100 spi_wr(8'h00);
        #100 spi_wr(8'hAB);
        #100 CS = 1;

        #100 CS = 0;
        #100 spi_wr(8'hAA);
        #100 spi_wr(8'h02);
        #100 spi_wr(8'h00);
        #100 spi_wr(8'hAC);
        #100 CS = 1;

        #100 CS = 0;
        #100 spi_wr(8'hAA);
        #100 spi_wr(8'h03);
        #100 spi_wr(8'h02);
        #100 spi_wr(8'h01);
        #100 spi_wr(8'hFF);
        #100 spi_wr(8'hAF);
        #100 CS = 1;

        #100 CS = 0;
        #100 spi_wr(8'hAA);
        #100 spi_wr(8'h04);
        #100 spi_wr(8'h02);
        #100 spi_wr(8'h01);
        #100 spi_wr(8'h02);
        #100 spi_wr(8'hB3);
        #100 CS = 1;

        #100 CS = 0;
        #100 spi_wr(8'hAA);
        #100 spi_wr(8'h05);
        #100 spi_wr(8'h01);
        #100 spi_wr(8'h05);
        #100 spi_wr(8'hB5);
        #100 CS = 1;

    end


endmodule
