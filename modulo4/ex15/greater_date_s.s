.section .data


.section .text
.global greater_date_s
greater_date_s:
	
# prologue
pushl %ebp
movl %esp, %ebp
	
	
pushl %ebx
pushl %esi
pushl %edi

# moves param to register
movl 8(%ebp), %esi
movl 12(%ebp), %edi
	
	
# mask for year 
movl $0xFFFF, %ebx
	
#compare years
movl %esi, %eax
and %ebx, %eax
and %edi, %ebx
cmpl %eax, %ebx
jl date2bigger
jg date1bigger
	
# mask for month
movl $0xFF000000, %edx
	
#compare months
movl %esi, %eax
and %edx, %eax
and %edi, %edx
cmpl %eax, %edx
jl date2bigger
jg date1bigger
	
#Criar mascara dia
movl $0xFF0000, %ecx

# Comparar dias
movl %esi, %eax
AND %ecx, %eax
AND %edi, %ecx
cmpl %eax, %ecx
jl date2bigger
jg date1bigger
	
movl $0xFFFFFFFF, %eax
jmp END
	
date1bigger:
movl %esi, %eax
jmp END

date2bigger:
movl %edi, %eax
jmp END
	
END:

popl %edi
popl %esi
popl %ebx
	
# Epilogue
movl %ebp, %esp
popl %ebp
ret
