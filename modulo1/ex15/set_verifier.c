#include <stdio.h>
#include "increment_set_number.h"

void set_verifier(int *vec,int array_size,int *set_number)
{
	
	for (int i = 0; i < array_size-2; i++)
	{
		if(*(vec+i)<*(vec+i+1))
		{
			if(*(vec+i+1)<*(vec+i+2))
			{
				printf("Set found: %d<%d<%d\n",*(vec+i),*(vec+i+1),*(vec+i+2));
				increment_set_number(set_number);
				
			}
		}
	}
	
	
}
