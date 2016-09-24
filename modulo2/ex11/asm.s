.section .data
.global  op1
.global op2
.section .text
.global isMultiple #long long isMultiple(void)

isMultiple:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer for  sum2ints function
movl $0,%edx	#clears edx (will store remainder of division)
movl op1,%eax	#moves var op1 to eax
movl op2,%ebx	#moves var op1 to ebx
idiv %ebx		#divs ebx by edx:eax
movl $0,%eax	#clears eax so it only returns value of edx (long long returns both registers)

jmp end
end:
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx -> eax is 0, edx has the remainder of division
