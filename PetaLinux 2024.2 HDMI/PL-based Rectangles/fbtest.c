#include <fcntl.h>
#include <linux/fb.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "sprite_data.c"

#include <stdint.h> 

// Frame buffer base addresses
// #define FB0 0x30000000
// #define FB1 0x30800000
// #define FB2 0x31000000
// 0x3020_0000 = 807403520

#define SCREEN_WIDTH    1280
#define SCREEN_HEIGHT   720

// GFX GPIO
#define GPIO_GFX_COMMAND_BASE_ADDR 0x41220000
#define GPIO_GFX_PARAMS1_BASE_ADDR 0x41230000
#define GPIO_GFX_START_BASE_ADDR   0x41260000
#define GPIO_GFX_STATUS_BASE_ADDR  0x40030000
#define GPIO_CH1_OFFSET 0x0     //ch1 data   
#define GPIO_CH2_OFFSET 0x8     //ch2 data

// GFX Command Definitions
#define CMD_IDLE        0x00  // Idle (no operation)
#define CMD_PIXEL       0x01  // Single pixel write
#define CMD_RECT        0x02  // Rectangle
#define CMD_CIRCLE      0x03  // Circle
#define CMD_LINE        0x04  // Line draw

// MISC
#define NO_FILL         0x0
#define FILL            0x1
#define GPIO_RANGE_SIZE 0x0020 // 32 Bytes

#define FRAME_0_ADDR    0x30900000
#define FRAME_1_ADDR    0x30900000+(1280*4*720)
#define DELAY_GLOBAL    1

uint8_t read_gpio_bit(uint32_t base_addr, uint32_t offset) {
    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        perror("Failed to open /dev/mem");
        return 0;
    }

    volatile uint32_t *gpio_regs = mmap(NULL, GPIO_RANGE_SIZE, PROT_READ, MAP_SHARED, fd, base_addr);
    if (gpio_regs == MAP_FAILED) {
        perror("Failed to mmap");
        close(fd);
        return 0;
    }

    uint32_t gpio_value = gpio_regs[offset / 4];
    uint8_t first_bit = gpio_value & 0x1;

    munmap((void *)gpio_regs, GPIO_RANGE_SIZE);
    close(fd);

    return first_bit;
}

void write_gpio_atomic(uint32_t base_addr, uint32_t offset, uint32_t value) {
    int fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (fd < 0) {
        perror("Failed to open /dev/mem");
        return;
    }

    volatile uint32_t *gpio_regs = mmap(NULL, GPIO_RANGE_SIZE, PROT_READ | PROT_WRITE, MAP_SHARED, fd, base_addr);
    if (gpio_regs == MAP_FAILED) {
        perror("Failed to mmap");
        close(fd);
        return;
    }

    // Write full 32-bit value atomically
    gpio_regs[offset / 4] = value;
    //printf("write_gpio_atomic: gpio_regs[offset / 4] ==> setting 0x%X to 0x%X\n", offset / 4, value);
    //usleep(DELAY_GLOBAL);


    munmap((void *)gpio_regs, GPIO_RANGE_SIZE);
    close(fd);

}

void set_gpio1_ch1(uint32_t fb_base_addr) {                                     // base_addr
    //printf("set_gpio1_ch1: base 0x%X (gfx_command), offset 0x%X (gpio1ch1), value = 0x%X (fb_base_addr)\n", GPIO_GFX_COMMAND_BASE_ADDR, GPIO_CH1_OFFSET, fb_base_addr);
    write_gpio_atomic(GPIO_GFX_COMMAND_BASE_ADDR, GPIO_CH1_OFFSET, fb_base_addr);
    //usleep(DELAY_GLOBAL);
}

void set_gpio1_ch2(uint8_t command, uint16_t x_start, uint16_t y_start) {       // command, x_start, y_start
    // Prepare the 32-bit value without the 'start' bit set
    uint32_t value = (command & 0xFF) | ((x_start & 0x7FF) << 8) | ((y_start & 0x3FF) << 19);
    
    // Write the prepared value to gpio1_ch2
    // write_gpio_atomic(GPIO_GFX_COMMAND_BASE_ADDR, GPIO_CH2_OFFSET, value);

    //value &= ~(1 << 29); // Clear bit 29 (start bit)
    //write_gpio_atomic(GPIO_GFX_COMMAND_BASE_ADDR, GPIO_CH2_OFFSET, value);
    //usleep(DELAY_GLOBAL);
        
    // Set the 'start' bit explicitly last
    //printf("set_gpio1_ch2: base 0x%X (gfx_command), offset 0x%X (gpio1ch2), value = 0x%X (command, x_start, y_start)\n", GPIO_GFX_COMMAND_BASE_ADDR, GPIO_CH2_OFFSET, value);
    //value |= (1 << 29); // Set bit 29 (start bit)
    write_gpio_atomic(GPIO_GFX_COMMAND_BASE_ADDR, GPIO_CH2_OFFSET, value);

    //usleep(DELAY_GLOBAL);
}

void set_gpio2_ch1(uint32_t color) {                                            // color
    //printf("set_gpio2_ch1: base 0x%X (gfx_params1), offset 0x%X (gpio2ch1), value = 0x%X (color)\n", GPIO_GFX_PARAMS1_BASE_ADDR, GPIO_CH1_OFFSET, color);
    write_gpio_atomic(GPIO_GFX_PARAMS1_BASE_ADDR, GPIO_CH1_OFFSET, color);
    //usleep(DELAY_GLOBAL);
}

