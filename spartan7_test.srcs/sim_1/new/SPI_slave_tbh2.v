`timescale 1ns / 1ps

module SPI_slave_tbh2();
    reg clk;

    reg SCK, CS, MOSI;
    wire MISO;
    
    wire frame_start, frame_end, sent_end;

    reg  [7:0] s_data;

    wire recv_fifo_wr_en, recv_fifo_clk, recv_fifo_full;
    wire [7:0] recv_fifo_data;
    
    reg fifo_rd_clk;
    reg fifo_rd_en;
    wire [7:0]fifo_dout;
    wire fifo_empty;


    SPI_Slave u1(.clk(clk), .SCK(SCK), .CS(CS), .MOSI(MOSI), .MISO(MISO),
                 .frame_start(frame_start), .frame_end(frame_end), .sent_end(sent_end),
                 .sent_data(s_data),
                 .recv_fifo_full(recv_fifo_full), .recv_fifo_wr_en(recv_fifo_wr_en), .recv_fifo_clk(recv_fifo_clk), .recv_fifo_data(recv_fifo_data)
                );

    fifo_generator_0 u2(recv_fifo_clk, fifo_rd_clk, recv_fifo_data, recv_fifo_wr_en, fifo_rd_en, fifo_dout, recv_fifo_full, fifo_empty);

    always #5 clk = ~clk;

    task spi_wr;
        input reg [7:0] wr_data;
        reg [3:0] cnt;
        begin
            MOSI = wr_data[7];
            for(cnt=0; cnt<8; cnt = cnt+1) begin
                #50 SCK = 1;
                #50 SCK = 0;
                wr_data = {wr_data[6:0], 1'b0};
                MOSI = wr_data[7];
            end
        end
    endtask

    initial  begin
        clk = 0;
        SCK = 0;
        CS = 1;
        MOSI = 0;
        s_data = 0;
        fifo_rd_en = 0;
        fifo_rd_clk = 0;

        #100 CS = 0;
        #100 spi_wr(8'hAA);
        #100 spi_wr(8'h02);
        #100 CS = 1;

        repeat(4) begin
            #10 fifo_rd_clk = 1;
            #10 fifo_rd_clk = 0;
        end
        #100 fifo_rd_en = 1;
        repeat(3) begin
            #10 fifo_rd_clk = 1;
            #10 fifo_rd_clk = 0;
        end
        #100 fifo_rd_en = 0;
        #10 fifo_rd_clk = 1;
        #10 fifo_rd_clk = 0;


        #100 CS = 0;
        #100 spi_wr(8'hAA);
        #100 spi_wr(8'h03);
        #100 CS = 1;
        

        repeat(4) begin
            #10 fifo_rd_clk = 1;
            #10 fifo_rd_clk = 0;
        end
        #100 fifo_rd_en = 1;
        repeat(3) begin
            #10 fifo_rd_clk = 1;
            #10 fifo_rd_clk = 0;
        end
        #100 fifo_rd_en = 0;
        #10 fifo_rd_clk = 1;
        #10 fifo_rd_clk = 0;

    end


endmodule
