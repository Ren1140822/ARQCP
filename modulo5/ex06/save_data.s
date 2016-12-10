.global save_data
save_data:
	#prologo
	pushl %ebp
	movl %esp, %ebp

	#backup de registos
	pushl %esi
	pushl %edi
	
	movl 8(%ebp), %esi #coloca o endereço da estrutura em %esi
	movl 12(%ebp), %edi #coloca o inteiro vi em %edi
	movl %edi, (%esi)
	#inteiro ocupa 4 bytes logo proximo parametro esta em 16(%ebp)
	add $4, %esi
	movl 16(%ebp), %edi #coloca o char vc em %edi
	movl %edi, (%esi)
	#char ocupa 1 byte logo proximo parametro esta em 17(%ebp)
	add $1, %esi
	movl 17(%ebp), %edi #coloca o inteiro vj em %edi
	movl %edi, (%esi)
	#novamente inteiro, 4 bytes
	add $4, %esi
	movl 21(%ebp), %edi #coloca o char vd em %edi
	movl %edi, (%esi)

fim:
	#reposição de registos
	popl %edi
	popl %esi
	
	#epilogo
	movl %ebp, %esp
	popl %ebp
	
	ret
