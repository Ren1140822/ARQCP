#include <stdio.h>


void power_ref(int *x,int y)
{
	
	 int x_value = *x;
	 printf("initial address: %p\n",x);
	 for (int i = 1; i < y ; i++)
	 {
		 
		 x_value = x_value * (*x);
		
	 }
	 *x=x_value;
	 printf("value: %d, at final address:%p\n",*x,x);
	
	
	
}
