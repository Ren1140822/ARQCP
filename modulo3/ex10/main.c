#include <stdio.h>
#include "asm.h"


char vec[] = "1234567890123456789012345678901234567890";
char *ptr1 = vec;
char vec2[] = "asdfghjklmasdfghjklmasdfghjklmasdfghjklm";
char *ptr2 = vec2;
char vec3[80];
char *ptr3=vec3;
short res=0;
int main(void)
{
	
	
	str_concat();
	
	int i;
	for (i = 0; i <81 ; i++)
	{
		printf("%c\n",vec3[i]);
	}
	
	

	
	
}




