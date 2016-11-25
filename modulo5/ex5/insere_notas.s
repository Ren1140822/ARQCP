.section .data
.equ gap, 8
.section .text
.global	insere_notas
insere_notas:
	#Prologue
	pushl %ebp
	movl %esp, %ebp
	
	movl 8(%ebp), %eax				# parametro aluno
	movl 12(%ebp), %ebx				# novas notas 
	movl $10, %ecx 					# array de 10
	
	addl $gap, %eax				# notas dentro da estrutura
	
ciclo:
	movl (%ebx), %edx			#copia notas pra estrutura
	movl %edx, (%eax)
	
	addl $4, %eax					# eax++
	addl $4, %ebx					# ebx ++ 
	
	loop ciclo
	
fim:
	#Epilogue
	movl %ebp, %esp
	popl %ebp
	
	ret
