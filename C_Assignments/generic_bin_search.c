/*
   Title = Binary search for all basic datatypes
   Name = Sachin Vaze
   Date = September 30, 2019
   Description - 
   i) Input = Array size as command line argument, type of array & its elements
   ii) Output = Display the mean of given array elements using only 1 function
 */

#include <stdio.h>
#include <string.h>//Required for using strcmp and strcpy
#include <stdio_ext.h>//Required for clearing input buffer using __fpurge
#include <stdlib.h>//Required for atoi() function

void sort_arr(void* arr, int size, int type_code, void* key);
void binary_search(void* arr, int size, int type_code, void* key);

int main(int argc, char** argv)
{
		//If there is no argument, "./a.out" acts as 1 argument, so there is no character to parse into int, so keep size as 0. Otherwise parse user's argument into integer size
		int size = (argc != 1) ? atoi((const char*) argv[1]): 0;
		if (argc == 2 && size >= 2)//Exactly 2 arguments required to proceed
		{
				int opt;//User option for data type menu
				printf("-------Data types-------\
								\n1. int\
								\n2. char\
								\n3. float\
								\n4. double\
								\n5. string\
								\nPlease select your choice: ");
				scanf("%d", &opt);
				//If opt is in valid range, ask to fill up the array
				(opt >= 1 && opt <= 5) ? printf("\n----Fill up the array----\n"): opt;
				void* key = malloc (25 * sizeof(char));//Free this after using binary_search function
				//We are asked to implement void pointer for both functions
				void (*function_caller)(void*, int, int, void*) = NULL;
				switch (opt)
				{
						case 1://int    Make sure to use {..}
								{
										int arr[size];
										for (int i = 0; i < size; i++)
										{
												printf("Enter elememt %d: ", i + 1);
												scanf("%d", &arr[i]);
										}
										printf("\n----The sorted array----\n");
										function_caller = sort_arr;
										function_caller(arr, size, 1, key);
										function_caller = binary_search;
										function_caller(arr, size, 1, key);
										break;
								}
						case 2://char   Make sure to use {..}
								{
										char arr[size];
										for (int i = 0; i < size; i++)
										{
												printf("Enter elememt %d: ", i + 1);
												scanf("\n%c", &arr[i]);
										}
										printf("\n----The sorted array----\n");
										function_caller = sort_arr;
										function_caller(arr, size, 2, key);
										function_caller = binary_search;
										function_caller(arr, size, 2, key);
										break;
								}
						case 3://float   Make sure to use {..}
								{
										float arr[size];
										for (int i = 0; i < size; i++)
										{
												printf("Enter elememt %d: ", i + 1);
												scanf("%f", &arr[i]);
										}
										printf("\n----The sorted array----\n");
										function_caller = sort_arr;
										function_caller(arr, size, 3, key);
										function_caller = binary_search;
										function_caller(arr, size, 3, key);
										break;
								}
						case 4://double  Make sure to use {..}
								{
										double arr[size];
										for (int i = 0; i < size; i++)
										{
												printf("Enter elememt %d: ", i + 1);
												scanf("%lf", &arr[i]);
										}
										printf("\n----The sorted array----\n");
										function_caller = sort_arr;
										function_caller(arr, size, 4, key);
										function_caller = binary_search;
										function_caller(arr, size, 4, key);
										break;
								}
						case 5://string    Make sure to use {..}
								{
										char* str[size];
										for (int i = 0; i < size; i++)
										{
												printf("Enter string %d: ", i + 1);
												__fpurge(stdin);
												str[i] = malloc(25 * sizeof(char));
												scanf("%[^\n]", str[i]);
										}
										printf("\n----The sorted array----\n");
										function_caller = sort_arr;
										function_caller(str, size, 5, key);
										function_caller = binary_search;
										function_caller(str, size, 5, key);
										for (int i = 0; i < size; i++)//free memory used to store the strings
										{
												free(str[i]);
										}

								}
								break;
						default://Invalid
								printf("\nError: Invalid option selected!\n\n");
				}
				free(key);
		}
		else
		{//Error message
				printf("Error: Invalid command line arguments! Please pass exactly 1 argument indicating array size which should be at least 2.\n\n");
		}
		return 0;
}

