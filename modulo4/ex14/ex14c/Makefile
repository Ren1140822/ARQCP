OBJFILES = join_bits.o mixed_sum.o main.o 
PROGRAM = ex14c

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex14c: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
		
calculate.o: join_bits.s join_bits.h	
	gcc -Wall -c -g $<
	
mixed_sum.o: mixed_sum.s mixed_sum.h
	gcc -Wall -c -g $<
			
main.o: main.c join_bits.h mixed_sum.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
