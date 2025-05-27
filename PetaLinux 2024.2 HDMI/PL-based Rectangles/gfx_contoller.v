module gfx_controller (
    input wire m_axi_aclk,            // AXI clock signal
    input wire reset_n,               // Reset signal (active low)

    // Configuration and Control Inputs
    input wire [10:0] screen_width,
    input wire [9:0] screen_height,
    input wire [31:0] fb_base_addr,
    input wire [7:0] command,         // Drawing command
    input wire [10:0] x_start,
    input wire [9:0] y_start,
    input wire [31:0] color,
    input wire [10:0] x_end,
    input wire [9:0] y_end,
    input wire fill,
    input wire start,
    input wire m00_axi_txn_done,
    input wire m00_axi_error,

    output wire [31:0] addr_to_write,
    output wire [31:0] color_to_write,
    output reg m00_axi_init_axi_txn,
    output reg m00_axi_aresetn,
    
    output wire done,
    output wire dbg_start,
    output wire dbg_end
);

    // Internal control signals for different shapes
    wire rect_done, circle_done, line_done;
    wire [31:0] rect_pixel_addr, circle_pixel_addr, line_pixel_addr;
    wire [31:0] rect_pixel_data, circle_pixel_data, line_pixel_data;
    reg start_rectangle, start_circle, start_line;
    wire rectangle_pixel_write_enable;
    
    reg start_prev;
    reg txn_pulse_reg;
    reg active_reg, done_reg, done_reset;
    reg [3:0] delay_counter;
    reg dbg_start_reg, dbg_end_reg;

    // Command Decoding States
    localparam CMD_IDLE   = 8'h00;  
    localparam CMD_RECT   = 8'h02;  
    localparam CMD_CIRCLE = 8'h03;  
    localparam CMD_LINE   = 8'h04;  
    

    // Command handling logic
    always @(posedge m_axi_aclk or negedge reset_n) begin
        if (!reset_n) begin
            done_reg <= 0;
            txn_pulse_reg <= 0;
            active_reg <= 0;
            start_prev <= 0;
            delay_counter <= 0;
            dbg_start_reg <= 0;
            dbg_end_reg <= 0;
            start_rectangle <= 0;
            start_circle <= 0;
            start_line <= 0;
            m00_axi_aresetn <= 0;
            done_reset <= 0;
            m00_axi_init_axi_txn <= 0;
        end else if (done_reset) begin
            if (delay_counter > 7) begin
                delay_counter <= 0;
                done_reset <= 0;
                txn_pulse_reg <= 0;
                done_reg <= 1; // Signal completion only when final transaction confirms
                active_reg <= 0;
                start_rectangle <= 0;
                m00_axi_aresetn <= 0;
                delay_counter <= 0;
            end else begin
                delay_counter <= delay_counter + 1;
                m00_axi_init_axi_txn <= ~m00_axi_init_axi_txn;
            end
        end else begin
            if (start && !start_prev) begin     // Detect rising edge of start trigger
                m00_axi_aresetn <= 1;
                dbg_start_reg <= ~dbg_start_reg;
                dbg_end_reg <= dbg_start_reg;
                
                done_reg <= 0;
                txn_pulse_reg <= 0;
                active_reg <= 1;
                start_rectangle <= 0;
                start_circle <= 0;
                start_line <= 0;
            end else if (active_reg && !(start_rectangle || start_circle || start_line)) begin     //!m00_axi_txn_done &&
                done_reg <= 0;
                // Update pixel address
                case (command)
                    CMD_RECT: begin
                        start_rectangle <= 1;
                        start_circle <= 0;
                        start_line <= 0;
                        //txn_pulse_reg <= ~txn_pulse_reg; // Generate a one-cycle pulse
                    end
                    /* CMD_CIRCLE: begin
                        start_rectangle <= 0;
                        start_circle <= 1;
                        start_line <= 0;
                        txn_pulse_reg <= 1; // Generate a one-cycle pulse
                    end
                    CMD_LINE: begin
                        start_rectangle <= 0;
                        start_circle <= 0;
                        start_line <= 1;
                        txn_pulse_reg <= 1; // Generate a one-cycle pulse
                    end
                    */
                    default: begin
                        //start_rectangle <= 0;
                        start_circle <= 0;
                        start_line <= 0;
                        txn_pulse_reg <= 0;
                    end
                endcase
            
            end else if (start_rectangle && !rect_done) begin      //m00_axi_txn_done && 
                // continue processing CMD -
                done_reg <= 0;
                txn_pulse_reg <= ~txn_pulse_reg;             // Ensure pulse drops after one cycle
            end else if (active_reg && (rect_done || circle_done || line_done) && m00_axi_txn_done) begin
                done_reset <= 1;
            end

            start_prev <= start;
            m00_axi_init_axi_txn <= txn_pulse_reg && start_rectangle && rectangle_pixel_write_enable;   
        end
    end

    // Instantiate Rectangle Drawer
    gfx_rectangle_drawer u_rect_drawer (
        .clk(m_axi_aclk),
        .reset_n(reset_n),
        .fb_base_addr(fb_base_addr),
        .screen_width(screen_width),
        .screen_height(screen_height),
        .x_start(x_start),
        .y_start(y_start),
        .x_end(x_end),
        .y_end(y_end),
        .color(color),
        .fill(fill),
        .start(start_rectangle),
        .m00_axi_error(m00_axi_error),
        .done(rect_done),
        .pixel_addr(addr_to_write),
        .pixel_data(color_to_write),
        .pixel_write_enable(rectangle_pixel_write_enable)
    );

    /*
    // Instantiate Circle Drawer
    gfx_circle_drawer u_circle_drawer (
        .clk(internal_clk),
        .reset_n(reset_n),
        .fb_base_addr(fb_base_addr),
        .x_center(x_start),
        .y_center(y_start),
        .radius(x_end-x_start),
        .color(color),
        .start(start_circle),
        .done(circle_done),
        .pixel_addr(circle_pixel_addr),
        .pixel_data(circle_pixel_data),
        .pixel_write_enable(circle_pixel_write_enable)
    );

    // Instantiate Line Drawer
    gfx_line_drawer u_line_drawer (
        .clk(internal_clk),
        .reset_n(reset_n),
        .fb_base_addr(fb_base_addr),
        .x_start(x_start),
        .y_start(y_start),
        .x_end(x_end),
        .y_end(y_end),
        .color(color),
        .start(start_line),
        .done(line_done),
        .pixel_addr(line_pixel_addr),
        .pixel_data(line_pixel_data),
        .pixel_write_enable(line_pixel_write_enable)
    );
    */
    
    //assign addr_to_write = rect_pixel_addr;
    //assign color_to_write = rect_pixel_data;
    assign done = done_reg;
    assign dbg_start = dbg_start_reg;
    assign dbg_end = dbg_end_reg;

endmodule