void sort_arr(void* arr, int size, int type_code, void* key)
{
		int i;
		switch (type_code)
		{
				case 1://int
						for (i = 0; i < size - 1; i++)
						{
								for (int j = i + 1; j < size; j++)
								{
										if (*(int*)(arr + i * sizeof(int)) > *(int*)(arr + j * sizeof(int)))
										{
												int temp = *(int*)(arr + i * sizeof(int));
												*(int*)(arr + i * sizeof(int)) = *(int*)(arr + j * sizeof(int));
												*(int*)(arr + j * sizeof(int)) = temp;
										}
								}
								printf("%d ", *(int*)(arr + i * sizeof(int)));
						}
						printf("%d\n", *(int*)(arr + i * sizeof(int)));
						printf("\nEnter the key: ");
						scanf("%d", (int*)(key));
						break;
				case 2://char
						for (i = 0; i < size - 1; i++)
						{
								for (int j = i + 1; j < size; j++)
								{
										if (*(char*)(arr + i * sizeof(char)) > *(char*)(arr + j * sizeof(char)))
										{
												char temp = *(char*)(arr + i * sizeof(char));
												*(char*)(arr + i * sizeof(char)) = *(char*)(arr + j * sizeof(char));
												*(char*)(arr + j * sizeof(char)) = temp;
										}
								}
								printf("%c ", *(char*)(arr + i * sizeof(char)));
						}
						printf("%c\n", *(char*)(arr + i * sizeof(char)));
						printf("\nEnter the key: ");
						scanf("\n%c", (char*)(key));
						break;
				case 3://float
						for (i = 0; i < size - 1; i++)
						{
								for (int j = i + 1; j < size; j++)
								{
										if (*(float*)(arr + i * sizeof(float)) > *(float*)(arr + j * sizeof(float)))
										{
												float temp = *(float*)(arr + i * sizeof(float));
												*(float*)(arr + i * sizeof(float)) = *(float*)(arr + j * sizeof(float));
												*(float*)(arr + j * sizeof(float)) = temp;
										}
								}
								printf("%f ", *(float*)(arr + i * sizeof(float)));
						}
						printf("%f\n", *(float*)(arr + i * sizeof(float)));
						printf("\nEnter the key: ");
						scanf("%f", (float*)(key));
						break;
				case 4://double
						for (i = 0; i < size - 1; i++)
						{
								for (int j = i + 1; j < size; j++)
								{
										if (*(double*)(arr + i * sizeof(double)) > *(double*)(arr + j * sizeof(double)))
										{
												double temp = *(double*)(arr + i * sizeof(double));
												*(double*)(arr + i * sizeof(double)) = *(double*)(arr + j * sizeof(double));
												*(double*)(arr + j * sizeof(double)) = temp;
										}
								}
								printf("%lf ", *(double*)(arr + i * sizeof(double)));
						}
						printf("%lf\n", *(double*)(arr + i * sizeof(double)));
						printf("\nEnter the key: ");
						scanf("%lf", (double*)(key));
						break;
				default://string
						{
								__fpurge(stdin);
								char* temp_str = malloc(25 * sizeof(char));//temporary string for swapping
								for (i = 0; i < size - 1; i++)
								{
										for (int j = i + 1; j < size; j++)//Compare strings and swap them to sort in ascending order
										{//We need to typecast the inner pointer to (int**) before dereferencing it because it is an address
												if (strcmp((const char*)(*(int**)(arr + i * sizeof(char*))), (const char*)(*(int**)(arr + j * sizeof(char*)))) > 0)
												{
														strcpy(temp_str, (const char*)(*(int**)(arr + i * sizeof(char*))));//return addr from strcpy is not needed
														strcpy((char*)(*(int**)(arr + i * sizeof(char*))), (const char*)(*(int**)(arr + j * sizeof(char*))));
														strcpy((char*)(*(int**)(arr + j * sizeof(char*))), (const char*)temp_str);
												}
										}
										printf("%s\n", (char*)(*(int**)(arr + i * sizeof(char*))));
								}
								printf("%s\n", (char*)(*(int**)(arr + i * sizeof(char*))));
								printf("\nEnter the key: ");
								scanf("%[^\n]", (char*)(key));
								free(temp_str);//free memory allocated for temporary string
						}
						break;
		}
}

