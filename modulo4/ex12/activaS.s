.section .data

.section .text
	
#coloca a 1 o bit indicado por pos e retorna 1 caso este tenha sido alterado
.global activa_bitEmS
activa_bitEmS:
	#prologo
	pushl %ebp
	movl %esp, %ebp
	
	#backup de registos
	pushl %ebx
	pushl %ecx
	pushl %edx
	
	movl 8(%ebp), %ebx #guardar primeiro parâmetro em %ebx
	movb 12(%ebp), %cl #guardar segundo parâmetro em %cl
	movl $1, %eax
	
check:
	movl (%ebx), %edx
	shl %cl, %eax #deslocar bits para a esquerda até chegar à posição desejada
	orl %edx, %eax #executar instrução or
	cmpl %edx, %eax
	je zero #bit ja estava a um
	jmp um #bit foi alterado
	
zero:
	movl $0, %eax
	jmp fim
	
um:
	movl $1, %eax
	jmp fim
	
fim:
	#reposição de registos
	popl %edx
	popl %ecx
	popl %ebx
	
	# epilogo
	movl %ebp, %esp
	popl %ebp

	ret
