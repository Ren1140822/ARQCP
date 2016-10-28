.section .data
.global ptr
.global space_count #int space_count(void)


space_count:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl $0,%edx
movl $ptr,%ebx
string_loop:
movb (%ebx),%cl

cmpb $0,%cl
jz end
cmpb $' ',%cl
jz increment

incl %ebx
jmp string_loop

increment:
incl %edx
incl %ebx
jmp string_loop




end:
movl %edx,%eax
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
