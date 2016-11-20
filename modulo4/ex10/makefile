OBJFILES = conta_bits_zeroC.o conta_bits_zeroS.o main.o
PROGRAM = ex10

.SUFFIXES: .s .c .o
.s.c.o:
	gcc -Wall -c $<
	
ex10: ${OBJFILES}
	gcc -Wall ${OBJFILES} -o ${PROGRAM}
		
	
conta_bits_zeroC.o: conta_bits_zeroC.c conta_bits_zeroC.h	
	gcc -Wall -c -g $<
	
conta_bits_zeroS.o: conta_bits_zeroS.s conta_bits_zeroS.h	
	gcc -Wall -c -g $<
		
main.o: main.c conta_bits_zeroC.h conta_bits_zeroS.h
	gcc -Wall -c -g $<
	
run: ${PROGRAM}
	./${PROGRAM}
	
clean: 
	rm ${PROGRAM} ${OBJFILES}
	
debug: ${PROGRAM}
	gdb ${PROGRAM}
