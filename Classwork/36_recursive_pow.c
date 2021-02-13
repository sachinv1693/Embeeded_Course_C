#include <stdio.h>

int recursive_pow(int x, int y)
{
		if (y == 0)
		{
				return 1;
		}
		else
		{
				return x * recursive_pow(x, y - 1);
		}
}

int main()
{
		int x, y;
		printf("Enter the base number x: ");
		scanf("%d", &x);
		printf("Enter the power: ");
		scanf("%d", &y);
		if(y > 0)
		printf("Answer: %d\n", recursive_pow(x, y));
		else
		{
				y *= -1;
		printf("Answer: %f\n", (1.0/recursive_pow(x, y)));
		}
		return 0;
}
