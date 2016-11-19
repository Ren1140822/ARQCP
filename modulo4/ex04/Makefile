OBJFILES = sub_greater.o main.o
PROGRAM = ex04

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex04: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
		
sub_greater.o: sub_greater.s sub_greater.h	
	gcc -Wall -c -g $<
		
main.o: main.c sub_greater.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
