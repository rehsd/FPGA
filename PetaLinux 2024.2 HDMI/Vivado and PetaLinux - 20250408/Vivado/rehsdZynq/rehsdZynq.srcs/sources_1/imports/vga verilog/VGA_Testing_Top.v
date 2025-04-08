module VGA_Testing_Top (
	input			i_Clock,
	input			i_VGA_Clock,

	// VGA
	output			o_VGA_HSync,
   	output			o_VGA_VSync,
   	output [15:0] 	o_VGA_RGB
	);

	// VGA Constants to set Frame Size
	parameter c_VIDEO_WIDTH = 3;       //TO DO: Increase this to 8
	parameter c_TOTAL_COLS  = 800;
	parameter c_TOTAL_ROWS  = 525;
	parameter c_ACTIVE_COLS = 640;
	parameter c_ACTIVE_ROWS = 480;

	// Common VGA Signals
	wire w_HSync_Porch;
	wire w_VSync_Porch;
	wire [c_VIDEO_WIDTH-1:0] w_Red_Video_TP, w_Red_Video_Porch;
	wire [c_VIDEO_WIDTH-1:0] w_Grn_Video_TP, w_Grn_Video_Porch;
	wire [c_VIDEO_WIDTH-1:0] w_Blu_Video_TP, w_Blu_Video_Porch;

	//Test pattern change rate
	//oscillator_speed / target_changes_per_second / 2
	//assuming a 100 Mhz oscillator
	parameter 	c_CNT	= 50000000;

    reg [31:0] 	r_CNT = 0;
	reg [7:0]	r_TEST_PATTERN;
		
	// Generates Sync Pulses to run VGA
	VGA_Sync_Pulses #(.TOTAL_COLS(c_TOTAL_COLS),
						.TOTAL_ROWS(c_TOTAL_ROWS),
						.ACTIVE_COLS(c_ACTIVE_COLS),
						.ACTIVE_ROWS(c_ACTIVE_ROWS)) 
	VGA_Sync_Pulses_Inst 
	(.i_Clk(i_VGA_Clock),
	.o_HSync(w_HSync_Start),
	.o_VSync(w_VSync_Start),
	.o_Col_Count(),
	.o_Row_Count()
	);


	// Drives Red/Grn/Blue video
	VGA_Test_Pattern_Gen  #(.VIDEO_WIDTH(c_VIDEO_WIDTH),
						.TOTAL_COLS(c_TOTAL_COLS),
						.TOTAL_ROWS(c_TOTAL_ROWS),
						.ACTIVE_COLS(c_ACTIVE_COLS),
						.ACTIVE_ROWS(c_ACTIVE_ROWS))
	VGA_Test_Pattern_Gen_Inst
	(.i_Clk(i_VGA_Clock),
		.i_Pattern(r_TEST_PATTERN[4:1]),
		.i_HSync(w_HSync_Start),
		.i_VSync(w_VSync_Start),
		.o_HSync(w_HSync_TP),
		.o_VSync(w_VSync_TP),
		.o_Red_Video(w_Red_Video_TP),
		.o_Grn_Video(w_Grn_Video_TP),
		.o_Blu_Video(w_Blu_Video_TP));
		
	VGA_Sync_Porch  #(.VIDEO_WIDTH(c_VIDEO_WIDTH),
						.TOTAL_COLS(c_TOTAL_COLS),
						.TOTAL_ROWS(c_TOTAL_ROWS),
						.ACTIVE_COLS(c_ACTIVE_COLS),
						.ACTIVE_ROWS(c_ACTIVE_ROWS))
	VGA_Sync_Porch_Inst
	(.i_Clk(i_VGA_Clock),
		.i_HSync(w_HSync_TP),
		.i_VSync(w_VSync_TP),
		.i_Red_Video(w_Red_Video_TP),
		.i_Grn_Video(w_Grn_Video_TP),
		.i_Blu_Video(w_Blu_Video_TP),
		.o_HSync(w_HSync_Porch),
		.o_VSync(w_VSync_Porch),
		.o_Red_Video(w_Red_Video_Porch),
		.o_Grn_Video(w_Grn_Video_Porch),
		.o_Blu_Video(w_Blu_Video_Porch));	

	always @(posedge i_Clock)
		begin
			if(r_CNT == c_CNT-1)	  
				begin
					r_TEST_PATTERN <= r_TEST_PATTERN + 1;
					r_CNT <= 0;
				end
			else
				r_CNT <= r_CNT + 1;
		end
	
	assign o_VGA_HSync = w_HSync_Porch;
	assign o_VGA_VSync = w_VSync_Porch;

    //Temporarily scaling RGB333 to RGB565      //TO DO: Change to use native RGB565 instead of scaling
	assign o_VGA_RGB[15] = w_Red_Video_Porch[2];
	assign o_VGA_RGB[14] = w_Red_Video_Porch[2];
	assign o_VGA_RGB[13] = w_Red_Video_Porch[1];
	assign o_VGA_RGB[12] = w_Red_Video_Porch[1];
	assign o_VGA_RGB[11] = w_Red_Video_Porch[0];
	
	assign o_VGA_RGB[10] = w_Grn_Video_Porch[2];
	assign o_VGA_RGB[9] = w_Grn_Video_Porch[2];
	assign o_VGA_RGB[8] = w_Grn_Video_Porch[1];
	assign o_VGA_RGB[7] = w_Grn_Video_Porch[1];
	assign o_VGA_RGB[6] = w_Grn_Video_Porch[0];
	assign o_VGA_RGB[5] = w_Grn_Video_Porch[0];
	
	assign o_VGA_RGB[4] = w_Blu_Video_Porch[2];
	assign o_VGA_RGB[3] = w_Blu_Video_Porch[2];
	assign o_VGA_RGB[2] = w_Blu_Video_Porch[1];
	assign o_VGA_RGB[1] = w_Blu_Video_Porch[1];
	assign o_VGA_RGB[0] = w_Blu_Video_Porch[0];

endmodule	
