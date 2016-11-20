.section .data

.section .text

	.global changes

changes:

	pushl %ebp
	movl %esp, %ebp

	movl 8(%ebp), %edx #guarda se o valor passado por parametro em edx	
	
	movl (%edx), %eax  #guarda se o valor apontado por edx em eax
	movb $0b00001111, %cl #mascara logica dos 4 bits menos significativos ativos
	andb %cl, %ah #executa a operaçao and com ah pois quer se comparar com o segundo byte do numero
	cmpb $7, %ah  #compara 7 com o valor de ah 
	jl end		  #se for menor acaba , senao continua

	movl (%edx), %eax	#move o valor apontado por edx ( ptr ) para eax
	xorb %cl, %ah		#executa se a operaçao xor 
	movl %eax, (%edx)	#move se o valor para (%edx) para ser retornado

	end:
	movl %ebp, %esp
	popl %ebp
	ret

