#include <stdio.h>



void array_sort(int *vec,int n)
{
	int var;
	for (int i = 0; i < n ; i++)
	{
		var = vec[i];
		for (int j = i; j < n ; j++)
		{
			if(var>vec[j])
			{
				vec[i]=vec[j];
				vec[j] = var;
				var = vec[i];
			}
		}
		
	}
	
}

