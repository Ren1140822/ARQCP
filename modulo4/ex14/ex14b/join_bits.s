.section .data

.section .text

	.global join_bits

join_bits:

	Prologue:
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx

	movl 8(%ebp), %ebx #a passa para ebx
	movl 12(%ebp), %edx #b passa para edx
	movl 16(%ebp), %ecx #pos passa para ecx

	
	cmpl $0, %ecx #se o valor de pos for menor que zero , nao é possivel realizar a operaçao
	jl end	
	cmpl $31, %ecx #se o valor de pos for maior que 32 , nao é possivel realizar a operaçao
	jg end 

	shr %cl, %edx #shift a direita dos bits de b , %cl vezes
	shl %cl, %edx #shift a esquerda dos bits de b , %cl vezes
	movb $31, %al #como precisamos de um valor a contrar do fim (32bits), colocamos al a 31
	subb %cl, %al #subtrair al a cl para encontrar a posiçao central/desejada (valor guardado em al)
	movb %al, %cl #guarda se o valor de al em cl
	shl %cl, %ebx #shift a esquerda dos bits de a , %cl vezes
	shr %cl, %ebx #shift a direita dos bits de a , %cl vezes
	orl %ebx, %edx #passagem dos zeros a uns atravez de uma mascara logica (uso de ebx como mascara de edx)
	movl %edx, %eax #guarda se o valor de edx em eax para retornar 

	
	Epilogue:
	pushl %ebx
	movl %ebp, %esp
	popl %ebp
	
	end:
	ret

