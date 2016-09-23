#include <stdio.h>
#include <time.h>
#include <stdlib.h>
void populate_array(int *vec, int array_size)
{
	srand(time(NULL));
	for (int i = 0; i < array_size; i++)
	{
		
		*(vec+i) = rand()%21;
		
		
	}
	
	
}
