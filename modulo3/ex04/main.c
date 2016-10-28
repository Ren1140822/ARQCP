#include <stdio.h>
#include "asm.h"


int vec[] = {5,1,2,3,4,5};
int *ptr= vec;
int res=0;
int main(void)
{
	
	
	res= vec_sum();
	printf("result is %d",res);
	
	
}



