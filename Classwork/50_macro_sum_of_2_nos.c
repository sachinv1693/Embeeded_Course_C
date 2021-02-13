#include <stdio.h>
#include <stdlib.h>

#define add_num(num1, num2) (num1 + num2)

int main()
{
		int num1, num2;
		printf("Enter 1st number: ");
		scanf("%d", &num1);
		printf("Enter 2nd number: ");
		scanf("%d", &num2);
		printf("The addition is: %d\n", add_num(num1, num2));
		return 0;
}

