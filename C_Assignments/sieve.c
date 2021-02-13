/*
   Title = Find Prime numbers using Sieve of eranthosthenes method
   Name = Sachin Vaze
   Date = August 23, 2019
   Description -
   i) Input = limit number
   ii) Output = Print prime numbers
 */

#include <stdio.h>
#include <math.h>

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

				if (num >= 2 && num < pow(2, 20))//Vaild range
				{
						//Fill up initial array from 2-lim_num
						int arr[num - 1];
						printf("\nRange of numbers to be evaluated -\n");
						for (int i = 2; i <= num; i++)
						{
								arr[i - 2] = i;
								printf("%d ", arr[i - 2]);
						}
						// printf("\n");
						//Convert all even numbers except 2 into 0s and printing them
						//printf("\nConverting all even numbers except 2 into 0s -\n");
						for (int j = 0; j < num - 1; j++)
						{
								if (arr[j] != 2 && arr[j] % 2 == 0)
								{
										arr[j] = 0;
								}
								//printf("%d ", arr[j]);
						}
						printf("\n\n");	
						//Convert all numbers divisble by 3 except 3 into 0s and printing them
						//printf("\nConverting all numbers divisible by 3 except 3 into 0s -\n");
						for (int j = 0; j < num - 1; j++)
						{
								if (arr[j] != 3 && arr[j] % 3 == 0)
								{
										arr[j] = 0;
								}
								//printf("%d ", arr[j]);
						}
						//printf("\n\n");	
						//Convert all numbers divisible by 5 except 5 into 0s and printing them
						//printf("\nConverting all numbers divisible by 5 except 5 into 0s -\n");
						for (int j = 0; j < num - 1; j++)
						{
								if (arr[j] != 5 && arr[j] % 5 == 0)
								{
										arr[j] = 0;
								}
								//printf("%d ", arr[j]);
						}
						//printf("\n\n");	
						//Convert all numbers divisible by 7 except 7 into 0s and printing them
						//printf("\nConverting all numbers divisible by 7 except 7 into 0s -\n");
						for (int j = 0; j < num - 1; j++)
						{
								if (arr[j] != 7 && arr[j] % 7 == 0)
								{
										arr[j] = 0;
								}
								//printf("%d ", arr[j]);
						}
						//printf("\n");
						//Now we are left with only prime numbers within given limit
						printf("The prime numbers in the given limit -\n");
						for (int k = 0; k < num-1; k++)
						{
								if (arr[k] != 0)
								{
										printf("%d ", arr[k]);
								}
						}
						printf("\n\n");
				}
				else
				{
						//number exceeds the expected range
						printf("Error: Enter the number in the range 2-2^20\n\n");
				}
				printf("Do you want to continue? (y/n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

