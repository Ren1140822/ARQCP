# variables
INCLUDES = savedata.h
SOURCES = savedata.c main.c
OBJFILES = savedata.o main.o
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
