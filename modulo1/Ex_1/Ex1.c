#include <stdio.h>



int main(void)
{
	int x=5;
	int *xPtr =&x;
	float y =*xPtr+3;
	int vec[]={10,11,12,13};
	printf("Value of X: %d\n",x);
	printf("Value of Y: %f\n",y);
	printf("Adress of X: %p\n",&x);
	printf("Adress of xPtr: %p\n",xPtr);
	printf("Value of xPtr: %d\n",&xPtr);
	for (int i = 0; i <  (sizeof vec)/sizeof(int); i++)
	{
		printf("Value of Vec[%d]: %d\n",i,vec[i]);
	}
	for (int i = 0; i <  (sizeof vec)/sizeof(int); i++)
	{
		printf("Address of Vec[%d]: %d\n",i,&vec[i]);
	}
	//In different computers the addresses might be different, especially because some represent 
	//binary numbers in Little Endian and others in BigEndian.
	
	//To acess real values of vec you have to iterate trough 4 bytes  to get the real value, thats how they're related.
	
}
