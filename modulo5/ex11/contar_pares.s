.section .data
.section .text
.global conta_pares

conta_pares:
	#Prologue
	pushl %ebp				
	movl %esp,%ebp
	movl $0,%esi
	
	movl 8(%ebp), %ebx		#int **a
	movl 12(%ebp), %edx 	# int y
	  
	
linhas:
	movl 16(%ebp), %edi 	# int k , volta a repor depois de cada linha iterada
	cmpl $0,%edx
	je fim
	movl (%ebx),%eax  #matriz_linhas
	addl $4,%ebx   #proxima linha so vai ser usada quando voltar a ser iterado
	subl $1,%edx
	jmp iterar_colunas
iterar_colunas:
	cmpl $0,%edi
	je linhas
	movl (%eax),%ecx
	and $0b1,%ecx
	cmpl $0,%ecx   #é par
	je par
	addl $4,%eax   #proximo valor na  coluna
	subl $1,%edi
	jmp iterar_colunas

par:
	addl $1,%esi
	addl $4,%eax   #proximo valor na  coluna
	subl $1,%edi
	jmp iterar_colunas
fim:
	#Epilogue
	movl %esi,%eax
	movl %ebp,%esp			
	popl %ebp
	ret
	
