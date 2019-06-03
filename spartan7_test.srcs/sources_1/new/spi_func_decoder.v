`timescale 1ns / 1ps

module spi_func_decoder(
    input clk,
    input rst_n,
    input frame_ready,
    input [7:0] func_byte, length_byte, param1_byte, param2_byte,
    output reg func_error,
    output reg overlay_start,
    output reg overlay_stop,
    output reg dac_start,
    output reg [11:0] dac_data,
    output reg adc_start,
    output reg [7:0] adc_sampling_rate,
    output reg [7:0] adc_sample_nums,
    output reg adc_data_request,
    output reg [7:0] adc_request_nums
    );

    parameter S00 = 10'b00_0000_0000,
              S01 = 10'b00_0000_0001,
              S02 = 10'b00_0000_0010,
              S03 = 10'b00_0000_0100,
              S04 = 10'b00_0000_1000,
              S05 = 10'b00_0001_0000,
              S06 = 10'b00_0010_0000,
              S07 = 10'b00_0100_0000,
              S08 = 10'b00_1000_0000,
              S09 = 10'b01_0000_0000,
              S10 = 10'b10_0000_0000;

    reg [9:0] current_state, next_state;

    // 使用 clk 同步 frame_ready 信号的上升沿
    reg [2:0] frame_ready_register;
    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n)
            frame_ready_register <= 3'b0;
        else
            frame_ready_register <= {frame_ready_register[1:0], frame_ready};
    end
    wire frame_ready_risedge = (frame_ready_register[2:1]==2'b01);

    // 使用 frame_ready 信号的上升沿锁存 4个参数
    reg [7:0] func_byte_reg, length_byte_reg, param1_byte_reg, param2_byte_reg;
    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            func_byte_reg   <= 8'b0;
            length_byte_reg <= 8'b0;
            param1_byte_reg <= 8'b0;
            param2_byte_reg <= 8'b0;
        end
        else if (frame_ready_register[2:1]==2'b00 && frame_ready==1'b1) begin       // 提前于 frame_ready_risedge 进行锁存
            func_byte_reg   <= func_byte;
            length_byte_reg <= length_byte;
            param1_byte_reg <= param1_byte;
            param2_byte_reg <= param2_byte;
        end
    end

    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= S00;
        else
            current_state <= next_state;
    end

    always @ (*) begin
        case (current_state)
        S00: begin
            if (frame_ready_risedge) begin
                case (func_byte_reg)
                8'h01:
                    next_state = S01;
                8'h02:
                    next_state = S02;
                8'h03:
                    next_state = S03;
                8'h04:
                    next_state = S05;
                8'h05:
                    next_state = S07;
                default:
                    next_state = S09;
                endcase
            end
            else
                next_state = S00;
        end
        S01:
            next_state = S00;
        S02:
            next_state = S00;
        S03: begin
            if (length_byte_reg == 8'h02)
                next_state = S04;
            else
                next_state = S09;
        end
        S04:
            next_state = S00;
        S05: begin
            if (length_byte_reg == 8'h02)
                next_state = S06;
            else
                next_state = S09;
        end
        S06:
            next_state = S00;
        S07: begin
            if (length_byte_reg == 8'h01)
                next_state = S08;
            else
                next_state = S09;
        end
        S08:
            next_state = S00;
        S09:
            next_state = S00;
        default:
            next_state = S00;
        endcase
    end

    always @ (posedge clk) begin
        case (next_state)
        S00: begin
            func_error         <= 1'b0;
            overlay_start      <= 1'b0;
            overlay_stop       <= 1'b0;
            dac_start          <= 1'b0;
            dac_data           <= 12'd0;
            adc_start          <= 1'b0;
            adc_sampling_rate  <= 8'd0;
            adc_sample_nums    <= 8'd0;
            adc_data_request   <= 1'b0;
            adc_request_nums   <= 8'd0;
        end
        S01:
            overlay_start      <= 1'b1;
        S02:
            overlay_stop       <= 1'b1;
        S03:
            dac_data           <= {param1_byte_reg[3:0], param2_byte_reg[7:0]};
        S04:
            dac_start          <= 1'b1;
        S05: begin
            adc_sampling_rate  <= param1_byte_reg;
            adc_sample_nums    <= param2_byte_reg;
        end
        S06:
            adc_start          <= 1'b1;
        S07:
            adc_request_nums   <= param2_byte_reg;
        S08:
            adc_data_request   <= 1'b1;
        S09:
            func_error         <= 1'b1;
        default: begin
            func_error         <= 1'b0;
            overlay_start      <= 1'b0;
            overlay_stop       <= 1'b0;
            dac_start          <= 1'b0;
            dac_data           <= 12'd0;
            adc_start          <= 1'b0;
            adc_sampling_rate  <= 8'd0;
            adc_sample_nums    <= 8'd0;
            adc_data_request   <= 1'b0;
            adc_request_nums   <= 8'd0;
        end
        endcase
    end

endmodule
