CC := gcc

CFLAGS := -Wall -Wextra -std=c11 # -Wpedantic

LDFLAGS := -lglfw -lGL -ldl -lm

TARGET := triangle_demo
SRC := src/main.c src/glad.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -Iinclude -o $@ $(LDFLAGS)

clean:
	rm -f $(TARGET)

.PHONY: all clean
