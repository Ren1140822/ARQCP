.section .data


.global count_odd #int square(int a,int b,int c)

count_odd:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl 8(%esp),%esi #moves parameter to esi
movl $0,%edi
movl $0,%edx
movl $2,%ebx

movl 12(%esp),%ecx


cycle:

cmpl $0,%ecx
jz end
movl (%esi),%eax
divl %ebx

cmpl $0,%edx
jnz isOdd
subl $1,%ecx
movl $0,%edx
addl $4,%esi
jmp cycle

isOdd:
addl $1,%edi
subl $1,%ecx
movl $0,%edx
addl $4,%esi
jmp cycle

jmp end
end:
movl %edi,%eax
# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 



