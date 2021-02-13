/*
   Title = Fibonacci
   Name = Sachin Vaze
   Date = August 7, 2019
   Description - 
   i) Input = An integer
   ii) Output = Print fibonacci series till given number
 */

#include <stdio.h>

int main()
{
		//User choice to continue the program (y / n)
		char choice;
		do
		{
				//Input the number
				int num, opt;
				printf("Enter the limit of fibonacci pattern: ");
				scanf("%d", &num);

				//first and second pointing to last 2 numbers of the series
				int first, second;

				if (num >= 0) //Non-negative entry
				{
						printf("------------Pattern------------\n");
						printf("1. Normal pattern: 0, 1, 1, 2, 3, 5 ...\n");
						printf("2. Differential pattern: 0, 1, -1, 2, -3, 5 ...\n");
						printf("Please select an option: ");
						scanf("%d", &opt);
						switch (opt)
						{
								case 1://Normal Pattern
										//Initial pointing positions
										first = 1;
										second = 1;
										//For input being 0
										if (num == 0)
										{
												printf("0\n");
										}
										//For input being 1
										else if (num == 1)
										{
												printf("0, 1, 1\n");
										}
										else
										{//Number is greater than 1
												//For input being more than 1
												printf("0, 1, 1,");
												for (int iter = 2; iter <= num; iter = first + second)
												{
														if (iter + second <= num)
														{
																//Print on the same line
																printf(" %d,", first + second);
														}
														else
														{
																//To move to next line for last iteration
																printf(" %d\n", first + second);
														}
														//adjust the pointers
														first = second;
														second = iter;
												}	
										}
										break;
								case 2://Differential pattern
										//Initial pointing positions
										first = 0;
										second = 1;
										//For input being 0
										if (num == 0)
												printf("0\n");
										//For input being 1
										else if (num == 1)
												printf("0, 1\n");
										else
										{
												//For input being more than 1
												printf("0, 1,");
												//Iterating till negation of the difference is lesser than or equal to given num
												while ((first - second) * -1 <= num)
												{
														//print first valid difference
														printf(" %d", first - second);
														if ((first - second) * -1 == num)
														{
																//If equal move to next line and break
																printf("\n");
																break;
														}
														//adjust the pointers
														second = first - second;
														first -= second;
														if ((first - second) * -1 <= num)
																if (first - second > num)
																{
																		//If greater, move to next line and break
																		printf("\n");
																		break;
																}
																else
																		//Be on the same line and print comma
																{
																		printf(",");
																}
														else
														{
																//move to next line and break
																printf("\n");
																break;
														}
												}	
										}
										break;
								default://Invalid pattern number
										printf("Invalid option selected!\n");
						}
				}
				else{//For negative entry, directly print diffenetial pattern
						//Initial pointing positions
						first = 1;
						second = -1;
						//For input being -1
						if (num == -1)
						{
								printf("0, 1, -1\n");
						}
						else
						{
								//For input being lesser than -1
								printf("0, 1, -1,");
								//iter iterates till negation of difference is greater than or equal to given num
								while ((first - second) * -1 >= num)
								{
										//print first valid difference
										printf(" %d", first - second);
										if ((first - second) * -1 == num)
										{
												//If equal then move to next line and break
												printf("\n");
												break;
										}
										//adjust the last 2 variables
										second = first - second;
										first -= second;
										if ((first - second) * -1 >= num)
										{
												if (first - second < num)
												{
														//If lesser, move to the next line and break
														printf("\n");
														break;
												}
												else
												{
														//Be on the same line and print comma
														printf(",");
												}
										}
										else
										{
												//move to the next line and break
												printf("\n");
												break;
										}
								}	
						}

				}
				printf("do you want to continue? (y/n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

