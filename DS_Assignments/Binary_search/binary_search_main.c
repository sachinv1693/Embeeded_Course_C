#include "binary_search.h"

int main()
{
		char choice;
		data_t opt, data, size, key;
		do
		{
				printf("\nEnter the size of array: ");
				scanf("%d", &size);
				if (size >= 2)
				{
						data_t arr[size];
						printf("\n----Fill up the array in ascending order----\n");
						for (int i = 0; i < size; i++)
						{
								printf("Enter element at index %d: ", i);
								scanf("%d", &arr[i]);
								if (i && (arr[i] < arr[i - 1]))
								{
										printf("Sorry! Array elements should be in ascending order!\n\n");
										goto to_continue;
								}
						}
						printf("\nEnter the key to be searched: ");
						scanf("%d", &key);
						printf("\n-------Choose a method for searching-------\
										\n1. Iterative Binary Search\
										\n2. Recursive Binary Search\
										\nPlease select your option: ");
						scanf("%d", &opt);
						switch (opt)
						{
								case 1://Iterative method
										if (!search_iterative(arr, size, key))
										{
												printf("\nKey was not found!\n\n");
										}
										break;
								case 2://Recursive method
										if (!search_recursive(arr, 0, size - 1, key))
										{
												printf("\nkey was not found!\n\n");
										}
										break;
								default://Invalid option
										printf("Error: Invalid option.\n\n");
						}
				}
				else
				{
						printf("Error: Array should contain at least 2 elements.\n\n");
				}
to_continue:
				printf("Do you want to continue (y / n)? ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

