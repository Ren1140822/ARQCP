#include <stdio.h>
#include <stdlib.h>

int main(void)
{
	
	int current_size=-1;
	int *stack = (int*) calloc(0,sizeof(int));
	int choice=0,value=0;;
	int loop=1;
	while(loop==1)
	{
		printf("Pressione 1 para push, 2 para pop, 0 para sair.\n");
		scanf ("%d",&choice);
		if(choice==1)
		{
			current_size++;
			stack = (int *) realloc(stack, ((current_size +1) * sizeof(int)));
			printf("Insira um inteiro.\n");
			scanf("%d",&value);
			stack[current_size] = value;
		}
		if(choice==2)
		{
			if(current_size>-1)
			{
				
				printf("%d foi retirado da stack.\n",stack[current_size]);	
			
				stack = (int *) realloc(stack, ((current_size -1 )* sizeof(int)));
				current_size--;	
				
			}
			else
			{
				printf("Stack encontra-se vazia\n");
			}
		}
		if(choice==0)
		{
			
			free(stack);
			return 0;
		}
	}
	return 0;
}
