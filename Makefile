all:
	$(CC) -o modeset modeset.c `pkg-config --cflags --libs libdrm` -Wall -O0 -g
	$(CC) -o modeset-double-buffered modeset-double-buffered.c `pkg-config --cflags --libs libdrm` -Wall -O0 -g
	$(CC) -std=c99 -o modeset-vsync modeset-vsync.c `pkg-config --cflags --libs libdrm` -Wall -O0 -g

clean:
	rm -f modeset modeset-double-buffered modeset-vsync
