# Makefile

EXE1=d2q9-bgk.exe
EXES=$(EXE1)

CC=gcc
CFLAGS=-Wall -DDEBUG
CLFLAGS=-lm

all: $(EXES)

$(EXES): %.exe : %.c
	$(CC) $(CFLAGS) $^ -o $@ $(CLFLAGS)

.PHONY: all clean

clean:
	\rm -f $(EXES)

