#include <stdio.h>
#include "asm.h"


short int short1=0,res=0;

int main(void) 
{
printf("Valor short1:");
scanf("%hu",&short1);
res= swap_bytes();
printf("res= %hu:0x%x\n", res,res);
return 0;
}