void set_gpio2_ch2(uint16_t x_end, uint16_t y_end, uint8_t fill) {              // x_end, y_end, fill
    uint32_t value = (x_end & 0x7FF) | 
                     ((y_end & 0x3FF) << 11) | 
                     ((fill & 0x1) << 21);
    //printf("set_gpio2_ch2: base 0x%X (gfx_params1), offset 0x%X (gpio2ch2), value = 0x%X (x_end, y_end, fill, start)\n", GPIO_GFX_PARAMS1_BASE_ADDR, GPIO_CH2_OFFSET, value);
    write_gpio_atomic(GPIO_GFX_PARAMS1_BASE_ADDR, GPIO_CH2_OFFSET, value);
    //usleep(DELAY_GLOBAL);
}

void set_gpio_start() {                                                         // start
    int delayed = 0;
    uint32_t value = 0x00000000;
    write_gpio_atomic(GPIO_GFX_START_BASE_ADDR, GPIO_CH1_OFFSET, value);
    //usleep(DELAY_GLOBAL);
    value = 0x00000001;
    write_gpio_atomic(GPIO_GFX_START_BASE_ADDR, GPIO_CH1_OFFSET, value);
    //usleep(DELAY_GLOBAL);
    
    //Check done flag. Poll for now. TO DO: switch to interrupt-driven
    while(read_gpio_bit(GPIO_GFX_STATUS_BASE_ADDR,GPIO_CH1_OFFSET)==0)
    {
        //printf(".");
        //usleep(500);
        //delayed = 1;
    }
    if (delayed)
    {
        //printf("\n");
    }
    
}

void draw_line(uint32_t fb_base_addr, uint32_t screen_width, uint32_t screen_height,
    uint32_t x_start, uint32_t y_start, uint32_t x_end, uint32_t y_end,
    uint32_t color) {

    // Set GPIO channels atomically
    set_gpio1_ch1(fb_base_addr);         // Framebuffer base address
    usleep(DELAY_GLOBAL);

    set_gpio2_ch1(color);                // Color
    usleep(DELAY_GLOBAL);

    set_gpio2_ch2(x_end, y_end, 0);   // x_end, y_end, and fill
    usleep(DELAY_GLOBAL);

    set_gpio1_ch2(CMD_LINE, x_start, y_start); // Command, x_start, y_start, with **START** set last
    usleep(DELAY_GLOBAL);



    // Trigger the operation (start bit is already set last in set_gpio1_ch2)
    printf("Line drawn from (%u, %u) to (%u, %u) using color 0x%x and frame buffer base 0x%x.\n", 
        x_start, y_start, x_end, y_end, color, fb_base_addr);
}

void draw_rectangle(uint32_t fb_base_addr, uint16_t screen_width, uint16_t screen_height,
    uint16_t x_start, uint16_t y_start, uint16_t x_end, uint16_t y_end,
    uint32_t color, uint8_t fill) {

    // Set GPIO channels atomically
    set_gpio1_ch1(fb_base_addr);         // Framebuffer base address
    //usleep(DELAY_GLOBAL);

    set_gpio2_ch1(color);                // Color
    //usleep(DELAY_GLOBAL);

    set_gpio2_ch2(x_end, y_end, fill);   // x_end, y_end, and fill
    //usleep(DELAY_GLOBAL);

    set_gpio1_ch2(CMD_RECT, x_start, y_start); // Command, x_start, y_start, with **START** set last
    //usleep(DELAY_GLOBAL);

    set_gpio_start();
    //usleep(DELAY_GLOBAL);

    //printf("Rectangle drawn from (%u, %u) to (%u, %u) using color 0x%x and frame buffer base 0x%x.\n", 
    //    x_start, y_start, x_end, y_end, color, fb_base_addr);
}

void draw_circle(uint32_t fb_base_addr, uint32_t screen_width, uint32_t screen_height,
    uint32_t x_start, uint32_t y_start, uint32_t x_end, uint32_t y_end,
    uint32_t color, uint8_t fill) {

    // Set GPIO channels atomically
    set_gpio1_ch1(fb_base_addr);         // Framebuffer base address
    usleep(DELAY_GLOBAL);

    set_gpio2_ch1(color);                // Color
    usleep(DELAY_GLOBAL);

    set_gpio2_ch2(x_end, y_end, fill);   // x_end, y_end, and fill
    usleep(DELAY_GLOBAL);

    set_gpio1_ch2(CMD_CIRCLE, x_start, y_start); // Command, x_start, y_start, with **START** set last
    usleep(DELAY_GLOBAL);



    // Trigger the operation (start bit is already set last in set_gpio1_ch2)
    printf("Circle drawn with center at (%u, %u) and a radius of (%u) using color 0x%x and frame buffer base 0x%x.\n", 
        x_start, y_start, x_end-x_start, color, fb_base_addr);
}

uintptr_t get_framebuffer_address(int fb_number) {
    int fbfd = 0;
    struct fb_fix_screeninfo finfo;
    char fbdev[100];

    // Construct the framebuffer device name based on the input
    snprintf(fbdev, sizeof(fbdev), "/dev/fb%d", fb_number);

    // Open the framebuffer device
    fbfd = open(fbdev, O_RDWR);
    if (fbfd == -1) {
        perror("Error: cannot open framebuffer device");
        return 0; // Return 0 on failure
    }

    // Get fixed screen information
    if (ioctl(fbfd, FBIOGET_FSCREENINFO, &finfo)) {
        perror("Error reading fixed screen info");
        close(fbfd);
        return 0; // Return 0 on failure
    }

    close(fbfd); // Close the device after retrieving the information

    // Return the starting physical address of the framebuffer
    return (uintptr_t)finfo.smem_start;
}

