/*
   Title = Fibonacci recursive
   Name = Sachin Vaze
   Date = September 06, 2019
   Description -
   i) Input = An integer
   ii) Output = Generate fibonacci series
 */

#include <stdio.h>

//Function prototype	
void fibo_rec(int limit);
void fib(int n);

int main()
{
		//User choice to continue the program
		char choice;
		do
		{
				int limit;
				//Input limit
				printf("Enter limit: ");
				scanf("%d", &limit);
				//Printing fibonacci series
				printf("Fibonacci series: ");
				//Call the function
				fibo_rec(limit);
				printf("\n\n");
				printf("Do you want to continue? (y / n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

void fibo_rec(int limit)
{
		//Declare two static integers to store previous and next value
		static int prev = 0, next = 1;
		//Base case: return on exceeding the limit
		if (prev > limit && limit >= 0 || next * -1 < limit && limit < 0)
		{
				prev = 0; next = 1;
				return;
		}
		else//Recursive case
		{
				//Limit entry is non-negative
				if (limit >= 0)
				{//Print prev value and adjust the prev and next values
						printf("%d  ", prev);
						next += prev;
						prev = next - prev;
				}
				else
				{//Limit entry is negative
						//Printing 0
						if (prev == 0)
						{
								printf("0  ");
						}
						if (next >= limit)
						{
								//Print next value
								printf("%d  ", next);
						}
						//Adjust the prev and next values
						next = prev - next;
						prev -= next;
				}
				//Recursive function call
				fibo_rec(limit);
		}
}

