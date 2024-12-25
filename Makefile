CC = gcc
CFLAGS = -Wall -I./include
SRC = src/main.c src/sorting_algorithms.c src/data_generation.c src/performance_stats.c src/visualization.c src/utils.c
OBJ = $(SRC:.c=.o)
EXEC = sorting_project

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f src/*.o $(EXEC)

.PHONY: all clean
