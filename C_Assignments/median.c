/*
   Title = Find Median of 2 unsorted arrays
   Name = Sachin Vaze
   Date = August 22, 2019
   Description - 
   i) Input = 2 Array lengths and array elements
   ii) Output = Calculate and display the medians of the 2 arrays
 */

#include <stdio.h>

int main()
{
		//User choice to continue the program (y / n)
		char choice;
		do
		{
				//Input lengths of the arrays
				int len1, len2;
				printf("Enter the length of array1: ");
				scanf("%d", &len1);
				if (len1 > 0)//Validate len1
				{
						printf("Enter the length of array2: ");
						scanf("%d", &len2);
						if (len2 > 0)//Validate len2
						{
								int arr1[len1], arr2[len2];
								printf("\n");
								//Fill up array 1
								printf("Enter elements of array1-\n\n");
								for (int i = 0; i < len1; i++)
								{
										printf("Enter element %d: ", i + 1);
										scanf("%d", &arr1[i]);
								}
								printf("\n");
								//Fill up array 2
								printf("Enter elements of array2-\n\n");;
								for (int i = 0; i < len2; i++)
								{
										printf("Enter element %d: ", i + 1);
										scanf("%d", &arr2[i]);
								}
								//Sorting array 1
								int temp;
								for (int j = 0; j < len1 - 1; j++)
								{
										for (int k = j + 1; k < len1; k++)
										{
												if (arr1[j] > arr1[k])
												{
														temp = arr1[j];
														arr1[j] = arr1[k];
														arr1[k] = temp;
												}
										}
								}
								//Display sorted array1
								printf("\nDisplaying sorted array 1-\n");
								for(int d = 0; d < len1; d++)
								{
										printf("%d ", arr1[d]);
								}
								//Sorting array 2
								for (int l = 0; l < len2 - 1; l++)
								{
										for (int m = l + 1; m < len2; m++)
										{
												if (arr2[l] > arr2[m])
												{
														temp = arr2[l];
														arr2[l] = arr2[m];
														arr2[m] = temp;
												}
										}
								}
								//Display sorted array2
								printf("\nDisplaying sorted array 2-\n");
								for(int c = 0; c < len2; c++)
								{
										printf("%d ", arr2[c]);
								}
								//Median calculation
								float med, med1, med2;
								if (len1 % 2 == 0)
								{
										med1 = (arr1[(len1 / 2) -1] + arr1[len1 / 2]) / 2.0;
								}
								else
								{
										med1 = arr1[len1 / 2];
								}
								if (len2 % 2 == 0)
								{
										med2 = (arr2[(len2 / 2) - 1] + arr2[len2 / 2]) / 2.0;
								}
								else
								{
										med2 = arr2[len2 / 2];
								}
								printf("\nMedian of array 1: %f", med1);
								printf("\nMedian of array 2: %f", med2);

								med = (med1 + med2) / 2.0;
								printf("\nThe median of the given arrays is: %f\n\n", med);

						}
						else
						{
								//len2 is less than 1
								printf("Error: Array2 length should be greater than 0\n");
						}
				}
				else
				{
						//len1 is less than 1
						printf("Error: Array1 length should be greater than 0\n");
				}
				printf("Do you want to continue? (y/n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

