#include <stdio.h>
#include "asm.h"


short int short1=0,res=0;

short int byte1=1;
short int byte2=1;
int main(void) 
{

res = concat_bytes();
printf("short is %hu.\n", res);
return 0;
}

