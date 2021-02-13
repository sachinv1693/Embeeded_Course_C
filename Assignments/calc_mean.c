/*
   Title = Calculate mean of array elements
   Name = Sachin Vaze
   Date = September 26, 2019
   Description - 
   i) Input = Array size as command line argument, type of array & its elements
   ii) Output = Display the mean of given array elements using only 1 function
 */

#include <stdio.h>
#include <stdlib.h>//Required for atoi() function

double calc_mean(void* arr, int arr_size, int type_code);

int main(int argc, char** argv)
{
		//If there is no argument, "./a.out" acts as 1 argument, so there is no character to parse into int, so keep size as 0. Otherwise parse user's argument into integer size
		int size = (argc != 1) ? atoi((const char*) argv[1]): 0;
		if (argc == 2 && size >= 2)//Exactly 2 arguments required to proceed
		{
				int opt;//User option for data type menu
				printf("-------Data types-------\
								\n1. int\
								\n2. float\
								\n3. double\
								\n4. long\
								\n5. short\
								\nPlease select your choice: ");
				scanf("%d", &opt);
				//If opt is in valid reange, ask to fill up the array
				(opt >=1 && opt <= 5) ? printf("\n----Fill up the array----\n"): opt;
				//In order to declare specific type of arrays inside case statement, use {..} for each case, otherwise datatype use is not allowed inside case label
				switch (opt)
				{
						case 1://int
								{
										int arr[size];
										for (int i = 0; i < size; i++)
										{
												printf("Enter elememt %d: ", i + 1);
												scanf("%d", &arr[i]);
										}
										printf("\nMean of the array elements is: %lf\n\n", calc_mean(arr, size, 1));//Function call							
								break;
								}
						case 2://float
								{
										float arr[size];
										for (int i = 0; i < size; i++)
										{
												printf("Enter elememt %d: ", i + 1);
												scanf("%f", &arr[i]);
										}
										printf("\nMean of the array elements is: %lf\n\n", calc_mean(arr, size, 2));//Function call							
										break;
								}
						case 3://double
								{
										double arr[size];
										for (int i = 0; i < size; i++)
										{
												printf("Enter elememt %d: ", i + 1);
												scanf("%lf", &arr[i]);
										}
										printf("\nMean of the array elements is: %lf\n\n", calc_mean(arr, size, 3));//Function call							
										break;
								}
						case 4://long
								{
										long arr[size];
										for (int i = 0; i < size; i++)
										{
												printf("Enter elememt %d: ", i + 1);
												scanf("%ld", &arr[i]);
										}
										printf("\nMean of the array elements is: %lf\n\n", calc_mean(arr, size, 4));//Function call							
										break;
								}
						case 5://short
								{
										short arr[size];
										for (int i = 0; i < size; i++)
										{
												printf("Enter elememt %d: ", i + 1);
												scanf("%hd", &arr[i]);
										}
										printf("\nMean of the array elements is: %lf\n\n", calc_mean(arr, size, 5));//Function call							
										break;
								}
						default://Invalid
								printf("\nError: Invalid option selected!\n\n");
				}

		}
		else
		{//Error message
				printf("Error: Invalid command line arguments! Please pass exactly 1 argument as array size which should be at least 2.\n\n");
		}
		return 0;
}

double calc_mean(void* arr, int arr_size, int type_code)
{
		//Based on type_code, we analyse which data type is used
		//Store addition of all array elements and return double value of mean
		//Since we have void pointer, indexer i should be multipled by size of datatype while dereferencing.
		if (type_code == 1)
		{
				int sum = 0;
				for(int i = 0; i < arr_size; i++)
				{
						sum += *(int*)(arr + i * sizeof(int));				
				}
				return (double) sum / (arr_size);
		}
		else if (type_code == 2)
		{
				float sum = 0;
				for(int i = 0; i < arr_size; i++)
				{
						sum += *(float*)(arr + i * sizeof(float));				
				}
				return (double) sum / (arr_size);
		}
		else if (type_code == 3)
		{
				double sum = 0;
				for(int i = 0; i < arr_size; i++)
				{
						sum += *(double*)(arr + i * sizeof(double));				
				}
				return sum / (arr_size);
		}
		else if (type_code == 4)
		{
				long sum = 0;
				for(int i = 0; i < arr_size; i++)
				{
						sum += *(long*)(arr + i * sizeof(long));				
				}
				return (double) sum / (arr_size);
		}
		else
		{
				short sum = 0;
				for(int i = 0; i < arr_size; i++)
				{
						sum += *(short*)(arr + i * sizeof(short));				
				}
				return (double) sum / (arr_size);
		}
}

