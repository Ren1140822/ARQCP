typedef struct {
	int idade;
	int numero;
	int notas[10];
	char nome[80];
	char morada[120];
} Aluno;

void save_grades(Aluno * a, int *new_grades);
