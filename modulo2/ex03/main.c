#include <stdio.h>
#include "asm.h"
int op1=0, op2=0,op3=0,res=0;

int main(void) {
printf("Valor op1:");
scanf("%d",&op1);
printf("Valor op2:");
scanf("%d",&op2);
printf("Valor op3:");
scanf("%d",&op3);
res=sum_sub();
printf("res= %d:0x%x\n", res,res);
return 0;
}
