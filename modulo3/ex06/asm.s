.section .data
.global ptr


.global encrypt #void encrypt(void)


encrypt:
# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl $0,%eax
movl $0,%edx
movl ptr,%esi
movl $5,%ecx	#number of iterations


increment:
cmpl $0,%ecx
jz end
movb  (%esi),%dl
cmpb $' ',%dl
jz notincrement
cmpb $0,%dl
jz notincrement

addb $1,(%esi) 		#adds 1 to pointed value
addl $1,%esi		#advances  array pointer
addl $1,%eax		#adds 1 to counter
subl $1,%ecx		#subs 1 from cycle
jmp increment

notincrement:
addl $1,%esi		#adds 1 to pointer
subl $1,%ecx		#subs 1 from counter
jmp increment

jmp end





end:
subl $1,%eax

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 

