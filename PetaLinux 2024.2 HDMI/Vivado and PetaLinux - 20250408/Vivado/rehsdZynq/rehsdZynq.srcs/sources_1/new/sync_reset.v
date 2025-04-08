module dual_clock_reset_sync (
    input wire clk1,             // First clock
    input wire reset1_n,         // Active-low reset for clk1 domain
    input wire clk2,             // Second clock
    input wire reset2_n,         // Active-low reset for clk2 domain
    output wire sync_reset_n     // Combined synchronized active-low reset
);

    // Synchronizers for clk1 domain
    reg reset1_sync1, reset1_sync2;

    always @(posedge clk1 or negedge reset1_n) begin
        if (!reset1_n) begin
            reset1_sync1 <= 1'b0;
            reset1_sync2 <= 1'b0;
        end else begin
            reset1_sync1 <= 1'b1;
            reset1_sync2 <= reset1_sync1;
        end
    end

    // Synchronizers for clk2 domain
    reg reset2_sync1, reset2_sync2;

    always @(posedge clk2 or negedge reset2_n) begin
        if (!reset2_n) begin
            reset2_sync1 <= 1'b0;
            reset2_sync2 <= 1'b0;
        end else begin
            reset2_sync1 <= 1'b1;
            reset2_sync2 <= reset2_sync1;
        end
    end

    // Generate the synchronized reset
    assign sync_reset_n = reset1_sync2 & reset2_sync2;

endmodule
