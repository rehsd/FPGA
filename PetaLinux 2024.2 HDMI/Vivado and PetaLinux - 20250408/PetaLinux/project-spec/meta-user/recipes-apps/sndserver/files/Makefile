CROSS_COMPILE ?= arm-linux-gnueabihf-
CC=$(CROSS_COMPILE)gcc  # gcc or g++
CFLAGS+= -ggdb3 -Os
# CFLAGS+= -fsanitize=address
CFLAGS+= -O -DNORMALUNIX -DLINUX --sysroot=/home/rich/petalinux20242/rehsdZynq/build/tmp/sysroots-components/cortexa9t2hf-neon
LDFLAGS+=
# LDFLAGS+=-fsanitize=address
LIBS=-lm
CFLAGS += -I/home/rich/petalinux20242/rehsdZynq/build/tmp/sysroots-components/cortexa9t2hf-neon/libsdl/usr/include/SDL
#CFLAGS += -lasan
#CFLAGS += -I/home/rich/petalinux20242/rehsdZynq/build/tmp/work-shared/zynq-generic-7z020/kernel-source/include

O=linux

all: $(O) $(O)/sndserver

clean:
	rm -f *.o *~ *.flc
	rm -rf $(O)

# Create the directory if it doesn't exist
$(O):
	mkdir -p $(O)

# Target
$(O)/sndserver: $(O)/soundsrv.o $(O)/sounds.o $(O)/wadread.o $(O)/linux.o
	@echo "Creating binary: $(O)/sndserver"
	$(CC) $(CFLAGS) $(LDFLAGS) $(O)/soundsrv.o $(O)/sounds.o $(O)/wadread.o $(O)/linux.o -o $(O)/sndserver $(LIBS)
	@echo "Binary created: $(O)/sndserver"
	@file $(O)/sndserver
	$(CROSS_COMPILE)size $(O)/sndserver

# Rule
$(O)/%.o: %.c | $(O)
	$(CC) $(CFLAGS) -c $< -o $@

print:
	@echo OBJS: $(OBJS)
