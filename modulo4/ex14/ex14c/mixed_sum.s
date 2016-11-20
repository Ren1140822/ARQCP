.section .data

.section .text

	.global mixed_sum

mixed_sum:

	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	pushl %esi

	movl 8(%ebp), %ecx #Guarda-se o valor de a em ecx
	movl 12(%ebp), %edx #Guarda-se o valor de b em edx
	movl 16(%ebp), %ebx #Guarda-se o valor de pos em ebx

	pushl %ebx #ebx é guardado na stack
	pushl %edx #edx é guardado na stack
	
	pushl %ecx #ecx é guardado na stack (todos enviados por parametro)
	
	call join_bits #faz se call á função join_bits
	popl %ecx #restaura-se o valor de ecx 
	popl %edx #restaura-se o valor de edx 
	addl $4, %esp #como ebx nao é restaurado na propria funçao , soma se 4 a %esp

	movl %eax, %esi #move se o valor retornado da funçao para %esi

	pushl %ebx #ebx é guardado na stack
	pushl %ecx #ecx é guardado na stack
	pushl %edx #edx é guardado na stack (todos enviados por parametro)
	
	call join_bits # faz se call á função join_bits	
	
	popl %ecx #restaura-se o valor de ecx 
	popl %edx #restaura-se o valor de edx 
	addl $4, %esp #como ebx nao é restaurado na propria funçao , soma se 4 a %esp

	addl %eax, %esi #faz se a soma pedida no exercicio ( eax que foi o valor retornado da segunda call , com esi , valor da primeira)

	movl %esi, %eax #move se o resultado para eax para se retornar 

	popl %ebx
	popl %esi
	movl %ebp, %esp
	popl %ebp
	ret

