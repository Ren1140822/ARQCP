.section .data
.global ptr
aux:
	.int 0

.global vec_sum #int vec_sum(void)


vec_sum:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl $0,%eax
movl ptr,%esi
movl (%esi),%ecx	#number of iterations

sum:
addl $4,%esi		#advances  array pointer
addl (%esi),%eax 	#moves the value to eax
loop sum



jmp end





end:


# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
