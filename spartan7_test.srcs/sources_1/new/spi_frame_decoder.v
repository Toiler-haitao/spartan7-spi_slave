`timescale 1ns / 1ps

module spi_frame_decoder(
    input clk, rst_n,

    input spi_cs_end,

    input [7:0] fifo_data,
    input fifo_empty,
    output reg fifo_clk,
    output reg fifo_rd_en,

    output reg frame_ready, frame_error,
    output reg [7:0] func_byte, length_byte, param1_byte, param2_byte
    );

    parameter S00 = 16'h0000,
              S01 = 16'h0001,
              S02 = 16'h0002,
              S03 = 16'h0004,
              S04 = 16'h0008,
              S05 = 16'h0010,
              S06 = 16'h0020,
              S07 = 16'h0040,
              S08 = 16'h0080,
              S09 = 16'h0100,
              S10 = 16'h0200,
              S11 = 16'h0400,
              S12 = 16'h0800,
              S13 = 16'h1000,
              S14 = 16'h2000,
              S15 = 16'h4000,
              S16 = 16'h8000;

    reg [15:0] current_state, next_state;
    reg [7:0] state_counter, frame_data_sum;

    reg [1:0] spi_cs_end_register;
    always @ (posedge clk) spi_cs_end_register <= {spi_cs_end_register[0], spi_cs_end};
    wire spi_cs_end_risedge = (spi_cs_end_register[1:0]==2'b01);

    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= S00;
        else
            current_state <= next_state;
    end

    always @ (*) begin
        case (current_state)
        S00: begin
            if (spi_cs_end_risedge)
                next_state = S01;
            else
                next_state = S00;
        end
        S01:
            next_state = S02;
        S02: begin
            if (state_counter != 8'h00)
                next_state = S01;
            else
                next_state = S03;
        end
        S03:
            next_state = S04;
        S04: begin
            if (fifo_empty)
                next_state = S14;
            else if (fifo_data != 8'hAA)
                next_state = S03;
            else
                next_state = S05;
        end
        S05:
            next_state = S06;
        S06: begin
            if (fifo_empty || fifo_data == 8'h00)
                next_state = S14;
            else
                next_state = S07;
        end
        S07:
            next_state = S08;
        S08: begin
            if (fifo_empty)
                next_state = S14;
            else
                next_state = S09;
        end
        S09: begin
            if (state_counter != 8'h00)
                next_state = S10;
            else
                next_state = S11;
        end
        S10: begin
            if (fifo_empty)
                next_state = S14;
            else
                next_state = S09;
        end
        S11: begin
            if (frame_data_sum != fifo_data)
                next_state = S14;
            else if (~fifo_empty)
                next_state = S15;
            else
                next_state = S12;
        end
        S12:
            next_state = S13;
        S13:
            next_state = S00;
        S14: begin
            if (fifo_empty)
                next_state = S12;
            else
                next_state = S15;
        end
        S15:
            next_state = S16;
        S16: begin
            if (fifo_empty)
                next_state = S12;
            else
                next_state = S15;
        end
        default:
            next_state = S00;
        endcase
    end

    always @ (posedge clk) begin
        case (next_state)
        S00: begin
            fifo_clk       <= 1'b0;
            fifo_rd_en     <= 1'b0;
            frame_ready    <= 1'b0;
            frame_error    <= 1'b0;
            func_byte      <= 8'b0000_0000;
            length_byte    <= 8'b0000_0000;
            param1_byte    <= 8'b0000_0000;
            param2_byte    <= 8'b0000_0000;
            frame_data_sum <= 8'b0000_0000;
            state_counter  <= 8'b0000_0100;
        end
        S01: begin
            fifo_clk      <= 1;
            state_counter <= state_counter - 1'b1;
        end
        S02: begin
            fifo_clk <= 0;
            if (state_counter == 8'h00)
                fifo_rd_en <= 1;
        end
        S03:
            fifo_clk <= 1;
        S04:
            fifo_clk <= 0;
        S05:
            fifo_clk <= 1;
        S06: begin
            fifo_clk <= 0;
            func_byte <= fifo_data;
        end
        S07:
            fifo_clk <= 1;
        S08: begin
            fifo_clk      <= 0;
            length_byte   <= fifo_data;
            state_counter <= fifo_data;
        end
        S09: begin
            fifo_clk       <= 1;
            frame_data_sum <= 8'hAA + func_byte + length_byte + param1_byte + param2_byte;
        end
        S10: begin
            fifo_clk      <= 0;
            param2_byte   <= fifo_data;
            param1_byte   <= param2_byte;
            state_counter <= state_counter - 1'b1;
        end
        S11: begin
            fifo_clk <= 0;
            if (frame_data_sum == fifo_data)
                frame_ready <= 1'b1;
        end
        S12:
            fifo_rd_en <= 0;
        S13:
            fifo_clk <= 1;
        S14:
            frame_error <= 1'b1;
        S15:
            fifo_clk <= 1;
        S16:
            fifo_clk <= 0;
        default: begin
            fifo_clk       <= 1'b0;
            fifo_rd_en     <= 1'b0;
            frame_ready    <= 1'b0;
            frame_error    <= 1'b0;
            state_counter  <= 8'b0000_0100;
            func_byte      <= 8'b0000_0000;
            length_byte    <= 8'b0000_0000;
            param1_byte    <= 8'b0000_0000;
            param2_byte    <= 8'b0000_0000;
            frame_data_sum <= 8'b0000_0000;
        end
        endcase
    end

endmodule
