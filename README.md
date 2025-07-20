# RISC-V operating system developemt repository

At one point it will contain a functioning operating system as my Bachelor's thesis project, which will pe presented in 2026. Until the initial release all the code is _unlicensed_.

## Toolchain

| Package  | Version  |
| :------- | :------- |
| binutils | 2.44-3   |
| gcc      | 14.2.0-1 |
| rustup   | 1.27.1   |
| rustc    | 1.88.0   |
| cargo    | 1.88.0   |

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
