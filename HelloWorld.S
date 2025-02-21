@
@ Assembler program print out "Hello World"
@ using the Pico SDK.
@
# R0 - first parameter to printf
@ R1 - second parameter to printer
@ R7 - index counter
@
.thumb_func    			@ Necessary because sdk uses BLX
.global main 			@ starting address

main:

	MOV R7, #0		@ initialize counter to 0
	BL stdio_init_all	@ initialize uart or usb
loop:
	LDR R0, =helloworld	@ load address of string
	ADD R7, #1
	MOV R1, R7
	BL printf
	B loop
.data
	.align 4
helloworld: .asciz  "Hello World %d\n"

