#include <stdio.h>


int sum_of_even_elements(int *src)
{
	int number_of_elements= *(src);
	src++;//advances the pointer of the array to not include the first number which is the nr of elements
	int sum=0;
	for (int i = 0; i < number_of_elements ; i++)
	{
		
		if(*(src+i)%2==0)
		{
			sum += *(src+i);
		}
	}
	return sum;
	
	
}

