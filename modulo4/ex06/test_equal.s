.section .data

.section .text

.global test_equal

test_equal:
	
	#prologo
	pushl %ebp
	movl %esp, %ebp
	
	movl 8(%esp), %esi			#coloca o primeiro parametro em %esi
	movl 12(%esp), %edi			#coloca o segundo parametro em %edi
	
	movl $1, %eax				#1 em eax, se as strings forem iguais, este será o valor retornado
	
	jmp ciclo
	
ciclo:
	
	movb (%esi), %cl			#coloca a posição para que esi está a apontar em %cl
	
	cmpb $0, %cl				#compara o que está em esi com 0 que significa o fim da string
	je fim 
	
	cmpb (%edi), %cl			#compara os caracteres com o mesmo indice de cada string
	jne diferente				#se algum for diferente, entra-se em diferente
	
	incl %esi					#senão passa-se à posição seguinte dos dois vetores
	incl %edi
	jmp ciclo
	
diferente:
	
	movl $0, %eax				#coloca 0 em eax, valor que será retornado
	jmp fim
	
fim:
	
	# epilogo
	movl %ebp, %esp
	popl %ebp
	
	ret
