#include <stdio.h>
#include "Ex14.h"

int main(void)
{
	
	float grades[21]={18.42,15.4,14.2,16.4,1.4,4.3,7.3,8.2,8.2,
		8.2,8.2,8.2,8.2,8.2,8.2,8.2,8.2,8.2,8.2,8.2,20.0};
	int freq[21]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
	frequencies(grades,21,freq);
	for (int i = 0; i < 21; i++)
	{
		printf("Number of %d :%d\n",i,*(freq+i));
	}
	
	
}

