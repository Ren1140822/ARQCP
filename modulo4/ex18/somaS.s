
.section .data

.section .text

#devolve a soma de todos os elementos de vec que são múltiplos do segundo byte de x.
.global soma_multiplos_xS
soma_multiplos_xS:
	#prólogo
	pushl %ebp
	movl %esp, %ebp

	#backup de registos
	pushl %ecx
	pushl %esi
	pushl %ebx
	
	movl $0, %ecx #inicialização do somatório dos múltiplos
	movl 8(%ebp), %esi #coloca o endereço do vetor de bytes (primeiro parâmetro) em %esi
	movl 12(%ebp), %ebx #coloca o segundo parâmetro em %ebx
	sarl $8, %ebx #deslocamento aritmético à direita de 8 bits (1 bytes)
	andl $0x0000000f, %ebx #obtem valor do 2º byte (em %bl)
	
ciclo:
	movl $0, %eax #limpa o registo que irá armazenar o byte atual
	movb (%esi), %al #coloca o byte da posição actual do vector em %al
	cmp $0, %al
	je fim
	
	movb $0, %ah #limpa %ah para armazenar o resto da divisão
	idivb %bl #divide o byte em %al por %bl. Resultado em %al, resto em %ah
	
	cmpb $0, %ah #compara se o resto é igual a 0
	je somar #se sim, adiciona o valor ao somatório
	
	incl %esi
	jmp ciclo
	
somar:
    movl $0, %eax #limpa o registo que irá armazenar o byte
    movb (%esi), %al #move o byte para o local do byte menos significativo do registo %al
    addb %al, %cl #adiciona o byte em %al ao registo do somatório %cl
    
    incl %esi
    jmp ciclo
	
fim:
	movl %ecx, %eax #mover somatório para registo de retorno
	
	#reposição de registos
	popl %ebx
	popl %esi
	popl %ecx

	#epilogo
	movl %ebp, %esp
	popl %ebp
	
	ret
	
