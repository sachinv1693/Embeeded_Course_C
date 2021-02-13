#include <stdio.h>

int sum_of_digits(int n)
{
		if (n == 0)
		{
				return 0;
		}
		else
		{
				return (n % 10) + sum_of_digits(n/10);
		}
}

int main()
{
		int n;
		printf("Enter a number: ");
		scanf("%d", &n);
		if (n > 0)
		{
		printf("The sum is: %d\n", sum_of_digits(n));
		}
		else
		{
				printf("Error: Please enter a non-negative number\n");
		}

		return 0;
}
