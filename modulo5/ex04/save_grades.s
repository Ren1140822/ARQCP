.global save_grades
save_grades:
	#prologo
	pushl %ebp
	movl %esp, %ebp
	
	#backup de registos
	pushl %ebx
	pushl %esi
	pushl %edi
	
	movl $0, %eax #inicialização do contador
	movl $10, %ebx #assumindo que o vetor save_grades tem 10 posições
	movl 8(%ebp), %esi #primeiro parâmetro (apontador da estrutura) fica em %esi
	movl 12(%ebp), %edi #segundo parâmetro (apontador das notas a inserir) fica em %edi
	movl $0, %edx #limpar o registo auxiliar
	
	addl $8, %esi #avançar para a posição de memória das notas (avançamos 8 bytes pois antes das notas temos dois inteiros cada um ocupando 4 bytes)
	
	jmp ciclo
	
ciclo:
	cmpl %eax, %ebx #verificar se já leu os 10 elementos do vetor
	je fim
	
	movl (%edi), %edx #mover a nota para o registo auxiliar
	movl %edx, (%esi) #inserir a nota na estrutura indicada pelo apontador
	addl $4, %edi #avançar para a proxima nota (inteiro ocupa 4 bytes)
	addl $4, %esi #avançar para a proxima nota (inteiro ocupa 4 bytes)
	incl %eax #incrementar o contador
	jmp ciclo
	
fim:
	#reposição de registos
	popl %edi
	popl %esi
	popl %ebx
	
	# epilogo
	movl %ebp, %esp
	popl %ebp

	ret
