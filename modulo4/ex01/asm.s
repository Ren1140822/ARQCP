.section .data


.global square #int square(void)

square:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl 8(%esp),%eax #moves parameter to eax
mull 8(%esp)	#mults parameter by itself in eax
jmp end


end:

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
