#include <stdio.h>

int main()
{
		int length1;
		//Input the length of the array1
		printf("Enter the length of the array 1: ");
		scanf("%d", &length1);
		if (length1 > 0)
		{
				int arr1[length1], length2;
				printf("Enter the length of the array 2: ");
				scanf("%d", &length2);
				if (length1 == length2)
				{
						int arr2[length2];
						printf("\nEnter array 1 elements - \n");
						for (int i = 0; i < length1; i++)
						{
								printf("Enter the element no. %d: ", i + 1);
								scanf("%d", &arr1[i]);
						}
						//Checking for duplicate elements in the array 1
						for (int i = 0; i < length1 - 1; i++)
						{
								for (int j = i + 1; j < length1; j++)
								{
										if (arr1[i] == arr1[j])
										{
												printf("\nError: Duplicate elements are not allowed!\n");
												return -1;
										}
								}
						}
						printf("\nEnter the array 2 elements - \n");
						for (int i = 0; i < length2; i++)
						{
								printf("Enter the element no. %d: ", i + 1);
								scanf("%d", &arr2[i]);
						}
						//Checking for duplicate elements in the array 2
						for (int i = 0; i < length2 - 1; i++)
						{
								for (int j = i + 1; j < length2; j++)
								{
										if (arr2[i] == arr2[j])
										{
												printf("\nError: Duplicate elements are not allowed!\n");
												return -1;
										}
								}
						}
						int count = 0;
								//Checking one to one correspondence between two arrays
								for (int i = 0; i < length1; i++)
								{
										for (int j = 0; j < length1; j++)
										{
												if (arr1[i] == arr2[j])
												{
														count++;
												}
										}
								}
						if (count == length1)
						{
								printf("\nThe arrays are EQUAL\n");
						}
						else
						{
								printf("\nThe arrays are NOT EQUAL\n");
						}
				}
		else
		{
				printf("\nError: Both array lengths should be equal\n");
		}
		}
		else
		{
				printf("\nError: Array length should be positive\n");
		}

		return 0;
}
