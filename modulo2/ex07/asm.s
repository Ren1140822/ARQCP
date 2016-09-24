.section .data
.global short1
.global byte1
.global byte2
.global shortsum1
.global shortsum2
.section .text
.global swap_bytes #short int swap_bytes(void)
.global concat_bytes #short int concat_bytes(void)
.global cross_sum_bytes #short int cross_sum_bytes(void)
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


cross_sum_bytes:

#prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer for sum function
mov $0,%eax
mov $0,%ebx
movw shortsum1,%ax
movw shortsum2,%bx
addb %al,%bh 	# cross adds second half of ax with first half of bx
addb %ah,%bl 	#  does the inverse so i stay with bx in correct byte order
mov $0,%eax 	# clears eax again to store the value
movl %ebx,%eax 	# stores value in eax. first half of ebx is cleared so we dont need to worry
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret
