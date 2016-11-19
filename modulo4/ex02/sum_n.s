.section .data

.section .text

.global sum_n
sum_n:

	#prologo
	pushl %ebp
	movl %esp, %ebp
	
	movl $0, %edx					#inicia o contador
	movl $0, %eax					#inicia o registo que terá a soma
	movl 8(%esp), %ebx				#vai buscar o valor do primeiro parametro
	
	jmp ciclo
	
ciclo:
	cmpl %ebx, %edx				#compara o contador com o número, quando for maior sai
	jg fim
	
	addl %edx, %eax				#adiciona o valor do contador ao registo que tem a soma
	incl %edx
	jmp ciclo
	
fim:
	# epilogo
	movl %ebp, %esp
	popl %ebp

	ret
