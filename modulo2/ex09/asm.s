.section .data
.global  op1
.global op2
.section .text
.global sum2ints #long long int sum2ints(void)

sum2ints:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer for  sum2ints function
movl op1,%eax	#saves first argument
movl  op2,%ebx	#saves 2nd argument
addl %ebx,%eax	#adds both, CF will set to 1
movl $0,%edx	#clears trash
adc $0,%edx		#adds 1 because CF is 1
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx
