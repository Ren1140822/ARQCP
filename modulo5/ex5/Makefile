# variables
INCLUDES = struct.h insere_dados.h insere_notas.h procura_maiores.h
SOURCES = insere_dados.c insere_notas.s procura_maiores.c main.c
OBJFILES = insere_dados.o insere_notas.o procura_maiores.o main.o
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
