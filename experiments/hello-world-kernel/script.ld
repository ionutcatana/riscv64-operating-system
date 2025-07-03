MEMORY {
	kernel_space (rwx) : ORIGIN = 0x80200000, LENGTH = 128
}

SECTIONS {
	.text : {
		helloworldkernel.o(.text.kernel)
	} > kernel_space
}
