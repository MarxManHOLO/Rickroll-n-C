CC = gcc
CFLAGS = -Wall
TARGET = rickroll
OBJECTS = rickrollmain.o rickroll.o

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)

main.o: rickrollmain.c rickroll.h
	$(CC) $(CFLAGS) -c rickrollmain.c

ASCII_Rickroll.o: rickroll.c rickroll.h
	$(CC) $(CFLAGS) -c rickroll.c

clean:
	rm -f $(TARGET) $(OBJECTS)

.PHONY: clean all
