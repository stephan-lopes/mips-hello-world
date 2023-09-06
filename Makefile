AS=mips-linux-gnu-as
CC=mips-linux-gnu-gcc
CCFLAGS=-nostdlib -static

prepare:
	sudo apt install gcc-mips-linux-gnu qemu-user

all: prepare build 

run:
	./src/hello

build: hello.o hello

hello: src/hello.o
	$(CC) src/hello.o -o src/hello $(CCFLAGS) 
	

hello.o: src/hello.s
	$(AS) src/hello.s -o src/hello.o

clean:
	find src ! -name '*.s' -type f -exec rm -f {} +
