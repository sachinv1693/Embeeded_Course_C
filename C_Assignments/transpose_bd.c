/*
   Title = Transpose
   Name = Sachin Vaze
   Date = October 10, 2019
   Description -
   i) Input = Row, column and matrix elements
   ii) Output = Display the transpose of the matrix & matrix multiplication
 */

#include <stdio.h>
#include <stdlib.h>//For malloc, calloc, free

//Function prototype	
void print_matrix(int** mat, int rows, int cols);
void transpose(int** matrix_tr, int** matrix, int rows, int cols);
void multiply(int** mult, int** matrix, int** matrix_tr, int rows, int cols);

int main()
{
		char choice;//User choice to continue the program ( y / n)
		do
		{
				int no_of_rows, no_of_cols;
				//Input number of rows
				printf("\nEnter number of rows: ");
				scanf("%d", &no_of_rows);
				if (no_of_rows > 0)//Validity check for no. of rows
				{
						//Input number of cols
						printf("Enter number of colums: ");
						scanf("%d", &no_of_cols);
						if (no_of_cols > 0)//Validity check for no. of cols
						{
								int** matrix;//matrix in both dynamic(BD) form
								matrix = malloc(no_of_rows * sizeof(int));
								printf("\n-----------Fill up the integer matrix------------\n");
								for(int i = 0; i < no_of_rows; i++)
								{
										matrix[i] = malloc(no_of_cols * sizeof(int));//Holding the address of starting address of each rows
										for (int j = 0; j < no_of_cols; j++)
										{
												printf("Enter row-%d col-%d: ", i + 1, j + 1);
												scanf("%d", &matrix[i][j]);
										}
								}
								printf("\n----------------The given matrix-----------------\n");
								print_matrix(matrix, no_of_rows, no_of_cols);
								int** matrix_tr;//transpose matrix in BD form
								matrix_tr = malloc(no_of_cols * sizeof(int));
								transpose(matrix_tr, matrix, no_of_rows, no_of_cols);
								printf("\n------------Transpose of the matrix--------------\n");
								print_matrix(matrix_tr, no_of_cols, no_of_rows);
								printf("\n---Multiplying given matrix with its transpose---\n");
								int** mult_matrix;//Store multiplication vector in BD form which will be of the form row x row
								mult_matrix = malloc(no_of_rows * sizeof(int));
								multiply(mult_matrix, matrix, matrix_tr, no_of_rows, no_of_cols);
								print_matrix(mult_matrix, no_of_rows, no_of_rows);
						}
						else//Invalid no. of cols
						{
								printf("Error: Invalid Input. There should be minimum 1 column\n");
						}
				}
				else//Invalid no. of rows
				{
						printf("Error: Invalid Input. There should be minimum 1 row\n");
				}
				printf("\nDo you want to continue? (y / n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

void print_matrix(int** mat, int rows, int cols)
{
		for (int i = 0; i < rows; i++)
		{
				for (int j = 0; j < cols; j++)
				{
						printf("%5d\t", mat[i][j]);//Keeping proper spacing & 5 digits right aligned
				}
				printf("\n");
		}
}

void transpose(int** matrix_tr, int** matrix, int rows, int cols)
{
		//rows and cols are interchanged in transpose
		for (int i = 0; i < cols; i++)
		{
				matrix_tr[i] = malloc(rows * sizeof(int));
				for (int j = 0; j < rows; j++)
				{
						matrix_tr[i][j] = matrix[j][i];
				}
		}
}

void multiply(int** mult, int** matrix, int** matrix_tr, int rows, int cols)
{
		for (int k = 0; k < rows; k++)
		{
				//let's use calloc as it will initialize the memory with 0s
				mult[k] = calloc(rows, sizeof(int));
				for (int i = 0; i < rows; i++)
				{
						for (int j = 0; j < cols; j++)
						{
								mult[k][i] += matrix[k][j] * matrix_tr[j][i];
						}
				}
		}
}

