.section .data
.global ptr
.global value


.global vec_search #short vec_search(void)


vec_search:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl $0,%eax
movl $0,%edx
movl ptr,%esi
movw $8,%bx		#error while using ($value)
movl $4,%ecx	#number of iterations , error while using (%esi) for first param


increment:
cmpl $0,%ecx
jz end
addl $2,%esi
movw  (%esi),%dx
cmpw %bx,%dx
je found
subl $1,%ecx
jmp increment



found:

movl %esi,%eax
jmp end






end:


# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 

