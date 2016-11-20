.section .data

.section .text

	.global changes_vec

changes_vec:

	pushl %ebp
	movl %esp, %ebp

	movl 8(%ebp), %edx  #O valor do primeiro parametro é guardado na stack em edx 
	movl 12(%ebp), %ecx #O valor do segundo parametro é guardado na stack em ecx

	change:

	pushl %ecx #Para evitar alteraçoes , guarda se o valor de ecx na stack
	pushl %edx #Guarda se o valor de edx na stack ( pois sera usado como parametro )
	
	call changes #Faz se call aá funçao changes
	
	popl %edx #O valor de edx é restaurado
	popl %ecx #O valor de ecx é restaurado

	addl $4, %edx #proximo valor no vetor de ints

	loop change #Enquanto ecx nao for zero ,vai repetir o loop

	movl %ebp ,%esp
	popl %ebp
	ret	

