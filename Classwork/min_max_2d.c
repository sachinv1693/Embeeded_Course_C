#include <stdio.h>

int main()
{
		int rows, cols;
		printf("Enter no. of rows: ");
		scanf("%d", &rows);
		printf("Enter no. of cols: ");
		scanf("%d", &cols);
		int a[rows][cols];
		for (int i = 0; i < rows; i++)
		{
				for (int j = 0; j < cols; j++)
				{
						printf("Enter row %d col %d: ", i, j);
						scanf("%d", &a[i][j]);
				}
		}
		int min, max;
		min = max = a[0][0];
		for (int i = 0; i < rows; i++)
		{
				for (int j = 0; j < cols; j++)
				{
						if (a[i][j] < min)
							min = a[i][j];
						else if (a[i][j] > max)
								max = a[i][j];
				}
		}
		printf("Min = %d, Max = %d\n", min, max);
		return 0;
}

