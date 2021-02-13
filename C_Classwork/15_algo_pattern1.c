/*
   Classwork pattern eg:- n=5
   1234554321
   1234  4321
   123    321
   12      21
   1        1
 */

#include <stdio.h>

//function prototypes
void straight_pattern(int N);
void spaces(int No_of_spaces);
void reverse_pattern(int N);

int main()
{
		//User choice to continue the program
		char choice;
		do
		{
				//Input the limit num
				int limit_num;
				printf("Enter the limit number(min 2: max 9): ");
				scanf("%d", &limit_num);
				if ( limit_num < 2 || limit_num > 9)
				{
						printf("Error: Pattern not possible!\n");
				}
				else
				{
						int iter;
						for (iter = 0; iter<limit_num ; iter++)
						{
								straight_pattern(limit_num-iter);
								spaces(2*iter);
								reverse_pattern(limit_num-iter);
						}	
				}

						printf("Do you want to continue? (y/n): ");
						scanf("\n%c", &choice);
		}
				while (choice == 'y');
		return 0;
}

void straight_pattern(int N)
{
		for (int cnt=1; cnt <= N; cnt++)
		{
				printf("%d",cnt);
		}
		return;
}

void spaces(int No_of_spaces)
{
		for (int cnt=1; cnt <= No_of_spaces; cnt++)
		{
				printf(" ");
		}
		return;	
}

void reverse_pattern(int N)
{
		for (int cnt=N; cnt>=1; cnt--)
		{
				printf("%d", cnt);
		}
		printf("\n");
		return;
}

