.section .data
.global op1
.global op2
.equ CONST, 10
.section .text
.global function #int function(void)

function:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer for sum function
movl op1, %ebx   #place op1 in ebx
movl op2, %eax   #place op2 in eax
subl $CONST,%ebx  #subtracts the first operand in parenthesis
subl $CONST,%eax	 #subtracts the second operand in parenthesis
subl %ebx,%eax   #subtracts both
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret
