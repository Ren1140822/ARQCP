.section .data
.global num

.section .text
.global getFactorial #long long int getFactorial(void)
getFactorial:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl num,%eax
movl $0,%edx	#clears edx as 0, needed because of long long int, else returns memory trash
cmp $0,%eax	#returns 1 if num =0, no factorial needs to be calculated
je end2
movl num,%eax #moves num to eax, needs to be done only once, not inside of cycle
jge cycle	#jumps to cycle
cycle:


subl $1,num		#subs 1 to num ,to get the previous factorial term
movl num,%ebx	#moves the subtracted num to ebx
mul %ebx		#multiplicates ebx by eax
movl num,%ecx	#moves num to ecx to compare, this could be avoided, just to organize registers with one purpose
cmp $1,%ecx		#while ecx!=1
jne cycle

jmp end
end:

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 

end2:
movl $1,%eax
movl $0,%edx
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
