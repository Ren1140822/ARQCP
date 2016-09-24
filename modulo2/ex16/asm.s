.section .data
.global A
.global B
.global n

i:
	.int 0
.section .text
.global function #int function(void)

function:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl A,%eax
movl B,%ebx
jmp cycle

cycle: 
incl i		#increments index
movl i,%ecx	#moves index to ecx
mul %ecx	#multiplicates index by eax
div %ebx	#divs ebx by eax


movl n,%ecx	#moves number of iterations total to ecx
cmp i,%ecx	#compares index with IT number
jne cycle	#if i< number of iterations repeats cycle
jmp end		#else ends cycle and returns




end:
# epilogue

movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 

