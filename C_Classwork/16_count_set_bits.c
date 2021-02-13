#include <stdio.h>

int main()
{
	unsigned int num;
	//Input the number
	printf("Enter the number: ");
	scanf("%d", &num);
	//store count
	int count;
	for (count = 0; num != 0; num >>= 1)
	{
			if (num & 01)
			{
					count++;
			}
	}

	printf("Number of set bits in the given number = %d\n",count);
	return 0;
}
