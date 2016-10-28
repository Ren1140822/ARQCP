#include <stdio.h>
#include "asm.h"


int vec[] = {5,1,2,3,4,5};
int *ptr= vec;
int res=0;
int main(void)
{
	
	
	vec_sum();
	int i=0;
	for (i = 1; i < 6; i++)
	{
			printf("%d\n",vec[i]);
	}
	

	
	
}



