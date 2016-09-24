.section .data
.global num
i:			#cycle counter
	.int 1
fibTerm1:
	.int 0
fibTerm2:
	.int 1
currentFibTerm:
	.int 0
.section .text
.global getFibonacci #int getFibonacci(void)

getFibonacci:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
jmp cycle
cycle:
incl i

movl fibTerm2,%eax	#moves second operand of fibonacci to eax

addl fibTerm1,%eax	#adds first operand of fibonacci to eax
movl fibTerm2,%ecx	#moves second term of fibonacci to ecx
movl %ecx,fibTerm1	#updates fibterm1, with value of fibterm2
movl %eax, fibTerm2	#moves the last result of fibonacci term to fibterm 2

movl num,%ebx	#cycle ending conditioning
cmp i,%ebx		#comparation to end cycle

jne cycle		#jumps if not equal

jmp end
end:

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
