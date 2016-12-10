#include <stdio.h>
#include <string.h>
#include "change_address.h"


void change_address(Student *p, char *address)
{
  strcpy((*p).address,address);
}