void fbSwapActiveFrame()
{
    struct fb_var_screeninfo vinfo;
    int fb_fd = open("/dev/fb1", O_RDWR);
    ioctl(fb_fd, FBIOGET_VSCREENINFO, &vinfo);
    //printf("yoffset before swap:%d\n", vinfo.yoffset);
    vinfo.yoffset = (vinfo.yoffset == 0) ? vinfo.yres : 0;
    //printf("yoffset after swap:%d\n", vinfo.yoffset);
    ioctl(fb_fd, FBIOPAN_DISPLAY, &vinfo);
    close(fb_fd);
}

void keyPressToContinue()
{
    printf("Press any key to continue...\n");
    int c;
    // Clear any leftover characters in the input buffer
    while ((c = getchar()) != '\n' && c != EOF) {
        // Discard characters
    }
    // Wait for user to press a key
    getchar();
    // Clear any leftover characters in the input buffer
    while ((c = getchar()) != '\n' && c != EOF) {
        // Discard characters
    }
}

int translateColor(int original)
{
	//converts RGB565 to RGB888, using bright side of colors
	int result = 0;

	// Extract the first 5 bits of the original integer
	int new_byte1 = (original >> 11) & 0x1F;

	// Extract the next 6 bits
	int new_byte2 = (original >> 5) & 0x3F;

	// Extract the final 5 bits
	int new_byte3 = original & 0x1F;

	// Combine the three new bytes into a new integer
	result = (new_byte3 << 19) | (new_byte2 << 10) | (new_byte1 << 3);
	return result;
}

void DrawPixel(char *fbp, int xpos, int ypos, int color, int xoffset, int yoffset, int bpp, int linelen)
{
	long int location = (xpos + xoffset) * (bpp / 8) +
						(ypos + yoffset) * linelen;
	*((unsigned int *)(fbp + location)) = translateColor(color);
	return;
}

void drawSprite(char *fbp, int x, int y, int spriteNum, int xoffset, int yoffset, int bpp, int linelen)
{
	int _x = 0;
	int _y = 0;
	switch (spriteNum)
	{
	case 0:
		for (int ypos = 0; ypos < 32; ypos++)
		{
			for (int xpos = 0; xpos < 32; xpos++)
			{
				DrawPixel(fbp, xpos + x, ypos + y, (int)met1[ypos][xpos], xoffset, yoffset, bpp, linelen);
				_y++;
			}
			_x++;
		}
		break;
	case 1:
		for (int ypos = 0; ypos < 32; ypos++)
		{
			for (int xpos = 0; xpos < 32; xpos++)
			{
				DrawPixel(fbp, xpos + x, ypos + y, (int)met2[ypos][xpos], xoffset, yoffset, bpp, linelen);
				_y++;
			}
			_x++;
		}
		break;
	case 2:
		for (int ypos = 0; ypos < 32; ypos++)
		{
			for (int xpos = 0; xpos < 32; xpos++)
			{
				DrawPixel(fbp, xpos + x, ypos + y, (int)met3[ypos][xpos], xoffset, yoffset, bpp, linelen);
				_y++;
			}
			_x++;
		}
		break;

	default:
		//do nothing
		break;
	}
}

void clearSpriteTrail(char *fbp, int x, int y, int xoffset, int yoffset, int bpp, int linelen)
{
	//assumes right movement only (for now)
	int _x = 0;
	int _y = 0;

		for (int ypos = 0; ypos < 32; ypos++)
		{
			for (int xpos = 0; xpos < 12; xpos++)	//only need to clear the left most part when moving right
			{
				DrawPixel(fbp, xpos + x, ypos + y, 0, xoffset, yoffset, bpp, linelen);
				_y++;
			}
			_x++;
		}
}

void print_fix_screeninfo(struct fb_fix_screeninfo finfo) {
    printf("Fixed screen info:\n");
    printf("\tid: %s\n", finfo.id);
    printf("\tsmem_start: %lu\n", finfo.smem_start);
    printf("\tsmem_len: %u\n", finfo.smem_len);
    printf("\ttype: %u, ", finfo.type);	printf("type_aux: %u\n", finfo.type_aux);
    printf("\tvisual: %u\n", finfo.visual);
    printf("\txpanstep: %u, ", finfo.xpanstep);	printf("ypanstep: %u\n", finfo.ypanstep);
    printf("\tywrapstep: %u\n", finfo.ywrapstep);
    printf("\tline_length: %u\n", finfo.line_length);
    printf("\tmmio_start: %lu, ", finfo.mmio_start);	printf("mmio_len: %u\n", finfo.mmio_len);
    printf("\taccel: %u\n", finfo.accel);
    printf("\tcapabilities: %u\n", finfo.capabilities);
}

void print_var_screeninfo(struct fb_var_screeninfo vinfo) {
    printf("Variable screen info:\n");
    printf("\txres: %u, ", vinfo.xres);	printf("yres: %u\n", vinfo.yres);
    printf("\txres_virtual: %u, ", vinfo.xres_virtual);	printf("yres_virtual: %u\n", vinfo.yres_virtual);
    printf("\txoffset: %u, ", vinfo.xoffset);		printf("yoffset: %u\n", vinfo.yoffset);
    printf("\tbits_per_pixel: %u\n", vinfo.bits_per_pixel);
    printf("\tgrayscale: %u\n", vinfo.grayscale);
    printf("\tred: offset=%u, length=%u, msb_right=%u\n", vinfo.red.offset, vinfo.red.length, vinfo.red.msb_right);
    printf("\tgreen: offset=%u, length=%u, msb_right=%u\n", vinfo.green.offset, vinfo.green.length, vinfo.green.msb_right);
    printf("\tblue: offset=%u, length=%u, msb_right=%u\n", vinfo.blue.offset, vinfo.blue.length, vinfo.blue.msb_right);
    printf("\ttransp: offset=%u, length=%u, msb_right=%u\n", vinfo.transp.offset, vinfo.transp.length, vinfo.transp.msb_right);
    printf("\tnonstd: %u\n", vinfo.nonstd);
    printf("\tactivate: %u\n", vinfo.activate);
    printf("\theight: %u, ", vinfo.height);   printf("width: %u\n", vinfo.width);
    printf("\taccel_flags: %u\n", vinfo.accel_flags);
    printf("\tpixclock: %u\n", vinfo.pixclock);
    printf("\tleft_margin: %u, ", vinfo.left_margin);  printf("right_margin: %u\n", vinfo.right_margin);
    printf("\tupper_margin: %u, ", vinfo.upper_margin);  printf("lower_margin: %u\n", vinfo.lower_margin);
    printf("\thsync_len: %u, ", vinfo.hsync_len);	printf("vsync_len: %u\n", vinfo.vsync_len);
    printf("\tsync: %u\n", vinfo.sync);
    printf("\tvmode: %u\n", vinfo.vmode);
    printf("\trotate: %u\n", vinfo.rotate);
}

