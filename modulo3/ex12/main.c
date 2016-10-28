#include <stdio.h>
#include "asm.h"


short int vec[] = {4,102,2,3,1002};
short int *ptr1 = vec;

short res=0;
int main(void)
{
	
	
	res=vec_zero();
	
	int i;
	for (i = 1; i < 5; i++)
	{
		printf("%hi\n",vec[i]);
	}
	
	printf("number of changed values: %d\n",res);
	

	
	
}




