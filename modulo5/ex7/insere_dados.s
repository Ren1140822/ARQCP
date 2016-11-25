.section .data
.section .text
.global insere_dados

insere_dados:
	#Prologue
	pushl %ebp				
	movl %esp,%ebp
	
	movl 8(%ebp),%eax			#endereço struct
	movl 12(%ebp),%edx			#vw
	
	movl $3,%ecx           
	
shorts:

	movl (%edx), %edi
	movl %edi, (%eax)			#copia valores do vetor pra struct
	
	addl $2, %eax				#proximo short struct
	addl $2, %edx				#proximo short array
	
	loop shorts	
									
	addl $2, %eax				#mantem alinhamento, adiciona + 2 bytes para fazer 8
	
	movl 16(%ebp), %edx  		#vj
	movl %edx, (%eax)    		#atribui valor ao J da struct
	
	addl $4, %eax				#avança estrutura
	
	movl $3, %ecx          		#reset loop
	movl 20(%ebp), %edx    		#arr chars

chars:
	movl (%edx), %edi 
	movl %edi, (%eax)    		#copia char para struct
	
	addl $1,%edx        			# proximo char
	addl $1, %eax					#avança struct
	loop chars

fim:
	#Epilogue
	movl %ebp,%esp			
	popl %ebp
	ret
