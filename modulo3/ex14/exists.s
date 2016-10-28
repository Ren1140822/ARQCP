.section .data
.global ptr1
.global value
temp:
	.int 0
temp2:
	.int 0
.global exists #int exists(void)

exists:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer

movl $0,%eax

movl ptr1,%esi	#pointer to esi
movw %cx,temp
movl %ebx,temp2
movw (%esi),%cx	#moves short to cx : nr of it

jmp cycle

cycle:
addl $2,%esi
cmpw $0,%cx		#compares 0 with nr of iterations
jz end
movw value,%bx	#moves value to bx
cmpw (%esi),%bx	#compares with array[i]
jz isEqual

subw $1,%cx
jmp cycle


isEqual:
addl $1,%eax	#returns 1 if exists
jmp end


end:
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
movw temp,%cx	#restores variables
movl temp2,%ebx	#restores variables
ret 	#returns both eax and edx 
