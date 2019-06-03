`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/14 15:09:03
// Design Name: 
// Module Name: led_tbh
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module led_tbh();
    reg [2:0] addr;
    reg din;
    wire [7:0] dout;
    
    led u0(addr, din, dout[0], dout[1], dout[2], dout[3], dout[4], dout[5], dout[6], dout[7]);
    
    initial begin
        addr = 0;
        din = 0;
        
        for(addr = 0; addr<7; addr = addr + 1) begin
            repeat(4) begin
                #10 din = 1;
                #10 din = 0;
            end
        end
        
        #10 addr = 1;
        #10 addr = 7;
        din = 1;
        #10 din = 5;

        repeat(4) begin
            #10 din = 1;
            #10 din = 0;
        end
        
        
    end

endmodule
