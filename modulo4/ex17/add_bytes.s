.section .data


.section .text
.global add_bytes
add_bytes:

#prologue
pushl %ebp
movl %esp, %ebp
pushl %ebx
pushl %esi
pushl %edi

#passing parameters
movb 8(%ebp), %al
movl 12(%ebp), %esi
movl 16(%ebp), %edi
	
shll $24, %eax
movl (%esi), %ecx
movl $1, %ebx
addl $4, %esi

LOOP:
movl (%esi), %edx
addl %eax, %edx
movl %edx, (%edi)
addl $4, %edi
addl $4, %esi
incl %ebx
cmpl %ecx, %ebx
jle LOOP


popl %edi
popl %esi
popl %ebx
	
#Epilogue
movl %ebp, %esp
popl %ebp
ret