void showhelp() {
    printf("fbtest version 0.010\n");
	printf("Usage: fbtest <option>\n");
	printf("\t--showcfg\t\tList basic fb device info\n");
	printf("\t--test1\t\t\tRGB bar moving down the screen (FB)\n");
	printf("\t--test1pl\t\tRGB bar moving down the screen (PL)\n");
	printf("\t--test2\t\t\tAnimated sprites\n");
	printf("\t--test3\t\t\tDisplay full-screen image\n");
	printf("\t--test4\t\t\tTriple-display test\n");
	printf("\t--test5\t\t\tPL gfx_controller test\n");
	printf("\t--test6\t\t\tPL gfx_controller test - random rectangles, loop\n");
	printf("\t--help\n");
	return;
}

void showcfg() {
    int fbfd = 0;
    struct fb_var_screeninfo vinfo;
    struct fb_fix_screeninfo finfo;
    long int screensize = 0;
    char *fbp = 0;
    char fbdev[100] = "/dev/fb0"; // Default framebuffer device

    // Open the framebuffer device file
    // Prompt user to enter the framebuffer device
	printf("Enter framebuffer device (default /dev/fb0): ");
	fgets(fbdev, sizeof(fbdev), stdin);
	// Remove newline character if present
	fbdev[strcspn(fbdev, "\n")] = 0;
	// Use default if no input is provided
	if (strlen(fbdev) == 0) {
		strcpy(fbdev, "/dev/fb0");
	}

    fbfd = open(fbdev, O_RDWR);
    if (fbfd == -1) {
        perror("Error: cannot open framebuffer device");
        exit(1);
    }
    else
    {
    	printf("Framebuffer device %s opened\n", fbdev);
    }

    // Get fixed screen information
    if (ioctl(fbfd, FBIOGET_FSCREENINFO, &finfo)) {
        perror("Error reading fixed information");
        exit(2);
    }
    else
    {
    	print_fix_screeninfo(finfo);
        fflush(stdout);
    }

    // Get variable screen information
    if (ioctl(fbfd, FBIOGET_VSCREENINFO, &vinfo)) {
        perror("Error reading variable information");
        exit(3);
    }
    else
    {
    	print_var_screeninfo(vinfo);
        fflush(stdout);
    }

    // Figure out the size of the screen in bytes
    screensize = vinfo.yres_virtual * finfo.line_length;

    // Map the device to memory
    fbp = (char *)mmap(0, screensize, PROT_READ | PROT_WRITE, MAP_SHARED, fbfd, 0);
    if ((int)fbp == -1) {
        perror("Error: failed to map framebuffer device to memory");
        exit(4);
    }
    else
    {
    	printf("framebuffer mapped to memory\n");
        fflush(stdout);
    }

    // Clean up
    munmap(fbp, screensize);
    close(fbfd);

    return;
}

void clearFrame(uint8_t bufferNumber, uint32_t clearColor) {

    int fbfd = 0;
    struct fb_var_screeninfo vinfo;
    struct fb_fix_screeninfo finfo;
    long int screensize = 0;
    char *fbp = 0;

    if(bufferNumber == 1)
    {
        fbfd = open("/dev/fb1", O_RDWR);
    }
    else
    {
        fbfd = open("/dev/fb0", O_RDWR);
    }

    if (fbfd == -1) {
        perror("Error: cannot open framebuffer device");
        exit(1);
    }

    // Get fixed screen information
    if (ioctl(fbfd, FBIOGET_FSCREENINFO, &finfo)) {
        perror("Error reading fixed information");
        exit(2);
    }

    // Get variable screen information
    if (ioctl(fbfd, FBIOGET_VSCREENINFO, &vinfo)) {
        perror("Error reading variable information");
        exit(3);
    }

    // Figure out the size of the screen in bytes
    screensize = vinfo.yres_virtual * finfo.line_length;

    // Map the device to memory
    fbp = (char *)mmap(0, screensize, PROT_READ | PROT_WRITE, MAP_SHARED, fbfd, 0);
    if ((int)fbp == -1) {
        perror("Error: failed to map framebuffer device to memory");
        exit(4);
    }

    // Draw on the framebuffer
    memset(fbp, clearColor, screensize); // Clear the screen to black

    
    // Clean up
    munmap(fbp, screensize);
    close(fbfd);

    return;
}

