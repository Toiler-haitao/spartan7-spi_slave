`timescale 1ns / 1ps

module spi_slave(
	input clk,   //system clock 100MHz
	input SCK, CS, MOSI, //SPI communication pin
	output MISO,

	output spi_cs_start, spi_cs_end,
	output reg spi_sent_start,

	input [7:0] spi_sent_data,

	input recv_fifo_full,
	output recv_fifo_wr_en,
	output reg recv_fifo_clk,
	output reg[7:0] recv_fifo_data
	);

	// sync SCK to the FPGA clock using a 3-bits shift register
	reg [2:0] SCKr; 
	always @(posedge clk) SCKr <= {SCKr[1:0], SCK};
	wire SCK_risingedge  = (SCKr[2:1]==2'b01);		// now we can detect SCK rising edges
	wire SCK_fallingedge = (SCKr[2:1]==2'b10);		// and falling edges

	// same thing for CS
	reg [2:0] CSr; 
	always @ (posedge clk) CSr <= {CSr[1:0], CS};
	wire CS_active = ~CSr[1];					// CS is active low
	wire CS_startmessage = (CSr[2:1]==2'b10);	// message starts at falling edge
	wire CS_endmessage   = (CSr[2:1]==2'b01);	// message stops at rising edge
	
	assign spi_cs_start = CS_startmessage;
	assign spi_cs_end   = CS_endmessage;

	assign recv_fifo_wr_en = CS_active & (~recv_fifo_full);

	// and for MOSI
	reg [1:0] MOSIr; 
	always @ (posedge clk) MOSIr <= {MOSIr[0], MOSI};
	wire MOSI_data = MOSIr[1];

	//-------------------receive data-------------------------------------------------
	reg [2:0] bitcnt;	// we handle SPI in 8-bits format, so we need a counter to count the bits as they come in
	reg byte_received;  // high when a byte has been received
	reg [7:0] byte_data_received;

	always @ (posedge clk) begin
		if (~CS_active)
			bitcnt <= 3'b000;
		else if (SCK_risingedge) begin
			bitcnt <= bitcnt + 3'b001;
			byte_data_received <= {byte_data_received[6:0], MOSI_data};  // implement a shift-left, register (since we receive the data MSB first)
		end
	end

	always @ (posedge clk) byte_received <= CS_active && SCK_risingedge && (bitcnt==3'b111);

	//-----------------------receive data---------------------
	reg recv_end;
	always @ (posedge clk) begin
		if (~CS_active)
			recv_fifo_data <= 0;
		else if (byte_received)
			recv_fifo_data <= byte_data_received;
    end
	always @ (posedge clk) recv_end <= byte_received;
	always @ (posedge clk) begin
		if (recv_fifo_full)
			recv_fifo_clk <= SCKr[2];			// enable recv_fifo_clk more than 4 times to refresh the recv_fifo_full flag
		else if (~CS_active)
			recv_fifo_clk <= CS_endmessage;		// after fifo write, enable recv_fifo_clk 1 time
		else
			recv_fifo_clk <= recv_end;		// after recv_end start fifo clk
	end
	//-----------------------send data----------------------
	reg [7:0] byte_data_sent;

	always @ (posedge clk) begin
		if (~CS_active)
			byte_data_sent <= 8'h00;
		else begin
			if (CS_startmessage)
				byte_data_sent <= spi_sent_data;
			if (SCK_fallingedge) begin
				if (bitcnt == 3'b000)
					byte_data_sent <= spi_sent_data;		// last SPI_fallingedge to refresh the byte_data_sent
				else
					byte_data_sent <= {byte_data_sent[6:0], 1'b0};		// every SPI_fallingedge to shift the byte_data_sent
			end
		end
	end

	assign MISO = byte_data_sent[7];  // send MSB first

	always @ (posedge clk) begin
		if (~CS_active)
			spi_sent_start <= 1'b0;
		else begin
			if (bitcnt == 3'b000)
				spi_sent_start <= SCK_risingedge;
			else
				spi_sent_start <= 1'b0;
		end
	end

endmodule
