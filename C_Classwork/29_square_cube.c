#include <stdio.h>

void square_cube(int* ptr1, int* ptr2);

int main()
{
	int num1, num2;
	//Input num
	printf("Enter an integer: ");
	scanf("%d", &num1);
	num2 = num1;

	square_cube(&num1, &num2);

	printf("The square of the given number is: %d\n", num1);
	printf("The cube of the given number is: %d\n", num2);
	return 0;
}

void square_cube(int* ptr1, int* ptr2)
{
		*ptr1 = (*ptr1) * (*ptr1);
		*ptr2 = (*ptr2) * (*ptr2) * (*ptr2);
}

