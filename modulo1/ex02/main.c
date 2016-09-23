#include <stdio.h>
#include "Ex2.h"
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