void test1() {                      //moving vertical bars RGB

    int fbfd = 0;
    struct fb_var_screeninfo vinfo;
    struct fb_fix_screeninfo finfo;
    long int screensize = 0;
    char *fbp = 0;
    char fbdev[100] = "/dev/fb0"; // Default framebuffer device

    // Prompt user to enter the framebuffer device
	printf("Enter framebuffer device (default /dev/fb0): ");
	fgets(fbdev, sizeof(fbdev), stdin);
	// Remove newline character if present
	fbdev[strcspn(fbdev, "\n")] = 0;
	// Use default if no input is provided
	if (strlen(fbdev) == 0) {
		strcpy(fbdev, "/dev/fb0");
	}

    fbfd = open(fbdev, O_RDWR);
    if (fbfd == -1) {
        perror("Error: cannot open framebuffer device");
        exit(1);
    }

    // Get fixed screen information
    if (ioctl(fbfd, FBIOGET_FSCREENINFO, &finfo)) {
        perror("Error reading fixed information");
        exit(2);
    }

    // Get variable screen information
    if (ioctl(fbfd, FBIOGET_VSCREENINFO, &vinfo)) {
        perror("Error reading variable information");
        exit(3);
    }

    // Figure out the size of the screen in bytes
    screensize = vinfo.yres_virtual * finfo.line_length;

    // Map the device to memory
    fbp = (char *)mmap(0, screensize, PROT_READ | PROT_WRITE, MAP_SHARED, fbfd, 0);
    if ((int)fbp == -1) {
        perror("Error: failed to map framebuffer device to memory");
        exit(4);
    }

    // Draw on the framebuffer
    memset(fbp, 0, screensize); // Clear the screen to black

	for(int pos_offset = 0; pos_offset < 400; pos_offset++) {
		//clear it
		for (int y = 100; y < 101; y++) {
			for (int x = 500; x < 800; x++) {
				long int location = (x + vinfo.xoffset) * (vinfo.bits_per_pixel / 8) +
									(y + pos_offset-1 + vinfo.yoffset) * finfo.line_length;
				*((unsigned int *)(fbp + location)) = 0x000000; // Set pixel to black
			}
		}
		//draw three color bars
		for (int y = 100; y < 150; y++) {
			for (int x = 500; x < 600; x++) {
				long int location = (x + vinfo.xoffset) * (vinfo.bits_per_pixel / 8) +
									(y + pos_offset + vinfo.yoffset) * finfo.line_length;
				*((unsigned int *)(fbp + location)) = 0xFF0000; // Set pixel to red
			}
		}
		for (int y = 100; y < 150; y++) {
			for (int x = 600; x < 700; x++) {
				long int location = (x + vinfo.xoffset) * (vinfo.bits_per_pixel / 8) +
									(y + pos_offset + vinfo.yoffset) * finfo.line_length;
				*((unsigned int *)(fbp + location)) = 0x00FF00; // Set pixel to green
			}
		}
		for (int y = 100; y < 150; y++) {
			for (int x = 700; x < 800; x++) {
				long int location = (x + vinfo.xoffset) * (vinfo.bits_per_pixel / 8) +
									(y + pos_offset + vinfo.yoffset) * finfo.line_length;
				*((unsigned int *)(fbp + location)) = 0x0000FF; // Set pixel to blue
			}
		}
		usleep(3000);
    }
    // Clean up
    munmap(fbp, screensize);
    close(fbfd);

    return;
}

void test1pl() {                      //moving vertical bars RGB

    //hard-coded for 720p for now
    
    //clear it
    draw_rectangle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 0, 0, 1280-1, 720-1, 0xFF000000, FILL);
    
	for(int pos_offset = 0; pos_offset < 400; pos_offset++) {

        //clear trail
        draw_rectangle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 500, 100 + pos_offset -1, 799, 100 + pos_offset -1, 0xFF000000, FILL);

        //rgb
        draw_rectangle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 500, 100 + pos_offset, 599, 149 + pos_offset, 0xFFFF0000, FILL);
        draw_rectangle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 600, 100 + pos_offset, 699, 149 + pos_offset, 0xFF00FF00, FILL);
        draw_rectangle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 700, 100 + pos_offset, 799, 149 + pos_offset, 0xFF0000FF, FILL);
		
		usleep(3000);
    }
    // Clean up

    return;
}

void test2() {                      //animated software sprites
    int fbfd = 0;
	int spriteNum = 0;
	int xmove = 6;
	int yloc = 200;
    struct fb_var_screeninfo vinfo;
    struct fb_fix_screeninfo finfo;
    long int screensize = 0;
    char *fbp = 0;
    char fbdev[100] = "/dev/fb0"; // Default framebuffer device

    // Prompt user to enter the framebuffer device
	printf("Enter framebuffer device (default /dev/fb0): ");
	fgets(fbdev, sizeof(fbdev), stdin);
	// Remove newline character if present
	fbdev[strcspn(fbdev, "\n")] = 0;
	// Use default if no input is provided
	if (strlen(fbdev) == 0) {
		strcpy(fbdev, "/dev/fb0");
	}

    fbfd = open(fbdev, O_RDWR);
    if (fbfd == -1) {
        perror("Error: cannot open framebuffer device");
        exit(1);
    }

    // Get fixed screen information
    if (ioctl(fbfd, FBIOGET_FSCREENINFO, &finfo)) {
        perror("Error reading fixed information");
        exit(2);
    }

    // Get variable screen information
    if (ioctl(fbfd, FBIOGET_VSCREENINFO, &vinfo)) {
        perror("Error reading variable information");
        exit(3);
    }

    // Figure out the size of the screen in bytes
    screensize = vinfo.yres_virtual * finfo.line_length;

    // Map the device to memory
    fbp = (char *)mmap(0, screensize, PROT_READ | PROT_WRITE, MAP_SHARED, fbfd, 0);
    if ((int)fbp == -1) {
        perror("Error: failed to map framebuffer device to memory");
        exit(4);
    }

    // Draw on the framebuffer
    memset(fbp, 0, screensize); // Clear the screen to black

    for (int x = 50; x < 1200; x += xmove)
	{
    	//clear previous sprites
    	clearSpriteTrail(fbp, x-12, yloc, vinfo.xoffset, vinfo.yoffset, vinfo.bits_per_pixel, finfo.line_length);
    	clearSpriteTrail(fbp, x-12, yloc+100, vinfo.xoffset, vinfo.yoffset, vinfo.bits_per_pixel, finfo.line_length);
    	clearSpriteTrail(fbp, x-12, yloc+200, vinfo.xoffset, vinfo.yoffset, vinfo.bits_per_pixel, finfo.line_length);

    	//draw new sprites
    	drawSprite(fbp, x, yloc, spriteNum, vinfo.xoffset, vinfo.yoffset, vinfo.bits_per_pixel, finfo.line_length);
    	drawSprite(fbp, x, yloc+100, spriteNum, vinfo.xoffset, vinfo.yoffset, vinfo.bits_per_pixel, finfo.line_length);
    	drawSprite(fbp, x, yloc+200, spriteNum, vinfo.xoffset, vinfo.yoffset, vinfo.bits_per_pixel, finfo.line_length);

    	spriteNum++;
		if (spriteNum > 2) { spriteNum = 0; }
		usleep(60000);
	}

    // Clean up
    munmap(fbp, screensize);
    close(fbfd);

    return;
}

