all: hello.elf64

hello.elf64: hello.o
	riscv64-linux-gnu-ld -T script.ld -o hello.elf64 hello.o

hello.o: start.s
	riscv64-linux-gnu-as -march=rv64i -mabi=lp64 -o hello.o -c start.s

qemu: hello.elf64
	qemu-system-riscv64 -machine virt -bios hello.elf64

clean:
	rm -rf *.o *.elf64

.PHONY: all qemu clean
