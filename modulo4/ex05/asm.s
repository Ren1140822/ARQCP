.section .data


.global dec_cube #int square(int a,int b,int c)

dec_cube:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl 12(%esp),%eax #moves parameter to eax
movl 12(%esp),%ecx
imull %ecx	#v2 squared
imull 12(%esp)	#v2 cubed
movl 8(%esp),%ebx	#moves second param to ebx
subl $1,(%ebx)	#decrements 1 from value pointed by ebx

jmp end
end:

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 


