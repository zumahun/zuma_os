bits    32
	section         .text ; include exec file for elf
	align   4
	dd      0x1BADB002
	dd      0x00
	dd      - (0x1BADB002+0x00)
 
global start
extern kmain    ; this function is gonna be located in our c code (kernel.c)
start:
	cli     	; clears the interrupts
	call kmain      ;send processor to continue execution from the kmain function in c code
	hlt     	; halt the cpu(pause it from executing from this address
