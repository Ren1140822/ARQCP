#include <stdio.h>
#include "asm.h"


short vec[] = {4,2,3,4,5};
short *ptr = vec;
short res=0;
short value = 5;
int main(void)
{
	
	
	res= vec_search();
	
	
	printf("%d\n",res);

	
	
}




