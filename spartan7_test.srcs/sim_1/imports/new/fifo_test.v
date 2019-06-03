`timescale 1ns / 1ps

module fifo_tbh();
    reg wr_clk;
	reg rd_clk;

    reg wr_en;
    reg [7:0] din;
    
    reg rd_en;
    wire[7:0] dout;
    
    wire full, empty;

	fifo_generator_0 u0(wr_clk, rd_clk, din, wr_en, rd_en, dout, full, empty);

    initial begin
        wr_clk = 0;
        rd_clk = 0;

        wr_en = 0;
        rd_en = 0;
        #100;

        wr_en = 1;

		for(din = 1; din<17; din = din+1) begin
			#100;
			wr_clk = 1;
			#100;
			wr_clk = 0;
		end

		wr_en = 0;
		
		#100;
        wr_clk = 1;
        #100;
        wr_clk = 0;

		repeat(4) begin
			#100;
			rd_clk = 1;
			#100;
			rd_clk = 0;
		end

		#100;
		rd_en = 1;

        repeat(10) begin
			#100;
			rd_clk = 1;
			#100;
			rd_clk = 0;
		end
        
		#100;
		rd_en = 0;

		#100;
        rd_clk = 1;
        #100;
        rd_clk = 0;
		
		// no.2
		repeat(4) begin
			#100;
			wr_clk = 1;
			#100;
			wr_clk = 0;
		end

		#100;
        wr_en = 1;

		for(din = 1; din<17; din = din+1) begin
			#100;
			wr_clk = 1;
			#100;
			wr_clk = 0;
		end

        #100;
        wr_en = 0;

		#100;
        wr_clk = 1;
        #100;
        wr_clk = 0;
        
		// repeat(4) begin
		// 	#100;
		// 	rd_clk = 1;
		// 	#100;
		// 	rd_clk = 0;
		// end

        #100;
        rd_en = 1;

		repeat(23) begin
			#100;
			rd_clk = 1;
			#100;
			rd_clk = 0;
		end
        
        #100;
        rd_en = 0;
        #100;

		#100;
        rd_clk = 1;
        #100;
        rd_clk = 0;

		#100;

    end

endmodule
