#include <stdio.h>
#include "greater_date.h"
#include "greater_date_s.h"

int main(){
	printf("test in c\n");
	int date1 = 0x10211994;
	int date2 = 0x10211995;
	int greater = greater_date(date1,date2);
	if(greater!= -1)
		printf("greater date is %X\n", greater);
	else
		printf("equal dates\n");
	
	greater =0;
	printf("test in  assembly\n");
	date1 = 0x08151994;
	date2 = 0x08151994;
	greater = greater_date_s(date1,date2);
	if(greater!= -1)
		printf("greater date is %X\n", greater);
	else
		printf("equal dates\n");
	return 0;
}
