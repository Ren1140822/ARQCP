#include <stdio.h>



int sort_without_reps(int *src,int n,int *dest)
{
	int prev_value,vector_index=0;
	
	for (int i = 0; i < n; i++)
	{
		prev_value=src[i];
		if(prev_value!=src[i+1])
		{
			dest[vector_index]=prev_value;
			vector_index++;
		}
	}
	return vector_index;
	
	
}
