`timescale 1ns / 1ps

module SPI_slave_tbh();
    reg clk;

    reg SCK, CS, MOSI;
    wire MISO;
    
    wire spi_cs_start, spi_cs_end, spi_sent_start;

    reg  [7:0] spi_sent_data;

    reg recv_fifo_full;
    wire recv_fifo_wr_en, recv_fifo_clk;
    wire [7:0] recv_fifo_data;


    SPI_Slave u1(.clk(clk), .SCK(SCK), .CS(CS), .MOSI(MOSI), .MISO(MISO),
                 .spi_cs_start(spi_cs_start), .spi_cs_end(spi_cs_end), .spi_sent_start(spi_sent_start),
                 .spi_sent_data(spi_sent_data),
                 .recv_fifo_full(recv_fifo_full), .recv_fifo_wr_en(recv_fifo_wr_en), .recv_fifo_clk(recv_fifo_clk), .recv_fifo_data(recv_fifo_data)
                );
    
    initial  begin
        clk = 0;
        SCK = 0;
        CS = 1;
        MOSI = 0;
        recv_fifo_full = 0;
        #100;

        spi_sent_data = 8'b1010_1010;
        #100;

        CS = 0;
        MOSI = 1;
        #100;
        // byte 1
        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 1;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 1;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 1;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;
        
        spi_sent_data = 8'b1111_1010;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;

        // byte 2
        #100;
        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 1;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 1;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 1;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;
        
        spi_sent_data = 8'b1111_1111;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;

        // byte 3
        #100;
        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 1;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 1;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 1;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 1;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;

        SCK = 1;
        #50;
        SCK = 0;
        MOSI = 0;
        #50;

        CS = 1;
        #100;

    end

    always #5 clk = ~clk;

endmodule
