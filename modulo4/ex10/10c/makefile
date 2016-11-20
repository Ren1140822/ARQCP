OBJFILES = vec_conta_bits_zeroS.o conta_bits_zeroS.o main.o
PROGRAM = ex10

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex10: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
			
conta_bits_zeroS.o: conta_bits_zeroS.s conta_bits_zeroS.h	
	gcc -Wall -c -g $<
	
vec_conta_bits_zeroS.o: vec_conta_bits_zeroS.s vec_conta_bits_zeroS.h	
	gcc -Wall -c -g $<		
		
main.o: main.c vec_conta_bits_zeroS.h conta_bits_zeroS.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
