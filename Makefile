CC = gcc
CFLAGS = -I /usr/include/SDL2 -L "lib" -lSDL2main -lSDL2 -o -Wall `pkg-config --cflags --libs sdl2`

all:
	$(CC) $(CFLAGS) main.c ./canvas/canvas.c ./dino/dino.c ./row/row.c ./viwe/dino/viweDino.c ./viwe/row/row.c

clean:
	rm -rf *.o