/*
   Classwork pattern eg:- n=4
     ****
	  ***
	   **
	    *
 */

#include <stdio.h>

//function prototypes
void spaces(int N);
void stars(int N);

int main()
{
		//User choice to continue the program
		char choice;
		do
		{
				//Input the limit num
				int limit_num;
				printf("Enter the no. of lines you want to print(min 2: max 30): ");
				scanf("%d", &limit_num);
				if (limit_num < 2 || limit_num > 30)
				{
						printf("Error: Pattern not possible!\n");
				}
				else
				{
						int iter;
						for (iter = 0; iter < limit_num ; iter++)
						{
								spaces(iter);
								stars(limit_num - iter);
						}	
				}

						printf("Do you want to continue? (y/n): ");
						scanf("\n%c", &choice);
		}
				while (choice == 'y');
		return 0;
}

void spaces(int N)
{
		for (int cnt = 0; cnt < N; cnt++)
		{
				printf(" ");
		}
		return;	
}

void stars(int N)
{
		for (int cnt = 0; cnt < N; cnt++)
		{
				printf("*");
		}
		printf("\n");
		return;
}
