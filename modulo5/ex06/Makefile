OBJFILES = save_data.o main.o
PROGRAM = ex06

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex06: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
	
save_data.o: save_data.s save_data.h
	gcc -Wall -c -g $<
		
main.o: main.c save_data.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
