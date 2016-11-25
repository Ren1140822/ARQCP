.section .data

.section .text

	.global vec_conta_bits_zeroS


vec_conta_bits_zeroS:
		#prologue
		pushl %ebp
		movl %esp, %ebp
		
		movl 8(%ebp), %esi				#move o primeiro parametro para %esi
		movl $0, %ebx					#contador da condiçao de paragem	
		movl $0, %edx					#edx a zero pois vai guardar o resultado
		
	ciclo:
		cmpl %ebx, 12(%ebp)				#condiçao de paragem
		je end
		pushl %ebx
		pushl %esi
		pushl (%esi)					#coloca na stack o valor a ser usado na proxima call
		call conta_bits_zeroS			#call a funçao conta_bits_zeroS
		popl %esi
		popl %esi	
		popl %ebx				#apaga o valor anterior da stack
		addl %eax, %edx					#adiciona o numero de bits retornado no call a edx
		addl $4,%esi						#next pos vetor
		incl %ebx						#contador ++
		jmp ciclo
		
		
	end:
		movl %edx, %eax					#move o resultado final pra eax pra ser retornado
		
		#epilogue
		movl %ebp, %esp
		popl %ebp
		
		ret
