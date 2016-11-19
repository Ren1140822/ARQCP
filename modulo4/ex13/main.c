#include <stdio.h>
#include "activate_bits_asm.h"
#include "activate_inverted_bits_asm.h"
#include "activate_bits.h"


int main(void)
{
	 unsigned int a =16,left=16 ,right=16;
	 
	 a= activate_inverted_bits_asm(a,left,right);
	 printf("%p\n",a);
	 return 0;
}

