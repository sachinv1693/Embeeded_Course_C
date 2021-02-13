#include <stdio.h>

int square(int num);

int main()
{
	int num;
	//Input num
	printf("Enter an integer: ");
	scanf("%d", &num);

	printf("The square of the given number is: %d\n", square(num));
	return 0;
}

int square(int num)
{
		return num * num;
}

