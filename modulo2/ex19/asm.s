.section .data
.global current
.global desired

.section .text
.global getSecondsNeeded #int getSecondsNeeded(void)
getSecondsNeeded:

# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl $0,%ebx		#clears the 4 bytes, we only use two for now
movl $0,%eax		#clears the 4 bytes, we only use two for now
movw current,%ax   #moves current to ax	
cmp desired,%eax
jl increase			#jumps if needs to increase celsius
jg decrease			#jumps if needs to decrease celsius

increase:
movw desired, %ax	#moves current to ax	
movw current,%bx	#moves current to bx	
subl %ebx,%eax		#subs ebx from eax	
movl $180,%ecx		#moves 180 to ecx
mul %ecx			#multiplicates 180 by number of degrees needed to increase
jmp end


decrease:
movw desired, %bx	#moves current to bx	
movw current,%ax	#moves current to ax	
subl %ebx,%eax		#subs ebx from eax	
movl $120,%ecx		#moves 120 to ecx
mul %ecx			#multiplicates 180 by number of degrees needed to increase
jmp end


jmp end
end:

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
