#include <stdio.h>

int main(void)
{
	int array[5]={1,2,3,4,5};
	print_even_numbers(array,5);
	
	return 0;
	
	
	
}

void print_even_numbers(int *array,int n)
{
	for (int i = 0; i < n; i++)
	{
		if((*(array+i)%2)==0){
			
			printf("Even number found in address %p.\n ",(array+i));
		}
	}
	
	
}
