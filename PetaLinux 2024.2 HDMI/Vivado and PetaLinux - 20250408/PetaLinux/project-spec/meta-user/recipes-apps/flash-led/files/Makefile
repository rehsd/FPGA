APP = flash-led

# Add any other object files to this list below
APP_OBJS = flash-led.o

all: build

build: $(APP)

$(APP): $(APP_OBJS)
	$(CC) $(CFLAGS) -o $@ $(APP_OBJS) $(LDFLAGS) $(LDLIBS)
clean:
	rm -f $(APP) *.o