void test3() {                      //full-screen image

    char fbdev[100] = "/dev/fb0"; // Default framebuffer device
    char command[200] = "";

    // Assuming a raw rgb file (not jpeg/png)

    // Can create with ImageMagick
    // "sudo convert bird_1920x1080_24bpp.jpg -separate -swap 0,2 -combine -resize 1280x720\! -depth 8 bird_1280x720_24bpp.rgb"

    // Prompt user to enter the framebuffer device
	printf("Enter framebuffer device (default /dev/fb0): ");
	fgets(fbdev, sizeof(fbdev), stdin);
	// Remove newline character if present
	fbdev[strcspn(fbdev, "\n")] = 0;
	// Use default if no input is provided
	if (strlen(fbdev) == 0) {
		strcpy(fbdev, "/dev/fb0");
	}

	strcpy(command, "dd if=/usr/bin/bird_1280x720_24bpp.rgb bs=2764800 count=1 of=");
	strcat(command, fbdev);
	//strcat(command, " >/dev/null 2>&1");

	printf("Going to run: %s\n", command);
	int result = system(command);

	return;
}

void test4() {                      //horizontal moving bars RGB across three screens

    int fbfd0, fbfd1, fbfd2 = 0;
    struct fb_var_screeninfo vinfo0;
    struct fb_var_screeninfo vinfo1;
    struct fb_var_screeninfo vinfo2;
    struct fb_fix_screeninfo finfo0;
    struct fb_fix_screeninfo finfo1;
    struct fb_fix_screeninfo finfo2;
    long int screensize0, screensize1, screensize2 = 0;
    char *fbp0 = 0;
    char *fbp1 = 0;
    char *fbp2 = 0;
    char fbdev0[100] = "/dev/fb0";
    char fbdev1[100] = "/dev/fb1";
    char fbdev2[100] = "/dev/fb2";

    fbfd0 = open(fbdev0, O_RDWR);
    if (fbfd0 == -1) {
        perror("Error: cannot open framebuffer device fb0");
        exit(1);
    }

    fbfd1 = open(fbdev1, O_RDWR);
    if (fbfd1 == -1) {
        perror("Error: cannot open framebuffer device fb1");
        exit(1);
    }

    fbfd2 = open(fbdev2, O_RDWR);
    if (fbfd2 == -1) {
        perror("Error: cannot open framebuffer device fb2");
        exit(1);
    }


    // Get fixed screen information
    if (ioctl(fbfd0, FBIOGET_FSCREENINFO, &finfo0)) {
        perror("Error reading fixed information for fb0");
        exit(2);
    }
    if (ioctl(fbfd1, FBIOGET_FSCREENINFO, &finfo1)) {
        perror("Error reading fixed information for fb1");
        exit(2);
    }
    if (ioctl(fbfd2, FBIOGET_FSCREENINFO, &finfo2)) {
        perror("Error reading fixed information for fb2");
        exit(2);
    }

    // Get variable screen information
    if (ioctl(fbfd0, FBIOGET_VSCREENINFO, &vinfo0)) {
        perror("Error reading variable information for fb0");
        exit(3);
    }
    if (ioctl(fbfd1, FBIOGET_VSCREENINFO, &vinfo1)) {
        perror("Error reading variable information for fb1");
        exit(3);
    }
    if (ioctl(fbfd2, FBIOGET_VSCREENINFO, &vinfo2)) {
        perror("Error reading variable information for fb2");
        exit(3);
    }

    // Figure out the size of the screen in bytes
    screensize0 = vinfo0.yres_virtual * finfo0.line_length;
    screensize1 = vinfo1.yres_virtual * finfo1.line_length;
    screensize2 = vinfo2.yres_virtual * finfo2.line_length;

    // Map the device to memory
    fbp0 = (char *)mmap(0, screensize0, PROT_READ | PROT_WRITE, MAP_SHARED, fbfd0, 0);
    if ((int)fbp0 == -1) {
        perror("Error: failed to map framebuffer device to memory (fb0)");
        exit(4);
    }
    fbp1 = (char *)mmap(0, screensize1, PROT_READ | PROT_WRITE, MAP_SHARED, fbfd1, 0);
    if ((int)fbp1 == -1) {
        perror("Error: failed to map framebuffer device to memory (fb1)");
        exit(4);
    }
    fbp2 = (char *)mmap(0, screensize2, PROT_READ | PROT_WRITE, MAP_SHARED, fbfd2, 0);
    if ((int)fbp2 == -1) {
        perror("Error: failed to map framebuffer device to memory (fb2)");
        exit(4);
    }

    // Draw on the framebuffer
    memset(fbp0, 0, screensize0); // Clear the screen to black
    memset(fbp1, 0, screensize1); // Clear the screen to black
    memset(fbp2, 0, screensize2); // Clear the screen to black

	for(int pos_offset = 0; pos_offset < 400; pos_offset++) {
		//clear it
		for (int y = 100; y < 101; y++) {
			for (int x = 500; x < 800; x++) {
				long int location = (x + vinfo0.xoffset) * (vinfo0.bits_per_pixel / 8) +
									(y + pos_offset-1 + vinfo0.yoffset) * finfo0.line_length;
				*((unsigned int *)(fbp0 + location)) = 0x000000; // Set pixel to black
				*((unsigned int *)(fbp1 + location)) = 0x000000; // Set pixel to black
				*((unsigned int *)(fbp2 + location)) = 0x000000; // Set pixel to black
			}
		}
		//draw three color bars
		for (int y = 100; y < 150; y++) {
			for (int x = 500; x < 600; x++) {
				long int location = (x + vinfo0.xoffset) * (vinfo0.bits_per_pixel / 8) +
									(y + pos_offset + vinfo0.yoffset) * finfo0.line_length;
				*((unsigned int *)(fbp0 + location)) = 0xFF0000; // Set pixel to red
				*((unsigned int *)(fbp1 + location)) = 0xFF0000; // Set pixel to red
				*((unsigned int *)(fbp2 + location)) = 0xFF0000; // Set pixel to red
			}
		}
		for (int y = 100; y < 150; y++) {
			for (int x = 600; x < 700; x++) {
				long int location = (x + vinfo0.xoffset) * (vinfo0.bits_per_pixel / 8) +
									(y + pos_offset + vinfo0.yoffset) * finfo0.line_length;
				*((unsigned int *)(fbp0 + location)) = 0x00FF00; // Set pixel to green
				*((unsigned int *)(fbp1 + location)) = 0x00FF00; // Set pixel to green
				*((unsigned int *)(fbp2 + location)) = 0x00FF00; // Set pixel to green
			}
		}
		for (int y = 100; y < 150; y++) {
			for (int x = 700; x < 800; x++) {
				long int location = (x + vinfo0.xoffset) * (vinfo0.bits_per_pixel / 8) +
									(y + pos_offset + vinfo0.yoffset) * finfo0.line_length;
				*((unsigned int *)(fbp0 + location)) = 0x0000FF; // Set pixel to blue
				*((unsigned int *)(fbp1 + location)) = 0x0000FF; // Set pixel to blue
				*((unsigned int *)(fbp2 + location)) = 0x0000FF; // Set pixel to blue
			}
		}
		usleep(3000);
    }

////////////////////////////////////
   
    
    // Declare variables needed for pre-rendering and animation
    int bar_width = 10; 
    int bar_height = 150; 
    unsigned int colors[3] = {0xFFFF00, 0x00FFFF, 0xFF00FF}; // Yellow, Cyan, Magenta
    int speed = 10; // Number of pixels moved per iteration

    // Calculate vertical centering
    int vertical_offset = (720 - (bar_height * 3)) / 2;

    // Allocate memory buffers for pre-rendered box and cleanup buffer
    unsigned int *box_buffer = malloc(bar_width * (bar_height * 3) * sizeof(unsigned int));
    if (box_buffer == NULL) {
        perror("Error allocating memory for box buffer");
        exit(7);
    }

    unsigned int *cleanup_buffer = malloc(bar_width * (bar_height * 3) * sizeof(unsigned int));
    if (cleanup_buffer == NULL) {
        perror("Error allocating memory for clean-up buffer");
        free(box_buffer);
        exit(7);
    }

    // Pre-fill the cleanup buffer with black pixels
    for (int y = 0; y < (bar_height * 3); y++) {
        for (int x = 0; x < bar_width; x++) {
            int location = x + (y * bar_width);
            cleanup_buffer[location] = 0x000000; // Black color
        }
    }

    // Pre-render the box into the box buffer
    for (int bar = 0; bar < 3; bar++) {
        for (int y = bar * bar_height; y < (bar + 1) * bar_height; y++) {
            for (int x = 0; x < bar_width; x++) {
                int location = x + (y * bar_width);
                box_buffer[location] = colors[bar];
            }
        }
    }

    // Declare and initialize last_x_offset
    int last_x_offset = -speed;

    // Animation loop to shift the pre-rendered box
    for (int x_offset = 0; x_offset < (1280 * 3); x_offset += speed) {
        int buffer_offset = (x_offset % 2) * 720; // Alternate front and back buffers

        // Use the cleanup buffer to erase trails
        if (last_x_offset >= 0) {
            for (int y = 0; y < (bar_height * 3); y++) {
                for (int x = 0; x < bar_width; x++) {
                    int global_x = x + last_x_offset;

                    if (global_x < 1280) { // Screen 0
                        long int location = (global_x * 4) + ((y + vertical_offset + buffer_offset) * finfo0.line_length);
                        *((unsigned int *)(fbp0 + location)) = cleanup_buffer[x + (y * bar_width)];
                    } else if (global_x < 1280 * 2) { // Screen 1
                        int local_x = global_x - 1280;
                        long int location = (local_x * 4) + ((y + vertical_offset + buffer_offset) * finfo1.line_length);
                        *((unsigned int *)(fbp1 + location)) = cleanup_buffer[x + (y * bar_width)];
                    } else if (global_x < 1280 * 3) { // Screen 2
                        int local_x = global_x - (1280 * 2);
                        long int location = (local_x * 4) + ((y + vertical_offset + buffer_offset) * finfo2.line_length);
                        *((unsigned int *)(fbp2 + location)) = cleanup_buffer[x + (y * bar_width)];
                    }
                }
            }
        }

        // Copy the pre-rendered box to the framebuffer at the new position
        for (int y = 0; y < (bar_height * 3); y++) {
            for (int x = 0; x < bar_width; x++) {
                int global_x = x + x_offset;

                if (global_x < 1280) { // Screen 0
                    long int location = (global_x * 4) + ((y + vertical_offset + buffer_offset) * finfo0.line_length);
                    *((unsigned int *)(fbp0 + location)) = box_buffer[x + (y * bar_width)];
                } else if (global_x < 1280 * 2) { // Screen 1
                    int local_x = global_x - 1280;
                    long int location = (local_x * 4) + ((y + vertical_offset + buffer_offset) * finfo1.line_length);
                    *((unsigned int *)(fbp1 + location)) = box_buffer[x + (y * bar_width)];
                } else if (global_x < 1280 * 3) { // Screen 2
                    int local_x = global_x - (1280 * 2);
                    long int location = (local_x * 4) + ((y + vertical_offset + buffer_offset) * finfo2.line_length);
                    *((unsigned int *)(fbp2 + location)) = box_buffer[x + (y * bar_width)];
                }
            }
        }

        // Synchronize and flip buffers
        int dummy;
        ioctl(fbfd0, FBIO_WAITFORVSYNC, &dummy);
        ioctl(fbfd1, FBIO_WAITFORVSYNC, &dummy);
        ioctl(fbfd2, FBIO_WAITFORVSYNC, &dummy);

        vinfo0.yoffset = buffer_offset;
        ioctl(fbfd0, FBIOPAN_DISPLAY, &vinfo0);

        vinfo1.yoffset = buffer_offset;
        ioctl(fbfd1, FBIOPAN_DISPLAY, &vinfo1);

        vinfo2.yoffset = buffer_offset;
        ioctl(fbfd2, FBIOPAN_DISPLAY, &vinfo2);

        // Update last_x_offset
        last_x_offset = x_offset;

        // Wait for the next frame
        //usleep(10); // Adjust delay for smoother animation
    }

    // Free memory allocated for the buffers
    free(box_buffer);
    free(cleanup_buffer);



///////////////////////////////////    
    
    // Clean up
    munmap(fbp0, screensize0);
    munmap(fbp1, screensize1);
    munmap(fbp2, screensize2);
    close(fbfd0);
    close(fbfd1);
    close(fbfd2);

    return;
}

