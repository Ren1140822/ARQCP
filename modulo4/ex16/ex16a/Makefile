OBJFILES = changes.o main.o 
PROGRAM = ex16a

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex16a: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
		
changes.o: changes.c changes.h	
	gcc -Wall -c -g $<
	
main.o: main.c changes.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
