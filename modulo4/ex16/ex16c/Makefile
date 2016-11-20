OBJFILES = changes.o changes_vec.o main.o 
PROGRAM = ex16c

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex16c: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
		
changes.o: changes.s changes.h	
	gcc -Wall -c -g $<
	
changes_vec.o: changes_vec.s changes_vec.h	
	gcc -Wall -c -g $<
	
main.o: main.c changes.h changes_vec.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
