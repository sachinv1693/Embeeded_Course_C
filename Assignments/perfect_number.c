/*
   Title = Perfect Number
   Name = Sachin Vaze
   Date = August 7, 2019
   Description -
   i) Input = An integer
   ii) Output = Check if sum of all the divisors of the given number is equal to given number
 */

#include <stdio.h>

int main()
{
		//User choice to continue program (y / n)
		char choice;
		do
		{
				//Input the number
				int num;
				printf("Enter the number: ");
				scanf("%d", &num);
				if (num > 0)
				{
						//Calculating all divisors' sum
						int div_sum = 0;
						//Checking divisors from 1 to given number
						for (int i = 1; i <= num; i++)
						{
								//If perfectly divisible by i then only add into the sum
								if (num % i == 0)
								{
										div_sum += i;
								}
						}
						//As per perfect num definition
						if (div_sum-num == num)
						{
								printf("This is a perfect number\n");
						}
						else
						{
								printf("This is not a perfect number\n");
						}
				}
				else
				{
						printf("Error: Please enter a positive number\n");
				}
				printf("Do you want to continue? (y/n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

