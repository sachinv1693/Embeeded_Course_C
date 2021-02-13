/*
   Title = Which day
   Name = Sachin Vaze
   Date = August 8, 2019
   Description = i) Input = Starting day of the year and nth day of the year
   ii) Output = Print which is the nth day
 */

#include <stdio.h>

int main()
{
		//User choice to continue the program (y / n) 
		char choice;
		do
		{
				//Input the number
				int start_day, day_n;
				//Displaying the days of week
				printf("-------Days of week-------\
								\n1. Sunday\
								\n2. Monday\
								\n3. Tuesday\
								\n4. Wednesday\
								\n5. Thursday\
								\n6. Friday\
								\n7. Saturday\n");
				printf("Enter the starting day of the year(1-7): ");
				scanf("%d", &start_day);
				//Check valid entry for the starting day
				if (start_day < 1 || start_day > 7)
				{
						printf("Invalid entry, please enter starting day between 1-7\n");
				}
				else
				{
						printf("Enter the nth day of the year: ");
						scanf("%d", &day_n);
						//Check valid entry for nth day
						if (day_n < 1 || day_n > 365)
						{
								printf("Invalid entry, please enter nth day between 1-365\n");
						}
						else
						{
								//Calculating day of the year
								switch ((start_day + day_n - 1) % 7)
								{
										case 1: printf("Day number %d is Sunday\n", day_n);
												break;
										case 2: printf("Day number %d is Monday\n", day_n);
												break;
										case 3: printf("Day number %d is Tuesday\n", day_n);
												break;
										case 4: printf("Day number %d is Wednesday\n", day_n);
												break;
										case 5: printf("Day number %d is Thursday\n", day_n);
												break;
										case 6: printf("Day number %d is Friday\n", day_n);
												break;
										default:printf("Day number %d is Saturday\n", day_n);
												break;
								}
						}
				}
				printf("Do you want to continue?(y/n): ");
				//To fetch character other than "\n"
				//We can also use getchar();
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

