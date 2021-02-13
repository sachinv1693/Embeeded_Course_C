#include <stdio.h>

int even_or_odd(int num);

int main()
{
	int num, result;
	//Input the number
	printf("Enter an integer: ");
	scanf("%d", &num);

	result = even_or_odd(num);
	if (result)
	{
	printf("FALSE (odd)\n");
	}
	else
	{
			printf("TRUE (even)\n");
	}
	return 0;
}

int even_or_odd(int num)
{
		return (num % 2);
}

