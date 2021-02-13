/*
   Title = Average
   Name = Sachin Vaze
   Date = October 11, 2019
   Description - 
   i) Input = 
   ii) Output = Display the mean of given array elements using only 1 function
 */

#include <stdio.h>
#include <stdlib.h>//Required for atoi() function
#include <string.h>

int main(int argc, char** argv, char** env)
{
		char choice;
		do
		{
		int opt;//User option from given menu
		printf("-------Options-------\
						\n1. Scan from keyboard\
						\n2. Proceed with command line arguments\
						\n3. Proceed with environment variable arguments\
						\nPlease select an option: ");
		scanf("%d", &opt);
		//If opt is in valid reange, ask to fill up the array
		//In order to declare specific type of arrays inside case statement, use {..} for each case, otherwise datatype use is not allowed inside case label
		switch (opt)
		{
				case 1://scan from keyboard
						{
								int size;
								float sum = 0;
								printf("\n----Fill up the array----\n");
								printf("Enter the no. of array elements: ");
								scanf("%d", &size);
								int arr[size];
								for (int i = 0; i < size; i++)
								{
										printf("Enter elememt %d: ", i + 1);
										scanf("%d", &arr[i]);
										sum += arr[i];
								}
								printf("\nMean of the array elements is: %f\n\n", sum / size);//Function call							
								break;
						}
				case 2://command line arguments
						{
								if (argc > 1)
								{
										float sum = 0;
										for (int i = 1; i < argc; i++)
										{
												sum += atoi((const char*) argv[i]);
										}
										printf("\nMean of the array elements is: %f\n\n", sum / (argc - 1));//Function call
								}
								else
								{
										printf("Error: No command line arguments passed. Please pass at least 1 argument\n\n");
								}							
								break;
						}
				case 3://environmental variable
						{
								printf("\n---Looking for environmental variable named 'ARR'---\n\n");
								char* array = getenv("ARR");
								if (array)
								{
										printf("'ARR' is found!\n\n");
										float sum = 0;
										int count;
										char* token = strtok(array, ", ");
										while (token != NULL && *token != '\0')
										{
												sum += atoi((const char*)token);
												token = strtok(NULL, ", ");
												count++;
										}
										printf("Average of array elements is: %f\nYou may remove the variable 'ARR' using unset command.\n\n", sum / count);
								}
								else
								{
										printf("Error: The environmental variable 'ARR' is not found.\nIt's expected that you have set 'ARR' using export command. eg:- export ARR=\"10, 20, 30\". Make sure you do this & try again.\n\n");
								}
								break;
						}
				default://Invalid
						printf("\nError: Invalid option selected!\n\n");
						return 0;
		}
		printf("Do you want to continue? (y / n): ");
		scanf("\n%c", &choice);
		}while(choice == 'y');
}

