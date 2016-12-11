OBJFILES = create_str.o main.o
PROGRAM = ex08

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex08: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
	
create_str.o: create_str.c create_str.h
	gcc -Wall -c -g $<
		
main.o: main.c create_str.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
