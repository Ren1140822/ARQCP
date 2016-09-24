.section .data
.global short1
.global byte1
.global byte2
.section .text
.global swap_bytes #short int swap_bytes(void)
.global concat_bytes #short int concat_bytes(void)
swap_bytes:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer for sum function
movw short1, %ax   #place short1 in ax
movl $0,%ebx #sets ebx to 0 to clear it
movb %ah,%bl 
movb %al,%bh
movl $0,%eax #clears eax for return
movw %bx,%ax
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 
concat_bytes:
#prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer for sum function
movl $0,%eax
movb byte1,%ah
movb byte2,%al

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret

