module hdmi_wrapper (
    input wire clk_pixel,               // Pixel clock
    input wire clk_pixel_x5,            // 5x pixel clock
    input wire clk_audio,               // Audio clock
  
    input wire [31:0] rgb,             // Pixel data
    //input wire hsync,                   // Horizontal sync
    //input wire vsync,                   // Vertical sync
    input wire video_enable,                     // Video enable
    input wire aresetn,                 // Active-low reset

    output wire TMDS2_clk_p,            // TMDS clock positive
    output wire TMDS2_clk_n,            // TMDS clock negative
    output wire [2:0] TMDS2_data_p,     // TMDS data positive (3 lanes)
    output wire [2:0] TMDS2_data_n      // TMDS data negative (3 lanes)
);

    // Internal signals
    wire [2:0] tmds_data;               // TMDS data signals (3 lanes)
    wire tmds_clk;                      // TMDS clock signal
    reg [23:0] pixel_data;              // Pixel data buffer
    reg pixel_valid;                    // Pixel valid flag

    
    wire [10:0] cx, cy, screen_start_x, screen_start_y, frame_width, frame_height, screen_width, screen_height;
    
    /*
    //reg [23:0] rgb = 24'd0;    
    // Pixel data handling logic
    always @(posedge clk_pixel) begin
        if (cx <= 5)
            rgb[23:16] <= ~8'd0;        // red
        else
            rgb[23:16] <= 8'd0;
    
        if (cy <= 5)
            rgb[15:8] <= ~8'd0;         // green
        else
            rgb[15:8] <= 8'd0;
    
        if (cx >= screen_width - 5 || cy >= screen_height - 5)
            rgb[7:0] <= ~8'd0;          // blue
        else
            rgb[7:0] <= 8'd0;
            
        pixel_data <= rgb;
    end
    */
    always @(posedge clk_pixel) begin
        pixel_data <= rgb;
    end


    // HDMI module instantiation
    hdmi #(
        .VIDEO_ID_CODE(4),              // 720p resolution
        .VIDEO_REFRESH_RATE(60),
        .AUDIO_RATE(48000),
        .AUDIO_BIT_WIDTH(16),
        .START_X(2)
    ) hdmi_inst (
        .clk_pixel_x5(clk_pixel_x5),
        .clk_pixel(clk_pixel),
        .clk_audio(clk_audio),
        .reset(~aresetn),               // Active-high reset
        .rgb(pixel_data),               // Pixel data input, 24-bit
        .audio_sample_word({16'd0, 16'd0}),  // Placeholder audio input
        .tmds(tmds_data),               // TMDS data output
        .tmds_clock(tmds_clk),          // TMDS clock output
        .cx(cx),
        .cy(cy),
        .frame_width(frame_width),
        .frame_height(frame_height),
        .screen_width(screen_width),
        .screen_height(screen_height)
    );

    // TMDS output buffers
    OBUFDS #(
        .IOSTANDARD("TMDS_33")
    ) obufds_clk (
        .I(tmds_clk),
        .O(TMDS2_clk_p),
        .OB(TMDS2_clk_n)
    );

    genvar i;
    generate
        for (i = 0; i < 3; i = i + 1) begin
            OBUFDS #(
                .IOSTANDARD("TMDS_33")
            ) obufds_data (
                .I(tmds_data[i]),
                .O(TMDS2_data_p[i]),
                .OB(TMDS2_data_n[i])
            );
        end
    endgenerate

endmodule
