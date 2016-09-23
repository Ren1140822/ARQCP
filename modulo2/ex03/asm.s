.section .data
.global op1
.global op2
.global op3
.section .text
.global sum_sub    # int sum_sub(void)
.global sub  #int sub(void)
sum_sub:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer for sum function
movl op1, %ebx   #place op1 in ebx
movl op2, %eax   #place op2 in eax
addl %ebx, %eax  #add ebx to eax. Result is in eax 1
movl op3, %ebx   #place op3 in ebx
subl %ebx, %eax  #sub ebx from eax. Result is in eax 1
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret
