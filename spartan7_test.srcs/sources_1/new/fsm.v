`timescale 1ns / 1ps

module fsm(
    input clk,
    input rst_n,
    input a,b,c,
    output reg [1:0] led
    );
    
    parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10;

    reg [1:0] current_state, next_state;

    always @ (posedge clk or negedge rst_n) begin
        if (!rst_n)
            current_state <= S0;
        else
            current_state <= next_state;
    end
    
    always @ (*) begin
        case (current_state)
        S0: begin
            if (a==1)
                next_state = S1;
            else
                next_state = S0;
        end
        S1: begin
            if (b==1)
                next_state = S2;
            else
                next_state = S1;
        end
        S2: begin
            if (c==1)
                next_state = S0;
            else
                next_state = S2;
        end
        default:
            next_state = S0;
        endcase
    end

    always @ (posedge clk ) begin
        case (next_state)
        S0:
            led <= 2'b00;
        S1:
            led <= 2'b01;
        S2:
            led <= 2'b10;
        default:
            led <= 2'b00;
        endcase
    end

endmodule
