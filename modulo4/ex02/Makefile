OBJFILES = sum_n.o main.o
PROGRAM = ex02

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex02: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
		
sum_n.o: sum_n.s sum_n.h	
	gcc -Wall -c -g $<
		
main.o: main.c sum_n.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
