#include <stdio.h>
#include "Ex2.h"


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
