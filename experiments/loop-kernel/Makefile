all: loopkernel.elf64

loopkernel.elf64: loopkernel.o
	riscv64-linux-gnu-ld -T script.ld -o loopkernel.elf64 loopkernel.o

loopkernel.o: kernel.s
	riscv64-linux-gnu-as -march=rv64i -mabi=lp64 -o loopkernel.o -c kernel.s

qemu: loopkernel.elf64
	qemu-system-riscv64 \
		-machine virt \
		-bios ../../opensbi/build/platform/generic/firmware/fw_dynamic.bin \
		-kernel loopkernel.elf64

clean:
	rm -rf *.o *.elf64

.PHONY: all qemu clean
