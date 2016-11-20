OBJFILES = join_bits.o main.o
PROGRAM = ex14a

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex14a: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
		
calculate.o: join_bits.s join_bits.h	
	gcc -Wall -c -g $<
		
main.o: main.c join_bits.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
