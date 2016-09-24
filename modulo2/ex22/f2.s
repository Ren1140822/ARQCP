.section .data
.global i
.global j	#H will be eax


.section .text
.global f2 #long long int f2(void)

f2:

# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl $0,%edx
movl j,%ebx
cmp %ebx,i 		#compares j with i
jle iLessThanJ	#if i<=j
jmp iBiggerThanJ

iLessThanJ:
addl $1,i	#i++
jmp end

iBiggerThanJ:
addl $1,j	#j++
jmp end

end:
movl i,%eax	
movl j,%ebx
mul %ebx	#value in edx:eax

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 

