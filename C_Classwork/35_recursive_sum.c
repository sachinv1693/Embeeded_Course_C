#include <stdio.h>

int sum(int n)
{
		if (n <= 1)
		{
				return 1;
		}
		else
		{
				return n + sum(n - 1);
		}
}

int main()
{
		int n;
		printf("Enter a number: ");
		scanf("%d", &n);
		if (n > 0)
		{
				printf("The sum is: %d\n", sum(n));
		}
		else
		{
				printf("Error: Please enter a number greater than 0\n");
		}

		return 0;
}
