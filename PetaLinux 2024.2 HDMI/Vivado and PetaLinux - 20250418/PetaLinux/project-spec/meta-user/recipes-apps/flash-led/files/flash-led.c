#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <linux/gpio.h>

int main() {
    int fd;
    char value;
    const char *gpio_value_path = "/sys/class/gpio/gpio512/value";
    const char *gpio_export_path = "/sys/class/gpio/export";
    const char *gpio_direction_path = "/sys/class/gpio/gpio512/direction";
    const char *gpio_unexport_path = "/sys/class/gpio/unexport";

    printf("Starting...");
    fflush(stdout);
        
    // Export the GPIO pin
    fd = open(gpio_export_path, O_WRONLY);
    if (fd == -1) {
        perror("Error opening GPIO export file");
        return EXIT_FAILURE;
    }
    write(fd, "512", 3);
    close(fd);

    // Set the GPIO direction to input
    fd = open(gpio_direction_path, O_WRONLY);
    if (fd == -1) {
        perror("Error opening GPIO direction file");
        return EXIT_FAILURE;
    }
    write(fd, "out", 3);
    close(fd);

    // Open the GPIO value file for writing
    fd = open(gpio_value_path, O_WRONLY);
    if (fd == -1) {
        perror("Error opening GPIO value file");
        return EXIT_FAILURE;
    }
    // Write the GPIO value
    for (int i = 0; i < 5; i++) {
        write(fd, "1", 1);
        printf("^");
        fflush(stdout);
        usleep(500000);
        write(fd, "0", 1);
        printf("v");
        fflush(stdout);
        usleep(500000);
    }
    close(fd);

    // Unexport the GPIO pin
    fd = open(gpio_unexport_path, O_WRONLY);
    if (fd == -1) {
        perror("Error closing GPIO export file");
        return EXIT_FAILURE;
    }
    write(fd, "512", 3);
    close(fd);
    printf("done!\n");
    fflush(stdout);
    return 0;
}

void readValue() {
    int fd;
    char value;
    const char *gpio_value_path = "/sys/class/gpio/gpio512/value";
    const char *gpio_export_path = "/sys/class/gpio/export";
    const char *gpio_direction_path = "/sys/class/gpio/gpio512/direction";
    const char *gpio_unexport_path = "/sys/class/gpio/unexport";

    // Export the GPIO pin
    fd = open(gpio_export_path, O_WRONLY);
    if (fd == -1) {
        perror("Error opening GPIO export file");
        return EXIT_FAILURE;
    }
    write(fd, "512", 3);
    close(fd);

    // Set the GPIO direction to input
    fd = open(gpio_direction_path, O_WRONLY);
    if (fd == -1) {
        perror("Error opening GPIO direction file");
        return EXIT_FAILURE;
    }
    write(fd, "in", 2);
    close(fd);

    // Open the GPIO value file for reading
    // If the GPIO has a pull-up, it will now go high!!
    fd = open(gpio_value_path, O_RDONLY);
    if (fd == -1) {
        perror("Error opening GPIO value file");
        return EXIT_FAILURE;
    }
    // Read the GPIO value
    read(fd, &value, 1);
    close(fd);

    printf("GPIO value is: %c\n", value);

    // Unexport the GPIO pin
    fd = open(gpio_unexport_path, O_WRONLY);
    if (fd == -1) {
        perror("Error closing GPIO export file");
        return EXIT_FAILURE;
    }
    write(fd, "512", 3);
    close(fd);
}

