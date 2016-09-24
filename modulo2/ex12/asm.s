.section .data
width:
	.int 15
height:
	.int 25
.section .text
.global getArea #long long getArea(void)

getArea:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer for  sum2ints function
movl $0,%edx	#clears edx (will store some multiplication bits as needed)
movl height,%eax
movl width,%ebx
mul %ebx	#multiplicates ebx by eax

jmp end
end:
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
