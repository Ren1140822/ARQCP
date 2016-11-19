.section .data

.section .text

.global sub_greater

sub_greater:
	#prologo
	pushl %ebp
	movl %esp, %ebp
	
	movl 8(%esp), %ebx		#coloca o primeiro parametro em ebx
	movl 12(%esp), %ecx		#coloca o segundo parametro em ecx
	movl 16(%esp), %esi		#coloca o terceiro parametro em esi
	
	movl %ebx, %eax			#coloca ebx em eax
	subl %ecx, %eax			#eax fica com a subtraçao dos dois valores
	
	cmpl %ebx, %ecx			#se ecx for menor ou igual que ebx, passa-se para menor
	jle menor
	
	movl %ebx, (%esi)		#senão coloca-se ebx na posição para que esi aponta porque ebx é o menor
	jmp fim
	
menor:
	movl %ecx, (%esi)		#coloca-se ecx na posição para que esi aponta porque é o menor
	jmp fim
	
fim:
	# epilogo
	movl %ebp, %esp
	popl %ebp

	ret
