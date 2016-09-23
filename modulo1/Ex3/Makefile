# variables
INCLUDES = Ex3.h
SOURCES = Ex3.c main.c
OBJFILES = Ex3.o main.o
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
