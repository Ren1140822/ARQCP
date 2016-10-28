.section .data
.global ptr1



.global vec_fill #void vec_zero(void)

vec_fill:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl $0,%eax
movl $0,%edx
movl ptr1,%esi	#pointer to esi

	
movl (%esi),%ecx		#nr of iterations

jmp cycle

cycle:
cmpl $0,%ecx		#compares 0 with nr of iterations
jz end
addl $4,%esi		#next number
addl $1,%eax		#current index
cmpl $0,(%esi)	 	#compares with 0
jle change			#if <0
subl $1,%ecx		#subs 1 from cycle
jmp cycle			#enter cycle


change:
movl %eax,(%esi)	#moves stored index to real value

subl $1,%ecx		#subs 1 to cycle
jmp cycle


end:
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 



