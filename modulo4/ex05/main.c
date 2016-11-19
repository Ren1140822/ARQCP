#include <stdio.h>
#include "asm.h"


int main(void)
{
	int value[]={3200};
	int *v1 = value;
	int v2=3;
	int res=0;
	res=dec_cube(v1,v2);
	printf("%d cubed is %d.\n",v2,res);
	printf("Decremented value is %d.\n",*v1);
}