void generate_random_rectangles() {
    srand(time(NULL));  // Seed RNG
    
    while (1) {
        int width = (rand() % 46) + 5;  // Random width between 5 and 50
        int height = (rand() % 46) + 5; // Random height between 5 and 50
        
        int x_start = rand() % (SCREEN_WIDTH - width);  // Ensure fits within screen
        int y_start = rand() % (SCREEN_HEIGHT - height);
        int x_end = x_start + width;
        int y_end = y_start + height;
        
        uint32_t color = (rand() & 0xFFFFFF) | 0xFF000000;  // Random color with full alpha
        
        draw_rectangle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, x_start, y_start, x_end, y_end, color, FILL);
        
        //usleep(50000);  // 50ms delay to avoid overwhelming rendering
    }
}

void test5() {                      // test gfx_controller

    //clearFrame(1, 0xFF2F2F2F);

    draw_rectangle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 0, 0, 20, 20, 0xFFFFFFFF, FILL);
    draw_rectangle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 30, 30, 60, 60, 0xFFFF0000, FILL);
    draw_rectangle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 70, 70, 110, 110, 0xFF00FF00, FILL);
    draw_rectangle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 120, 120, 170, 170, 0xFF0000FF, FILL);
    draw_rectangle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 180, 180, 240, 240, 0xFFFF00FF, FILL);
    draw_rectangle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 250, 250, 320, 320, 0xFFFFFF00, FILL);
    draw_rectangle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 330, 330, 410, 410, 0xFF00FFFF, FILL);

    //usleep(1000000);
    //fbSwapActiveFrame();  
    //draw_rectangle(FRAME_1_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 400, 400, 450, 450, 0xFF00FF00, FILL);
    //draw_circle(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 250, 250, 350, 350, 0xFFFFFFFF, FILL);
    //draw_line(FRAME_0_ADDR, SCREEN_WIDTH, SCREEN_HEIGHT, 300, 300, 800, 600, 0xFFFFFFFF);

    return;
}

void test6() {                      // random rectangles
    generate_random_rectangles();
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
    	showhelp();
    }

    if (strcmp(argv[1], "--showcfg") == 0) {
        showcfg();
    } else if (strcmp(argv[1], "--test1") == 0) {
        test1();
    } else if (strcmp(argv[1], "--test1pl") == 0) {
        test1pl();
    } else if (strcmp(argv[1], "--test2") == 0) {
        test2();
    } else if (strcmp(argv[1], "--test3") == 0) {
        test3();
    } else if (strcmp(argv[1], "--test4") == 0) {
        test4();
    } else if (strcmp(argv[1], "--test5") == 0) {
        test5();
    } else if (strcmp(argv[1], "--test6") == 0) {
        test6();
    } else if (strcmp(argv[1], "--help") == 0) {
        showhelp();
    } else {
        printf("Invalid option. See --help.\n");
    }
}
