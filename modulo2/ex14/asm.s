.section .data
.global num
.section .text
.global function #int function(void)

function:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl num,%eax	#stores num
movl $0,%edx	#clears edx to use carry (if needed)
subl $1,%eax	#subs 1 from eax
movl $3,%ebx	#moves 3 to ebx to use in multiplication and division
mul %ebx		#muls ebx by eax
addl $12,%eax	#adds 12 to eax
adcl $0,%edx	#adds carry if exists in edx (not used )
div %ebx		#divs ebx by eax
addl $5,%eax	#adds 5 to eax	
adcl $0,%edx	#adds carry if exists in edx
subl num,%eax	#subs our number from eax
jmp end
end:
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
