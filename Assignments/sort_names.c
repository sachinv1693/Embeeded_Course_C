/*
   Title = Sort Names
   Name = Sachin Vaze
   Date = October 03, 2019
   Description - 
   i) Input = Array size, Names
   ii) Output = Display the sorted array of names
 */

#include <stdio.h>
#include <stdlib.h>//Required for using malloc
#include <string.h>//Required for using strcmp and strcpy
#include <stdio_ext.h>//Required for clearing input buffer using __fpurge

void sort_arr(char** arr, int size);

int main()
{
		char choice;//User choice to continue the program ( y / n)
		do
		{
		int arr_size;//Input array size
		printf("Enter the no. of names you want to enter: ");
		scanf("%d", &arr_size);
		if (arr_size >= 2)//Validity check
		{
				char* arr[arr_size];//array storing pointers to different strings
				for (int i = 0; i < arr_size; i++)
				{
						__fpurge(stdin);
						printf("Enter string %d: ", i + 1);
						arr[i] = malloc(32 * sizeof(char));//String of 32 bytes is allowed
						scanf("%32[^\n]", arr[i]); 
				}
				printf("\n----The sorted array----\n");
				sort_arr(arr, arr_size);//Call the sort function
				for (int i = 0; i < arr_size; i++)//free memory used to store the strings
				{
						free(arr[i]);
				}

		}
		else
		{//Error message
				printf("Error: Minimum array size should be 2.\n\n");
		}
		printf("Do you want to continue? (y / n): ");
		scanf("\n%c", &choice);
		}
		while ( choice == 'y');
		return 0;
}

void sort_arr(char** arr, int size)
{
		int i;//iterator
		char* temp_str = malloc(32 * sizeof(char));//temperory string of 32 bytes
		for (i = 0; i < size - 1; i++)
		{
				for (int j = i + 1; j < size; j++)
				{
						//Compare strings and swap them to get ascending order. Note that we need to int** to fetch address of each string
						if (strcmp((const char*)(*(char**)(arr + i)), (const char*)(*(char**)(arr + j))) > 0)
						{//strcpy returns pointer to destination string but we are not interested in storing it anywhere
								strcpy(temp_str, (const char*)(*(char**)(arr + i)));
								strcpy((char*)(*(char**)(arr + i)), (const char*)(*(char**)(arr + j)));
								strcpy((char*)(*(char**)(arr + j)), (const char*)temp_str);
						}
				}
				printf("%s\n", (char*)(*(char**)(arr + i)));//print sorted strings in the loop
		}
		printf("%s\n\n", (char*)(*(char**)(arr + i)));//print last sorted string
		free(temp_str);//free memory allocated for temporary string
}

