/*
   Title = AP_GP_HP
   Name = Sachin Vaze
   Date = August 7, 2019
   Description -
   i) Input = First term, difference, No. of terms
   ii) Output = Print AP, GP, HP
 */

#include <stdio.h>

int main()
{
		//User choice to continue the program (y / n)
		char choice;
		do
		{
				//Input the number
				int a, r, n;
				printf("Enter the first term: ");
				scanf("%d", &a);
				if (a > 0)
				{
				printf("Enter the difference: ");
				scanf("%d", &r);
				if (r > 0)
				{
				printf("Enter the number of terms: ");
				scanf("%d", &n);
				if (n > 0)
				{
				//Store value of 'a' for gp since it changes while calculating gp
				int gp = a;

				//We are allowed to use only one for loop

				printf("AP\tGP\tHP\n");
				printf("--------------------------\n");
				//Iterate over n
				for (int i = 1; i <= n; i++)
				{
						//Directly printing the calculated values
						printf("%d\t%d\t%f\n", /*AP formula*/ a + (i - 1) * r, /*GP display*/gp, /*HP formula*/ (1 / (float) (a + (i - 1) * r)) ); 
						//GP formula
						gp *= r;
				}
				//Move to next line
				printf("\n");
				}
				else
				{
						printf("Error: Number of terms should be positive\n");
				}
				}
				else
				{
						printf("Error: Difference should be positive\n");
				}
				}
				else
				{
						printf("Error: First term should be positive\n");
				}
				printf("Do you want to continue? (y/n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

