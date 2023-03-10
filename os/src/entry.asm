    .section .text.entry
    .globl _start
_start:
    la sp, bootstacktop
    call rust_main

    .section .bss.stack
    .globl bootstack
bootstack:
    .space 4096 * 16
    .globl bootstacktop
bootstacktop: