OBJFILES = search_matrix.o main.o
PROGRAM = ex10

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex10: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
	
search_matrix.o: search_matrix.c search_matrix.h
	gcc -Wall -c -g $<
		
main.o: main.c search_matrix.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
