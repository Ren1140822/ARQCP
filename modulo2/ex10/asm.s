.section .data
.global  op1
.global op2
.section .text
.global sum2ints2 #long long int sum2ints2(void)

sum2ints2:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer for  sum2ints function
movl $0,%eax
movl $0,%ebx
movl op1,%eax
movl op2,%ebx
movl $0,%edx
addl %ebx,%eax	#adds both registers
jc carry
jmp end


carry: 
movl $0, %eax
movl $0, %edx
jmp end

end:
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx
