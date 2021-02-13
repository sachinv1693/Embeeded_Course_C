#include <stdio.h>
#include "main.h"

int main()
{
		int a, b;
		printf("Enter 2 numbers: ");
		scanf("%d %d", &a, &b);
		int result = add(a, b);
		printf("Addition of the given numbers : %d\n", result);
		result = sub(a, b);
		printf("Subtraction of the given numbers : %d\n", result);
		result = mul(a, b);
		printf("Multiplication of the given numbers : %d\n", result);
		return 0;
}

