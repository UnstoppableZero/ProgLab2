CC = gcc

CFLAGS = -g -Wall -Werror

LDFLAGS = -lrt

OBJS = main.o ipc.o time.o

TARGET = time

all = $(TARGET)

$(TARGET): $(OBJS)

	$(CC) -o $(TARGET) $(OBJS) $(LDFLAGS)

main.o: main.c lab2.h

	$(CC) $(CFLAGS) -c main.c -o main.o

ipc.o: ipc.c lab2.h
	$(CC) $(CFLAGS) -c ipc.c -o ipc.o

time.o: time.c lab2.h
	$(CC) $(CFLAGS) -c time.c -o time.o

clean:

		rm -f $(OBJS) $(TARGET)

.PHONY: all clean