`timescale 1ns / 1ps

module spi_func_encoder(
    input clk,
    input rst_n,

    input spi_frame_end,
    output reg spi_func_ready,
    output reg [7:0] func_byte,
    output reg [7:0] param_byte,

    input fifo_rd_en, fifo_rd_clk,
    output reg [7:0] fifo_data,

    input adc_data_ready,
    input [7:0] adc_sample_nums,
    output reg adc_fifo_rd_en,
    output reg adc_fifo_rd_clk,
    input [7:0] adc_fifo_data
    );

    reg [2:0] fifo_select;

    always @ (posedge clk) begin
        case (fifo_select)
        3'd1:
            adc_fifo_rd_en <= fifo_rd_en;
        default:
            adc_fifo_rd_en <= 1'b0;
        endcase
    end

    always @ (posedge clk) begin
        case (fifo_select)
        3'd1:
            adc_fifo_rd_clk <= fifo_rd_clk;
        default:
            adc_fifo_rd_clk <= 1'b0;
        endcase
    end

    always @ (posedge clk) begin
        case (fifo_select)
        3'd0:
            fifo_data <= 8'd0;
        3'd1:
            fifo_data <= adc_fifo_data;
        default:
            fifo_data <= 8'd0;
        endcase
    end

    parameter S00 = 2'b00,
              S01 = 2'b01,
              S02 = 2'b10;

    reg [1:0] current_state, next_state;

    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= S00;
        else
            current_state <= next_state;
    end

    always @ (*) begin
        case (current_state)
        S00: begin
            if (adc_data_ready)
                next_state = S02;
            else
                next_state = S00;
        end
        S01: begin
            if (spi_frame_end)
                next_state = S00;
            else
                next_state = S01;
        end
        S02:
            next_state = S01;
        default:
            next_state = S00;
        endcase
    end

    always @ (posedge clk) begin
        case (next_state)
        S00: begin
            fifo_select    <= 3'd0;
            spi_func_ready <= 1'b0;
            func_byte      <= 8'd0;
            param_byte     <= 8'd0;
        end
        S01:
            spi_func_ready <= 1'b1;
        S02: begin
            fifo_select    <= 3'd1;
            func_byte      <= 8'h01;
            param_byte     <= adc_sample_nums;
        end
        default: begin
            fifo_select    <= 3'b0;
            spi_func_ready <= 1'b0;
            func_byte      <= 8'd0;
            param_byte     <= 8'd0;
        end
        endcase
    end

endmodule
