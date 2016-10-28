.section .data
.global ptr1
.global ptr2
.global ptr3
aux:
	.byte 0


.global str_concat #void str_concat(void)

str_concat:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl $0,%eax
movl $0,%edx
movl ptr1,%esi	
movl ptr2,%edi	
movl ptr3,%edx	#pointer storage
	
movl $40,%ecx	#nr of iterations
movl $40,%eax	#vect 2 nr of iterations
jmp strcpy1

strcpy1:
cmpl $0,%ecx		#compares 0 with nr of iterations
jz strcpy2
movb (%esi),aux
movb  aux,(%edx)
addl $1,%esi
addl $1,%edx
subl $1,%ecx		#subs 1 from cycle
jmp strcpy1		#enter cycle


strcpy2:
cmpl $0,%eax		#compares 0 with nr of iterations
jz end
movb (%edi),aux
movb  aux,(%edx)
addl $1,%edi
addl $1,%edx
subl $1,%eax		#subs 1 from cycle
jmp strcpy2







end:


# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
