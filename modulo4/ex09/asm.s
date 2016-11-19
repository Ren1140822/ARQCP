.section .data
z:
	.int 0

.global calc #int calc(int a,int *b,int c)

calc:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl 8(%esp),%ebx #moves parameter to ebx
movl 12(%esp),%ecx 
movl 16(%esp),%esi


subl %ebx,(%ecx)
movl %ebx,%eax
mull %esi

jmp end
end:

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
