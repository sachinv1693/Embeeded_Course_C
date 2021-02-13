/*
   Title = NRPS
   Name = Sachin Vaze
   Date = October 25, 2019
   Description - 
   i) Input = Number of characters, length of string and those many distinct characters
   ii) Output = Print a possible non repeating pattern string
*/

#include <stdio.h>
#include <stdio_ext.h>

int main()
{
		char ch;//User choice to continue the program
		do
		{
		int k, n;
		printf("Enter no. of distinct characters: ");
		scanf("%d", &k);
		if (k >= 1 && k <= 10)
		{
		printf("Enter string length: ");
		scanf("%d", &n);
		if (n >= k)
		{
				char arr[k];
				printf("Enter %d distinct characters separated by space: ", k);
				for (int i = 0; i < k; i++)
				{
						scanf(" %c", &arr[i]);
				}
				for (int j = 0; j < k; j++)
				{
						printf("%c ", arr[j]);
				}

		}
		else
		{
				printf("Error: String length cannot be less than number of characters.\n\n");
		}
		}
		else
		{
				printf("Error: Number of characters should be in the range 1 - 10\n\n");
		}
		printf("Do you want to continue? (y / n): ");
		scanf("\n%c", &ch);
		}
		while (ch == 'y');
}

