`timescale 1ns / 1ps

module fsm_tbh();
    reg clk,rst_n;
    reg a,b,c;
    wire [1:0] led;

    fsm u0(clk, rst_n, a, b, c, led);

    always #5 clk <= ~clk;

    initial begin
        rst_n = 0;
        clk = 0;
        a = 0;
        b = 0;
        c = 0;
        #7;
        rst_n = 1;
        #100;

        a = 1;
        #100;

        b = 1;
        #100;

        c = 1;

    end



endmodule
