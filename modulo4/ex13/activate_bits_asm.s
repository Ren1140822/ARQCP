.section .data
aux:
	.int 0x00000000

.global activate_bits_asm #int activate_bits(int a,int left,int right)

activate_bits_asm:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer

addl $1,%ebx
movb %bl,%cl

sarl %cl,aux

or $0xFFFFFFFF,aux

sall %cl,aux



or aux,%eax
addl $1,%edx
movb %dl,%cl
movl $0x00000000,aux
shll %cl,aux

or $0xFFFFFFFF,aux

shrl %cl,aux

or aux,%eax
jmp end
end:

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 


