OBJFILES = changes.o main.o 
PROGRAM = ex16b

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex16b: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
		
changes.o: changes.s changes.h	
	gcc -Wall -c -g $<
	
main.o: main.c changes.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
