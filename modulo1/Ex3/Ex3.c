#include <stdio.h>


void print_even_numbers(int *array,int n)
{
	for (int i = 0; i < n; i++)
	{
		if((*(array+i)%2)==0){
			
			printf("Even number found in address %p.\n ",(array+i));
		}
	}
	
	
}
