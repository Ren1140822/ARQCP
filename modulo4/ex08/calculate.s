.section .data

.section .text
	

.global calculate

calculate:
	#prologo
    pushl %ebp
    movl %esp, %ebp
    
    
    pushl %esi #backup dos registos
    
    movl 8(%ebp), %esi 		        #move o primeiro parametro(a) para %esi
    addl 12(%ebp), %esi 	        #efectua a soma a+b
    
    
    pushl %eax				        #backup de registos antes de chamar a funcao imprimir
    
    #adicionar parametros para a função void print_result(char op, int o1, int o2, int res)
    #soma
    pushl %esi 				    	#resultado res
    pushl 12(%ebp)				    #segundo numero o2
    pushl 8(%ebp) 					#primeiro numero o1
    pushl $0x2B 					#caracter + da operacao de soma 
    call print_result 				#chamar função print_result
    addl $16, %esp 					#repor o topo da stack
    
    
    popl %eax	#repor registos apos chamar a funcao imprimir
    
    movl 12(%ebp), %eax			    #b em EAX para segundo operando
    imull 8(%ebp), %eax 	  	    #a*b com resultado em EAX
    
    
    pushl %eax						#backup registos antes de chamar a funcao imprimir
    
    #adicionar parametros para a função void print_result(char op, int o1, int o2, int res)
    #multiplicacao
    pushl %eax 						#resultado res
    pushl 12(%ebp) 					#segundo numero o2
    pushl 8(%ebp) 					#primeiro numero o1
    pushl $0x2A 					#caracter * da operacao
    call print_result 				#chamar função print_result
    addl $16, %esp 					#repor o topo da stack
            
	popl %eax						#repor registos apos chamar a funcao imprimir    
    
    subl %esi , %eax				#retorno (a+b)-(a*b) = %esi-%eax
    
	
    popl %esi						#repor registos

	
	#epilogo
	movl %ebp, %esp
	popl %ebp
	ret
