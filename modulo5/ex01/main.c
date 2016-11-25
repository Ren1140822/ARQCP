#include <stdio.h>


typedef struct {
int age;
int number;
int grades[10];
char name[80];
char address[120];
} Student;

int main (void)
{
	Student p;
	Student * ptr;
	ptr = &p;
	save_data(ptr,25,1140822,"Renato","Rua 1");
	printf("%d\n",(*ptr).age);
	printf("%d\n",(*ptr).number);
	printf("%s\n",(*ptr).name);
	printf("%s\n",(*ptr).address);
	return 0;
}


