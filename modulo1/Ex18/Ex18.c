#include <stdio.h>

void compress_shorts( short *shorts,int n_shorts,int *integers)
{
	short *array= (short*)integers;
	for (int i= 0; i < n_shorts; i++)
	{
		*(array+i)=*(shorts+i);
		
		
	}
	integers= (int*)array;
	
	
	
}
