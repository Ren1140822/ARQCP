.section .data
.global num


.section .text
.global function #int function(void)
function:

# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl $0,%eax
movl $0,%edx
movl $0,%ecx
movl $2,%ebx	#adds 2 to ebx to use in mod operation
div %ebx
cmp $0,%edx
je isEqual		#if edx mod 2 is 0, then its even

jne notEqual

isEqual:

cmp $0,num		#checks if number is neg or pos
jl isNegative	#if number less than 0 is negative
jg isPositive	#else its positive

notEqual:		#if edx mod 2 is 0, then its odd
addl $2,%eax	#adds 2 to eax
cmp $0,num		#checks if number is neg or pos
jl isNegative

jg isPositive



isPositive:
addl $1,%eax	#adds 1 to eax
jmp end

isNegative:
addl $2,%eax	#adds 2 to eax
jmp end



jmp end
end:

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
