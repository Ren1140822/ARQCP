#include <stdio.h>
#include "Ex11.h"
int main(void)
{
	char string[9] ="racecar\0";
	printf("%d",palindrome(string));
	return 0;
}
