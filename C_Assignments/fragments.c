/*
   Title = RSCD sort array
   Name = Sachin Vaze
   Date = October 15, 2019
   Description -
   i) Input = Row, Columns, array elements
   ii) Output = Display sorted array based on average value of every array
*/

#include <stdio.h>
#include <stdlib.h>//For calloc

//Function prototype	
void print_arrays(float** arr, int rows, int col_indexer[]);
void sort_arrays(float** arr, int rows, int col_indexer[]);

int main()
{
		char choice;//User choice to continue the program ( y / n)
		do
		{
				int no_of_rows, no_of_cols;
				//Input number of rows
				printf("\nEnter number of arrays: ");
				scanf("%d", &no_of_rows);
				if (no_of_rows > 1)
				{
						float* arr[no_of_rows];
						int col_indexer[no_of_rows];
						printf("\n------------Fill up the float arrays-------------\n");
						for (int i = 0; i < no_of_rows; i++)
						{
								float total = 0;
								printf("\n-------Array %d--------\n", i + 1);
								printf("Enter no. of elements for Array %d: ", i + 1);
								scanf("%d", &no_of_cols);
								col_indexer[i] = no_of_cols;
								if (no_of_cols < 1)
								{
										printf("Error: Each array should contain at least 1 element\n");
										goto to_continue;
								}
								arr[i] = malloc((no_of_cols + 1) * sizeof(float));
								int j;
								for (j = 0; j < no_of_cols; j++)
								{
										printf("Enter element-%d: ", j + 1);
										scanf("%f", &arr[i][j]);
										total += arr[i][j];
								}
								arr[i][j] = total / no_of_cols;
						}
						printf("\n----------------The given arrays------------------\n");
						print_arrays((float**)arr, no_of_rows, col_indexer);
						sort_arrays((float**)arr, no_of_rows, col_indexer);
						printf("\n--------------After sorting arrays----------------\n");
						print_arrays((float**)arr, no_of_rows, col_indexer);
						//free dynamically allocated memory
						for (int i = 0; i < no_of_rows; i++)
						{
								free(arr[i]);
						}
				}
				else//Invalid no. of rows
				{
						printf("Error: Invalid Input. There should be minimum 2 arrays\n");
				}
to_continue:
				printf("\nDo you want to continue? (y / n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

void print_arrays(float** arr, int rows, int col_indexer[])
{
		for (int i = 0; i < rows; i++)
		{
				printf("\nArray %d: ", i + 1);
				for (int j = 0; j < col_indexer[i] + 1; j++)
				{
						printf("%.2f\t", arr[i][j]);//Keeping proper spacing & 5 digits right aligned
				}
				printf("\n");
		}
}

void sort_arrays(float** arr, int rows, int col_indexer[])
{
		for (int i = 0; i < rows - 1; i++)
		{
				for (int j = i + 1; j < rows; j++)
				{
						if (arr[i][col_indexer[i]] > arr[j][col_indexer[j]])
						{
								float* temp = arr[i];
								arr[i] = arr[j];
								arr[j] = temp;
								int save = col_indexer[i];
								col_indexer[i] = col_indexer[j];
								col_indexer[j] = save;
						}
				}
		}
}

