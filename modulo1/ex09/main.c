#include <stdio.h>
#inclued "Ex9.h"
int main(void)
{
	int vec1[6]= {1,2,2,4,4,3};
	int vec2[6];
	int number_of_elements= sort_without_reps(vec1,6,vec2);
	
	for (int i = 0; i < number_of_elements; i++)
	{
		printf("%d",vec2[i]);
	}
	
	return 0;	
}

