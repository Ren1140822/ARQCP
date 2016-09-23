#include <stdio.h>

int main(void)
{
	short shorts[10]={1,3,4,5,6,7,8,6,8,5};
	int integers[5];
	compress_shorts(shorts,10,integers);
	for (int i = 0; i < 5; i++)
	{
		printf("%d\n",integers[i]);
	}
	
	
}

