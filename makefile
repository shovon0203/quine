# Compiler to use
CC = gcc

# Compiler flags
CFLAGS = -Wall -Wextra -Werror

# Target executable name
TARGET = hello

# Source files
SRCS = hello.c

# Object files
OBJS = $(SRCS:.c=.o)

# Rule to build the target executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Rule to clean up object files and the executable
.PHONY: clean
clean:
	rm -f $(OBJS) $(TARGET)
