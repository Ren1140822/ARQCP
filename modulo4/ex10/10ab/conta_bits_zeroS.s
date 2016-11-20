.section .data

.section .text
.global conta_bits_zeroS
conta_bits_zeroS:

		#prologo
		pushl %ebp
		movl %esp, %ebp	
		
		movl 8(%esp), %ebx			#vai por o parametro (x) em ebx		
		movl $32 , %esi				#coloca esi a 32 (contador)
		jmp ciclo
		
ciclo:
		cmp $0, %ebx				#compara 0 com o numero
		je fim
		
		movl $0, %eax				#limpa o registo
		
		movl $1, %eax				#passa 1 para o registo eax
		
		andl %ebx, %eax				#x & 1
		
		cmp $1, %eax				#compara 1 com o resto
		je cont						#se for igual
		
		shr %ebx					#desloca um bit à direita
		
		jmp ciclo
		
cont:
		decl %esi					#decrementa 1 ao contador
		
		shr %ebx					#desloca um bit à direita
		
		jmp ciclo
	
fim:
		movl %esi, %eax
		
		#epilogo
		movl %ebp, %esp
		popl %ebp
ret
