.section .data
aux:
	.int 0x0

.global activate_inverted_bits_asm #int activate_bits(int a,int left,int right)

activate_inverted_bits_asm:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer


movl 8(%esp), %eax
movl 12(%esp), %ebx
movl 16(%esp), %edx

call activate_bits_asm

xor $0xFFFFFFFF,%eax

jmp end
end:

# epilogue

movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer

ret 	#returns both eax and edx 


