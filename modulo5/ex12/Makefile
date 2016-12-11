OBJFILES = sum_matrixes.o main.o
PROGRAM = ex12

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex12: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
	
sum_matrixes.o: sum_matrixes.c sum_matrixes.h
	gcc -Wall -c -g $<
		
main.o: main.c sum_matrixes.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
