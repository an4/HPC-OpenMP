# Makefile

EXE1=d2q9-bgk.exe
EXES=$(EXE1)

#CC=g++ #for opencv
CC=gcc
CFLAGS=-fopenmp -Wall #-DDEBUG  
CFLAGS+=-O3
CLFLAGS=-lm
#CLFLAGS+=/usr/local/lib/libopencv_core.so /usr/local/lib/libopencv_highgui.so /usr/local/lib/libopencv_legacy.so

all: $(EXES)

$(EXES): %.exe : %.c
	$(CC) $(CFLAGS) $^ -o $@ $(CLFLAGS)

.PHONY: all clean

clean:
	\rm -f $(EXES)

