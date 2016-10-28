.section .data
.global ptr1



.global vec_zero #void vec_zero(void)

vec_zero:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl $0,%eax
movl $0,%edx
movl ptr1,%esi	#pointer to esi

	
movw (%esi),%cx		#nr of iterations

jmp cycle

cycle:
cmpw $0,%cx		#compares 0 with nr of iterations
jz end
addl $2,%esi		#next number
cmpw $1000,(%esi)	#compares with 1000
jge zeroe			#if >= 1000
subl $1,%ecx		#subs 1 from cycle
jmp cycle			#enter cycle


zeroe:
movw $0,(%esi)
addl $1,%eax		#increments value
subl $1,%ecx		#subs 1 to cycle
jmp cycle


end:
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 


