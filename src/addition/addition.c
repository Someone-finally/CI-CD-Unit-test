#include "addition.h"

float addition(float arr[], unsigned int size)
{
	float total =0;
	for(unsigned int i=0;i<size;++i)
	{
		total = total +arr[i];
	}
	
	return total;
}