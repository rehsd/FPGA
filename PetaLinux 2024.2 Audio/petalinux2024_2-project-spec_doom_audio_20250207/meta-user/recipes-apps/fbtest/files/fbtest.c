#include <fcntl.h>
#include <linux/fb.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "sprite_data.c"


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
    printf("fbtest version 0.004\n");
	printf("Usage: fbtest <option>\n");
	printf("\t--showcfg\t\tList basic fb device info\n");
	printf("\t--test1\t\t\tRGB bar moving down the screen\n");
	printf("\t--test2\t\t\tAnimated sprites\n");
	printf("\t--test3\t\t\tDisplay full-screen image\n");
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

//moving vertical bars RGB
void test1() {

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

//animated software sprites
void test2() {
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

//full-screen image
void test3() {

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

int main(int argc, char *argv[]) {
    if (argc != 2) {
    	showhelp();
    }

    if (strcmp(argv[1], "--showcfg") == 0) {
        showcfg();
    } else if (strcmp(argv[1], "--test1") == 0) {
        test1();
    } else if (strcmp(argv[1], "--test2") == 0) {
        test2();
    } else if (strcmp(argv[1], "--test3") == 0) {
        test3();
    } else if (strcmp(argv[1], "--help") == 0) {
        showhelp();
    } else {
        printf("Invalid option. See --help.\n");
    }
}
