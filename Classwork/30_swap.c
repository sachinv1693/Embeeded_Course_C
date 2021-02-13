#include <stdio.h>

void swap(int* ptr1, int* ptr2);

int main()
{
	int num1, num2;
	//Input num
	printf("Enter num 1: ");
	scanf("%d", &num1);
	printf("Enter num 2: ");
	scanf("%d", &num2);
	printf("Before swapping, num 1 = %d, num 2 = %d\n", num1, num2);

	swap(&num1, &num2);

	printf("After swapping, num 1 = %d, num 2 = %d\n", num1, num2);
	return 0;
}

void swap(int* ptr1, int* ptr2)
{
		int temp = *ptr1;
		*ptr1 = *ptr2;
		*ptr2 = temp;
}

