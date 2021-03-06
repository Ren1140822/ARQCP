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
movl ptr,%esi		#pointer storage
movw value,%bx		#nr to look for
movl (%esi),%ecx	#nr of iterations
jmp increment

increment:
cmpl $0,%ecx		#compares 0 with nr of iterations
jz end
addl $2,%esi		#next short
movw  (%esi),%dx	#moves short at that index to dx
cmpw %bx,%dx		#compares that nr with number to look for
jz found
subl $1,%ecx		#subs 1 from cycle
jmp increment		#enter cycle



found:
movl %esi,%eax		#moves memory address
jmp end




end:


# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 

