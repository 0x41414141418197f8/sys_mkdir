BITS 64

global _main

section .rodata

	path db 'test', 0

	
section .text

_main:
	mov rax, 83
	mov rdi, path
	mov rsi, 777
	syscall
	jmp _exit


_exit:
	mov rax, 0x3c
	mov rdi, 0
	syscall
