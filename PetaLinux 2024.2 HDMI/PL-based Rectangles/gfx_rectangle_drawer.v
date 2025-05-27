module gfx_rectangle_drawer (
    input wire clk,
    input wire reset_n,
    input wire [31:0] fb_base_addr,
    input wire [10:0] screen_width,
    input wire [9:0] screen_height,
    input wire [10:0] x_start,
    input wire [9:0] y_start,
    input wire [10:0] x_end,
    input wire [9:0] y_end,
    input wire [31:0] color,
    input wire fill,
    input wire start,
    input wire m00_axi_error,
    
    output reg done,
    output reg [31:0] pixel_addr,
    output reg [31:0] pixel_data,
    output wire pixel_write_enable
);

    reg [10:0] x, x_left;
    reg [9:0] y;
    reg active;
    reg [4:0] delay_counter;
    reg start_prev;
    reg [31:0] color_reg;

 
assign pixel_write_enable = active;

always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
        x <= 0;
        y <= 0;
        x_left <= 0;
        active <= 0;
        delay_counter <= 0;
        start_prev <= 0;
        color_reg <= 0;
        done <= 0;
        pixel_addr <= 0;
        pixel_data <= 0;
    end else begin
        if (start && !start_prev) begin
            active <= 1;
            x <= x_start;
            y <= y_start;
            x_left <= x_start;
            delay_counter <= 0;
            color_reg <= color;
            pixel_addr <= fb_base_addr;
            pixel_data <= color;
        end else if (active) begin
            // Move to next pixel
            if (delay_counter > 1) begin
                delay_counter <= 0;
                if (x < x_end) begin
                    x <= x + 1;
                    pixel_addr <= fb_base_addr + ((y * 1280 * 4) + (x * 4));
                end else if (y < y_end) begin
                    x <= x_left;  // Reset x to left edge and move to next row
                    y <= y + 1;
                    pixel_addr <= fb_base_addr + ((y * 1280 * 4) + (x * 4));
                end else if (x == x_end && y == y_end) begin
                    pixel_addr <= fb_base_addr + ((y * 1280 * 4) + (x * 4));
                    x <= x + 1;
                    y <= y + 1;
                end else begin
                    active <= 0;
                    x <= 0;
                    y <= 0;
                end
            end else begin
                delay_counter <= delay_counter + 1;
            end
            
            pixel_data <= color_reg;
        end
        
        if (x > x_end && y > y_end) begin
            start_prev <= 0;
            done <= 1;
        end else begin
            start_prev <= start;
            done <= 0;
        end
    end
end

endmodule