.section .data
.global ptr1
.global ptr2
.global ptr3
.global value


.global vec_diff #void vec_diff(void)

vec_diff:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl $0,%eax
movl $0,%ebx
movl ptr1,%esi	#pointer to esi
movl ptr2,%edi	#pointer to edi
movl ptr3,%edx	#pointer to edx
movl (%edx),%ecx	#it number

jmp cycle

cycle:
cmpl $0,%ecx		#compares 0 with nr of iterations
jz end

addl $2,%edi		#moves pointer of vec2	
movw (%edi),%ax		#moves value pointed to ax
movw %ax,value		#moves ax to value

call exists			#verifies if it exists

cmpl $0,%eax		#if ax =0 then it doesnt exist
jz copy			


subl $1,%ecx
jmp cycle


copy:
addl $4,%edx		#advances int pointer

movw (%edi),%ax		#moves value to be copied to ax

movw %ax,(%edx)		#copies it to edx

subl $1,%ecx		#subs 1 from cycle

addl $1,%ebx		#adds 1 to changed values
jmp cycle

end:
movl %ebx,%eax
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 

