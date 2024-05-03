#include<stdio.h>
#include "addition.h"

int main()
{
	float array[] = { -2,2,3,-4,5,-3,5};
	float addi = addition(array,7);
	printf("Addition is : %f\r\n",addi);
	
	return 0;
}
