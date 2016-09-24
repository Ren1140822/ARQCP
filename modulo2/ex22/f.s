.section .data
.global i
.global j	#H will be eax


.section .text
.global f #int f(void)
f:

# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl i,%ebx
cmp %ebx,j
je equal
jne notequal
equal:
movl i,%eax
subl j,%eax
jmp end
notequal:
movl i,%eax
addl j,%eax
jmp end

end:

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
