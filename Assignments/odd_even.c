/*
   Title = Odd-Even Number
   Name = Sachin Vaze
   Date = August 7, 2019
   Description -
   i) Input = An integer
   ii) Output = Tell whether the number is even-odd and positive-negative
 */

#include <stdio.h>

int main()
{
		//User choice to continue program (y/n)
		char choice;
		do
		{
				//Input the number
				int num;
				printf("Enter the number: ");
				scanf("%d", &num);

				if (num > 0)//positive
				{
						//modulo  by 2 is 0
						if (num % 2 == 0)
						{
								printf("Number is positive even\n");
						}
						else
						{
								//modulo by two is 1
								printf("Number is positive odd\n");
						}
				}
				else if (num < 0)//negative
				{ 
						//modulo by 2 is 0
						if (num%2 == 0)
						{
								printf("Number is negative even\n");
						}
						else
						{
								//modulo by 2 is 1
								printf("Number is negative odd\n");
						}
				}
				else
				{
						//number is zero
						printf("Number is neither positive nor negative\n");
				}
				printf("Do you want to continue? (y/n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

