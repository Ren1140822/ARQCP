OBJFILES = calculate.o print_result.o main.o
PROGRAM = ex08

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex08: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
		
calculate.o: calculate.s calculate.h	
	gcc -Wall -c -g $<
	
print_result.o: print_result.c print_result.h	
	gcc -Wall -c -g $<
		
main.o: main.c calculate.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
