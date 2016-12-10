OBJFILES = save_grades.o main.o
PROGRAM = ex04

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex04: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
	
save_grades.o: save_grades.s save_grades.h
	gcc -Wall -c -g $<
		
main.o: main.c save_grades.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
