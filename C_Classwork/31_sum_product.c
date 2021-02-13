#include <stdio.h>

void sum_product(int* ptr1, int* ptr2);

int main()
{
	int num1, num2;
	//Input num
	printf("Enter num 1: ");
	scanf("%d", &num1);
	printf("Enter num 2: ");
	scanf("%d", &num2);

	sum_product(&num1, &num2);

	printf("The sum of the given numbers is: %d\n", num1);
	printf("The product of the given numbers is: %d\n", num2);
	return 0;
}

void sum_product(int* ptr1, int* ptr2)
{
		int temp = *ptr1;
		*ptr1 += *ptr2;
		*ptr2 *= temp;
}

