#include <stdio.h>


void frequencies(float *grades,int n, int *freq)
{
	
	for (int i = 0; i < n; i++)
	{
		
		int index_of_float = (int)*(grades+i);
		*(freq+index_of_float)+=1;
	}
	
}

