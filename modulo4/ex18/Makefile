OBJFILES = somaC.o somaS.o main.o
PROGRAM = ex10

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex10: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
		
	
somaC.o: somaC.c somaC.h	
	gcc -Wall -c -g $<
	
somaS.o: somaS.s somaS.h	
	gcc -Wall -c -g $<
		
main.o: main.c somaC.h somaS.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
