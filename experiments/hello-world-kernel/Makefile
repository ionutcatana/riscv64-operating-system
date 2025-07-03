all: helloworldkernel.elf64

helloworldkernel.elf64: helloworldkernel.o
	riscv64-linux-gnu-ld -T script.ld -o helloworldkernel.elf64 helloworldkernel.o

helloworldkernel.o: kernel.s
	riscv64-linux-gnu-as -march=rv64i -mabi=lp64 -o helloworldkernel.o -c kernel.s

qemu: helloworldkernel.elf64
	qemu-system-riscv64 -machine virt \
		-bios ../../opensbi/build/platform/generic/firmware/fw_dynamic.bin \
		-kernel helloworldkernel.elf64

clean:
	rm -rf *.o *.elf64

.PHONY: all qemu clean
