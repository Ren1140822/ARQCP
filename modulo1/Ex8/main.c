#include <stdio.h>
#include "Ex8.h"
int main(void)
{
	int vec[5] = {5,4,3,2,1};
	array_sort(vec,5);
	for (int i = 0; i < 5; i++)
	{
		printf("%d",*(vec+i));
	}
	
}
