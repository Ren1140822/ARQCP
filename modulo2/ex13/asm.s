.section .data
.global A
.global B
.global C
.global D

.section .text
.global function #int function(void)

function:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl C,%eax
movl B,%ebx
imul %ebx	#multiplies ebx by eax
movl A,%ebx	#moves A to ebx to add later
movl D,%ecx	#moves D to ecx to div later
idiv %ecx	#divs ecx by edx:eax so it becomes a one register value again
addl %ebx,%eax	#finnally adds ebx to eax to return a 32-bit value only.



jmp end
end:
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
