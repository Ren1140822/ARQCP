.section .data
.global i
.global j	

#H will be register
.section .text
.global f4 #long long int f4(void)

f4:

# prologue
pushl %ebp      # save previous stack frame pointer
movl %esp, %ebp  # the stack frame pointer

movl i,%eax		#moves i to eax
addl j,%eax		#adds j to i (eax)
cmp $10,%eax	#sees if sum is >10
jg iAndjGreater	#if its >10 jumps here
jmp notGreater

iAndjGreater:
movl $0,%edx
movl i,%eax		#resets eax with value of i
movl $2,%ebx 	#moves 2 to ebx, we will use this to multiplicate
mul %ebx		#multiplicates ebx by eax
jmp end

notGreater:
movl $0,%edx
movl j,%eax
movl $3,%ebx	#moves 3 to ebx
idivl %ebx		#divides j (eax) by 3
jmp end




end:

# epilogue
movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
popl %ebp     #  restore the previous stack frame pointer
ret 	#returns both eax and edx 

