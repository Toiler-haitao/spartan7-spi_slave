`timescale 1ns / 1ps

module spi_frame_encoder(
        input clk, rst_n,

        input spi_cs_start, spi_cs_end, spi_sent_start,
        output reg [7:0] spi_sent_data,

        input spi_func_ready,
        input [7:0] func_byte, param_byte,
        output reg spi_frame_end,
        output reg fifo_rd_en, fifo_rd_clk,
        input [7:0] fifo_data
    );

    parameter S00 = 15'h0000,
              S01 = 15'h0001,
              S02 = 15'h0002,
              S03 = 15'h0004,
              S04 = 15'h0008,
              S05 = 15'h0010,
              S06 = 15'h0020,
              S07 = 15'h0040,
              S08 = 15'h0080,
              S09 = 15'h0100,
              S10 = 15'h0200,
              S11 = 15'h0400,
              S12 = 15'h0800,
              S13 = 15'h1000,
              S14 = 15'h2000,
              S15 = 15'h4000;

    reg [14:0] current_state, next_state;
    reg [2:0] state_counter;

    reg [2:0] spi_func_ready_reg;
    always @ (posedge clk) spi_func_ready_reg <= {spi_func_ready_reg[1:0], spi_func_ready};
    wire spi_func_ready_risedge = (spi_func_ready_reg[2:1]==2'b01);

    reg [2:0] spi_sent_start_reg;
    always @ (posedge clk) spi_sent_start_reg <= {spi_sent_start_reg[1:0], spi_sent_start};
    wire spi_sent_start_risedge = (spi_sent_start_reg[2:1]==2'b01);

    reg [1:0] spi_cs_start_reg;
    always @ (posedge clk) spi_cs_start_reg <= {spi_cs_start_reg[0], spi_cs_start};

    reg [1:0] spi_cs_end_reg;
    always @ (posedge clk) spi_cs_end_reg <= {spi_cs_end_reg[0], spi_cs_end};

    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= S00;
        else
            current_state <= next_state;
    end

    always @ (*) begin
        case (current_state)
        S00:
            if (spi_func_ready_risedge)
                next_state = S01;
            else
                next_state = S00;
        S01:
            if (spi_cs_start_reg[1])
                next_state = S02;
            else
                next_state = S01;
        S02:
            if (spi_sent_start_risedge)
                next_state = S03;
            else
                next_state = S02;
        S03:
            if (spi_sent_start_risedge)
                next_state = S04;
            else
                next_state = S03;
        S04:
            if (spi_sent_start_risedge)
                next_state = S05;
            else
                next_state = S04;
        S05:
            next_state = S06;
        S06:
            if (state_counter == 3'd0)
                next_state = S07;
            else
                next_state = S05;
        S07:
            next_state = S08;
        S08:
            next_state = S09;
        S09:
            next_state = S10;
        S10:
            next_state = S11;
        S11:
            next_state = S12;
        S12:
            if (spi_sent_start_risedge)
                next_state = S08;
            else if (spi_cs_end_reg[1])
                next_state = S13;
            else
                next_state = S12;
        S13:
            next_state = S14;
        S14:
            next_state = S15;
        S15:
            next_state = S00;
        default:
            next_state = S00;
        endcase
    end

    always @ (posedge clk) begin
        case (next_state)
        S00: begin
            spi_sent_data <= 8'd0;
            spi_frame_end <= 1'b0;
            fifo_rd_en    <= 1'b0;
            fifo_rd_clk   <= 1'b0;
        end
        S01:
            spi_sent_data <= 8'h55;
        S02:
            spi_sent_data <= 8'h55;
        S03:
            spi_sent_data <= func_byte;
        S04: begin
            spi_sent_data <= param_byte;
            state_counter <= 3'd4;
        end
        S05: begin
            fifo_rd_clk   <= 1'b1;
            state_counter <= state_counter - 1'b1;
        end
        S06:
            fifo_rd_clk   <= 1'b0;
        S07:
            fifo_rd_en    <= 1'b1;
        S08:
            fifo_rd_clk   <= 1'b1;
        S09:
            fifo_rd_clk   <= 1'b1;
        S10:
            fifo_rd_clk   <= 1'b1;
        S11:
            fifo_rd_clk   <= 1'b1;
        S12: begin
            fifo_rd_clk   <= 1'b0;
            spi_sent_data <= fifo_data;
        end
        S13:
            fifo_rd_en    <= 1'b0;
        S14:
            fifo_rd_clk   <= 1'b1;
        S15: begin
            fifo_rd_clk   <= 1'b0;
            spi_frame_end <= 1'b1;
        end
        default: begin
            spi_sent_data <= 8'd0;
            spi_frame_end <= 1'b0;
            fifo_rd_en    <= 1'b0;
            fifo_rd_clk   <= 1'b0;
        end
        endcase
    end

endmodule
