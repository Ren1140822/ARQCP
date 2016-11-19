#include <stdio.h>
#include "print_result.h"
#include "calculate.h"

int main(){
	
	int a, b;
	printf("Introduza o primeiro numero:");
	scanf("%d", &a);
	printf("Introduza o segundo numero:");
	scanf("%d", &b);
	printf("Resultado Final: %d\n", calculate(a, b));
	return 0;
	
}
