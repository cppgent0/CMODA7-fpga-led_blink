`timescale 1ns / 1ps

module led_blink(
    input sysclk, // system clock
    input [1:0]btn, // BTN 
    output [1:0]led // LED1
);

    // 12Mhz clock => 12000 ticks = 1ms
    // so 500ms = 12000 * 500 = 6,000,000 ticks
    reg [32:0]tick_limit = 32'd06_000_000;
    reg [32:0]tick_count = 0;
    reg led_state = 0;

    always @ (posedge sysclk) begin
        if (btn[0]) begin
            tick_limit <= tick_limit - 1;
        end

        if (btn[1]) begin
            tick_limit <= tick_limit + 1;
        end

        tick_count <= tick_count + 1'b1;
        if (tick_count > tick_limit) begin
            tick_count <= 0;
            led_state <= ~led_state;
        end
    end

    assign led[0] = led_state;
endmodule
