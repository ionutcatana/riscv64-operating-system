# RISC-V operating system developemt repository

At one point it will contain a functioning operating system as my Bachelor's thesis project, which will pe presented in 2026.

## Toolchain

| Package  | Version               |
| :------- | :-------------------- |
| binutils | 2.40-2                |
| gcc      | 12.2.0                |
| qbe      | 1.2                   |
| hare     | 0.24-rc1-378-g93fb278 |

## Instructions

Useful toolchain and firmware compilation instructions

### Obtain the code

```sh
git clone --recurse-submodules <link-to-this-repo>
```

### How to compile OpenSBI

```sh
cd opensbi
git checkout tags/v1.7
make ARCH=riscv CROSS_COMPILE=riscv64-linux-gnu- PLATFORM=generic
```
