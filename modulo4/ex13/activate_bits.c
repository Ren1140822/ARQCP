#include <stdio.h>

unsigned int activate_bits(int a,int left,int right)
{

	unsigned int mask1 = ~0;
	
	unsigned int mask_left = mask1<<(left-1);
	mask1 = ~0;
	unsigned int mask_right = mask1<<(right+1);
	a= a|(mask_left|mask_right);
	
	return a;
}





