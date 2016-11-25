OBJFILES = insere_dados.o main.o
PROGRAM = ex02

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex02: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
	
insere_dados.o: insere_dados.c insere_dados.h
	gcc -Wall -c -g $<
		
main.o: main.c insere_dados.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