void binary_search(void* arr, int size, int type_code, void* key)
{
		int index, lower_lim = 0, upper_lim = (size - 1), found = 0;//found flag to know if key is found or not
		switch (type_code)
		{
				case 1://int
						while (lower_lim != upper_lim)
						{
								index = (lower_lim + upper_lim) / 2;//Assign index with middle of the sorting section
								int element = *(int*)(arr + index * sizeof(int));
								if (element == *(int*)key)//If key is found at the index
								{
										found = 1;
										break;
								}
								else if (*(int*)key < element)//If key is smaller
										upper_lim = index;//shift the upper limit to index, if persisted, upper limit becomes 0 which is equal to lower limit
								else if (lower_lim != index)//If key is larger and lower limit is not already at index
										lower_lim = index;//shift lower limit to index value
								else
								{//lower limit is at upper limit - 1
										if (*(int*)key == *(int*)(arr + upper_lim * sizeof(int)))
										{
												found = 1;
												index = upper_lim;
										}
										break;
								}
						}
						break;
				case 2://char
						while (lower_lim != upper_lim)
						{
								index = (lower_lim + upper_lim) / 2;
								char element = *(char*)(arr + index * sizeof(char));
								if (element == *(char*)key)
								{
										found = 1;
										break;
								}
								else if (*(char*)key < element)
										upper_lim = index;
								else if (lower_lim != index)
										lower_lim = index;
								else
								{
										if (*(char*)key == *(char*)(arr + upper_lim * sizeof(char)))
										{
												found = 1;
												index = upper_lim;
										}
										break;
								}
						}
						break;
				case 3://float
						while (lower_lim != upper_lim)
						{
								index = (lower_lim + upper_lim) / 2;
								float element = *(float*)(arr + index * sizeof(float));
								if (element == *(float*)key)
								{
										found = 1;
										break;
								}
								else if (*(float*)key < element)
										upper_lim = index;
								else if (lower_lim != index)
										lower_lim = index;
								else
								{
										if (*(float*)key == *(float*)(arr + upper_lim * sizeof(float)))
										{
												found = 1;
												index = upper_lim;
										}
										break;
								}
						}
						break;
				case 4://double
						while (lower_lim != upper_lim)
						{
								index = (lower_lim + upper_lim) / 2;
								double element = *(double*)(arr + index * sizeof(double));
								if (element == *(double*)key)
								{
										found = 1;
										break;
								}
								else if (*(double*)key < element)
										upper_lim = index;
								else if (lower_lim != index)
										lower_lim = index;
								else
								{
										if (*(double*)key == *(double*)(arr + upper_lim * sizeof(double)))
										{
												found = 1;
												index = upper_lim;
										}
										break;
								}
						}
						break;
				default://string
						while (lower_lim != upper_lim)
						{
								index = (lower_lim + upper_lim) / 2;
								int compare = strcmp((const char*)(*(int**)(arr + index * sizeof(char*))), (const char*)(key));
								if (compare == 0)
								{
										found = 1;
										break;
								}
								else if (compare > 0)
										upper_lim = index;
								else if (lower_lim != index)
										lower_lim = index;
								else
								{
										if (strcmp((const char*)(*(int**)(arr + upper_lim * sizeof(char*))), (const char*)(key)) == 0)
										{
												found = 1;
												index = upper_lim;
										}
										break;
								}
						}
		}//If key is found, return its index
		(found) ? printf("The given key is found at index %d of the sorted array\n\n", index) : printf("The given key is not found\n\n");
}

