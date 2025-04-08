module audio_clock (
    input wire clk_in_100m,         // High-frequency input clock (e.g., 100 MHz)
    input wire reset_n,        // Active-low reset
    output reg clk_out_48k         // Generated 48 kHz clock
);

    integer counter = 0; // Counter to divide the clock

    always @(posedge clk_in_100m or negedge reset_n) begin
        if (!reset_n) begin
            counter <= 0;     // Reset counter to zero
            clk_out_48k <= 0;     // Reset clock output to inactive
        end else begin
            counter <= counter + 1; // Increment counter
            if (counter >= 2083) begin // Divider value for 48 kHz
                counter <= 0;       // Reset counter when threshold is reached
                clk_out_48k <= ~clk_out_48k; // Toggle clock output
            end
        end
    end

endmodule
