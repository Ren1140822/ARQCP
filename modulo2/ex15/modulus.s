.section .data
.global op1
.global op2
result:
	.int 0
.section .text
.global modulus #int modulus(void)

modulus:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl op1,%eax
movl op2,%ebx
movl $0,%edx	#clears edx's trash
divl %ebx		#divs ebx by edx:eax
movl %edx,%eax



jmp end
end:
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 

