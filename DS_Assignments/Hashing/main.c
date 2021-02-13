#include "main.h"

int main()
{
		//Create an array of structure Hast_t
		Hash_t a[SIZE];
		data_t data, opt;//data entry, user option
		char ch;//User choice to continue program
		//Let's create a hash table
		printf("\n------Creating Hash Table of %d entries (index 0 to %d)-----\n", SIZE, SIZE - 1);
		for (data_t i = 0; i < SIZE; i++)
		{
				a[i].key = i;//Key i.e. index
				a[i].value = -1;//Initialize all values to -1
				a[i].link = NULL;//Initialize each node's link to NULL
		}
		printf("------------Hash Table is successfully created------------\n");
		do
		{
				printf("\n--------------------Perform oerations---------------------\
								\n1. Insert element\
								\n2. Delete element\
								\n3. Search element\
								\n4. Delete Hash table\
								\n5. Print Hash table\
								\nPlease select your choice: ");
				scanf("%d", &opt);
				switch (opt)
				{
						case 1://Insert element
								printf("\nEnter a non-negative data: ");
								scanf("%d", &data);
								if ((data >= 0) && insert_element(a, data))
								{
										printf("\nSuccessfully inserted %d in the Hash table.\n\n", data);
								}
								else
								{
										printf("\nFailed to insert %d in the Hash table.\n\n", data);
								}
								break;
						case 2://Delete element
								printf("\nEnter the data to be deleted: ");
								scanf("%d", &data);
								if (delete_element(a, data))
								{
										printf("\nSuccessfully deleted %d from the Hash table.\n\n", data);
								}
								else
								{
										printf("Cannot perform this operation!\n\n");
								}
								break;
						case 3://Search element
								printf("\nEnter the data to be searched: ");
								scanf("%d", &data);
								if (!search_element(a, data))
								{
										printf("\n%s\n\n", DATA_NOT_FOUND);
								}
								break;
						case 4://Delete Hash table
								if (delete_hash_table(a))
								{
										printf("\nSuccessfully deleted all the entries in the Hash table.\n\n");
								}
								else
								{
										printf("\nCannot perform this operation.\n\n");
								}
								break;
						case 5://Print Hash table
								printf("\n-----Printing the Hash table-----\n");
								print_hash_table(a);
								printf("\n");
								break;
						default://Invalid option
								printf("Error: Invalid option selected!\n\n");
				}
				printf("Do you want to continue the program? (y / n): ");
				scanf("\n%c", &ch);
		} while (ch == 'y');
		return 0;
}

