#include <stdio.h>

int main()
{
	//Input length
	int len;
	printf("Enter the power of 2 till which you want to print the series: ");
	scanf("%d", &len);

	//Store the multiplication inside a variable pow.
	int pow=1;

	//Iterate over given length, store value into pow and print
	for (int i=1; i <= len; i++)
	{
		//Multiply by 2 and store inside pow.
		pow *= 2;
		printf("%d ", pow);
		if (i == len)//Endline for last element in the loop
			printf("\n");
	}

	return 0;
}
