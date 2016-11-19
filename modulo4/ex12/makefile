OBJFILES = activaC.o activaS.o main.o
PROGRAM = ex12b

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex12b: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
		
activaC.o: activaC.c activaC.h	
	gcc -Wall -c -g $<
	
activaS.o: activaS.s activaS.h	
	gcc -Wall -c -g $<
		
main.o: main.c activaS.h activaC.h	
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
