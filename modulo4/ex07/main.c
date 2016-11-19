#include <stdio.h>
#include "asm.h"


int main(void)
{
	int value[]={5,2,3,4,5,3,7,6};
	int *vec = value;
	int n=7;
	int res=0;
	res=count_odd(vec,n);
	printf("%d odd numbers found.\n",res);
	
}






