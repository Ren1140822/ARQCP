# variables
INCLUDES = activate_bits.h activate_bits_asm.h activate_inverted_bits_asm.h
SOURCES = activate_bits.c activate_bits_asm.s activate_inverted_bits_asm.s main.c
OBJFILES = activate_bits.o activate_bits_asm.o activate_inverted_bits_asm.o main.o
EXEC = run

${EXEC}: ${OBJFILES}
	gcc -Wall -g -o ${EXEC} ${OBJFILES}

# how to transform .c in .o ; $< -- name of file
.c.o:
	gcc -Wall -g -c $<

${OBJFILES}: ${SOURCES} ${INCLUDES}

start: ${EXEC}
	./${EXEC}

clean:
	rm -f ${OBJFILES} ${EXEC}

clean_obj:
	rm -f ${OBJFILES}

debug: ${EXEC}
	gdb -tui ${EXEC}
