.section .data
.global varA
.global varB
.global varC
.global varD
.section .text
.global ex8 #long long int ex8(void)

ex8:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer for ex8function
movl $0,%eax
movl $0,%ebx
movl $0,%ecx
movl $0,%edx
movb varA,%al
addw varB,%ax
movl varC,%ebx
movl varD,%ecx

subl %ebx,%eax #should be -1
addl %ecx,%eax

#adcl $0,%edx  #carry flag shouldnt be  1 

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 


