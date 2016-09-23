#include <stdio.h>

void swap(int *vec1,int *vec2, int size)
{
	int var;
	for (int i = 0; i < size; i++)
	{
		var=vec1[i];
		vec1[i]=vec2[i];
		vec2[i]=var;
	}
	
	
	
}
