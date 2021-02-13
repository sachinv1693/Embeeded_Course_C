#include <stdio.h>

int main()
{
		int* iptr1 = (int*)1000;
		int* iptr2 = (int*)1012;

		int iptr = iptr2 - iptr1;
		printf("Number is %d\n", iptr);
		return 0;
}

