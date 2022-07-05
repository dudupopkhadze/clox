CC=gcc
CFLAGS=-I.
DEPS = common.h memory.h debug.h
OBJ = main.o chunk.o debug.o memory.o 

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

main: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm main	main.o chunk.o debug.o memory.o 