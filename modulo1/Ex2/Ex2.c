#include <stdio.h>

int main(void)
{
	int vec[20];
	fill_vec(vec,20);
	for (int i = 0; i < 21; i++)
	{
		printf("%d\n", vec[i]);
	}		
	return 0;
}



void fill_vec(int *vec,int n)
{
	//*vec é a posiçao inicial do array
	
	int value=0;
	for (int i = 0; i < n; i++)
	{
		printf("Insira um valor:\n");
		scanf("%d",&value);
		
		 *(vec+i)= value;
		 //*(vec+i) = vec[i] estou a avançar 4 bytes de uma vez por causa do tipo int.
			
	}	
}
