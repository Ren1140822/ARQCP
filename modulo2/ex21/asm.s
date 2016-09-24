.section .data
.global code
.global currentSalary


.section .text
.global function #int function(void)
function:

# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
cmp $101,code
je manager
cmp $102,code
je engineer
cmp $103,code
je technician
jmp other

manager:
movl currentSalary,%eax
addl $100,%eax
jmp end

engineer:
movl currentSalary,%eax
addl $200,%eax
jmp end

technician:
movl currentSalary,%eax
addl $150,%eax
jmp end

other:
movl currentSalary,%eax
addl $50,%eax
jmp end

jmp end
end:

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 
