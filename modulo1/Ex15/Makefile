# variables
INCLUDES = populate_array.h increment_set_number.h set_verifier.h
SOURCES = populate_array.c increment_set_number.c set_verifier.c main.c
OBJFILES = populate_array.o increment_set_number.o set_verifier.o main.o
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
