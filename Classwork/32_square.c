#include <stdio.h>

void square(int* ptr);

int main()
{
	int num;
	//Input num
	printf("Enter an integer: ");
	scanf("%d", &num);

	square(&num);

	printf("The square of the given number is: %d\n", num);
	return 0;
}

void square(int* ptr)
{
		*ptr = (*ptr) * (*ptr);
}

