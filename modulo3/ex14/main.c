#include <stdio.h>
#include "asm.h"
#include "exists.h"

short vec[] = {4,3,2,2,1};
short * ptr1 = vec;

short vec2[] = {4,8,9,2,6};
short * ptr2 = vec2;
int vec3[]={4,0,0,0,0,0,0,0,0};
int *ptr3=vec3;
short value =0;
int res=0;
int main(void)
{
	res=vec_diff();
	int i;
	for (i = 1; i < 9; i++)
	{
		printf("%d",vec3[i]);
	}
	
	printf("\n%d elements were copied.\n",res);
	

	
	
}
