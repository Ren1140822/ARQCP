OBJFILES = test_equal.o main.o
PROGRAM = ex06

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex06: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
		
test_equal.o: test_equal.s test_equal.h	
	gcc -Wall -c -g $<
		
main.o: main.c test_equal.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
