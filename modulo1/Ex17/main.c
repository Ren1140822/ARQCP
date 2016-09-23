#include <stdio.h>
int main(void)
{
	int vec1[10]={1,2,3,4,5,6,7,8,9,10};
	int vec2[10]={11,12,13,14,15,16,17,18,19,20};
	for (int i = 0; i < 10; i++)
	{
		printf("Content of vec2[%d] before swap: %d\n",i,vec2[i]);
	}
	
	swap(vec1,vec2,10);
	for (int i = 0; i < 10; i++)
	{
		printf("Content of vec2[%d] after swap: %d\n",i,vec2[i]);
	}
	
	return 0;
}

