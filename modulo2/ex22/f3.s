.section .data
.global i
.global j	#H will be eax
h:
	.int 0
g:
	.int 0
r:
	.int 0
.section .text
.global f3 #int f3(void)

f3:

# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer
movl $0,%edx
movl j,%ebx
cmp %ebx,i 		#compares j with i
jge iBiggerThanJ	#if i>=j
jmp iLessThanJ


iBiggerThanJ:

movl i,%ebx
addl j,%ebx		#i+j
movl %ebx,h		#moves sum to H
movl i,%ebx		#resets ebx value to i
addl $1,%ebx	#g=i+1
movl %ebx,g

jmp end

iLessThanJ:

movl i,%eax
movl j,%ebx
imul %ebx		#multiplicates ebx by eax
movl %eax,h		#moves to h
movl i,%eax		#sets eax = i
addl j,%eax		#adds j to i (eax)
addl $2,%eax	#adds 2 to eax
movl %eax,g		#g = eax
jmp end



end:
movl $0,%edx	#clears edx

movl h,%eax		#sets eax = h
movl g,%ebx		#sets ebx = g
idivl %ebx		#divs ebx by eax
movl %eax,r		#sets r = eax

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 


