# x86-baremetal-bootloader
A custom 512-byte x86 bootloader written in raw assembly that boots directly via BIOS.




## Overview

This repository contains a minimal x86 boot sector program that hooks into the BIOS video interrupt to print text to the screen before any operating system loads. It fits within the 512-byte Master Boot Record limit and ends with the 0xaa55 boot signature.

## Prerequisites

You will need nasm to compile the code and QEMU to test it:

```bash
sudo apt update && sudo apt install -y nasm qemu-system-x86


1.Assemble the code into a raw 512-byte binary:
Bash

nasm -f bin boot.asm -o boot.bin

2.qemu-system-x86_64 -hda boot.bin
