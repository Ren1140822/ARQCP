.section .data


.global greater #int square(int a,int b,int c)

greater:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl 8(%esp),%eax #moves parameter to eax
movl 12(%esp),%ebx
movl 16(%esp),%ecx	
cmpl %eax,%ebx
jl a_greater	#if b<A
jg b_greater	#else
a_greater:
cmpl %eax,%ecx	#compares a with c
jl end			#jumps end if eax is greater, value is already stored
b_greater:	
cmpl %ebx,%ecx	#if b> a, then compares b with c
jl ret_b		#if b>c returns b
jmp c_greater	#else returns c
ret_b:
movl %ebx,%eax
jmp end
c_greater:
movl %ecx,%eax
jmp end
end:

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 

