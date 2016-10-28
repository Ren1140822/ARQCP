#include <stdio.h>
#include "asm.h"


int vec[] = {4,-102,2,3,-1002};
int *ptr1 = vec;

int main(void)
{
	
	
	vec_fill();
	
	int i;
	for (i = 1; i < 5; i++)
	{
		printf("%d\n",vec[i]);
	}
	
	
	

	
	
}



