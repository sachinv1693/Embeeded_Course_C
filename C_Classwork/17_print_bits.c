#include <stdio.h>

int main()
{
		int num;
		//Input the number
		printf("Enter the number: ");
		scanf("%d", &num);

		int NUM_OF_BITS = 32;

		printf("\nPrinting bits of the given number -\n");

		for (int i = 0; i < NUM_OF_BITS; i++)
		{
				if (num & (1 << NUM_OF_BITS - i - 1))
				{
						printf("1");
				}
				else
						printf("0");
		}
	    printf("\n");	
		return 0;
}
