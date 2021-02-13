#include <stdio.h>

int main()
{
		int num, len;
		//Input the number
		printf("Enter the number for which you want to print the powers: ");
		scanf("%d", &num);
		//Input length
		printf("Enter the power of %d till which you want to print the series: ", num);
		scanf("%d", &len);

		//Store the multiplication inside a variable pow.
		int pow=1;

		//Iterate over given length, store value into pow and print
		for (int i = 1; i <= len; i++)
		{
				//Multiply and store result inside pow
				pow *= num;
				printf("%d ", pow);
				if ( i == len)//Endline for last element of the loop
						printf("\n");
		}
		return 0;
}
