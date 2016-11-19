#include <stdio.h>
#include "rotate_left.h"
#include "rotate_right.h"

int main(void)
{
	int num =-4;
	int shift =1;
	printf("%d\n",num);
	num=rotate_right(num,shift);
	printf("%d\n",num);
	num=rotate_left(num,shift);
	printf("%d\n",num);
}






