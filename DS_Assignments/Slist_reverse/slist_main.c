#include <stdio.h>
#include "slist_struct.h"

int main()
{
		Slist* head = NULL;
		char choice;
		data_t opt, data;
		do
		{
				printf("-------Menu-------\
								\n1. Insert at first\
								\n2. Reverse Iterative\
								\n3. Reverse Recursive\
								\n4. Print list\
								\nPlease select your option: ");
				scanf("%d", &opt);
				switch (opt)
				{
						case 1://Insert at first
								printf("\nEnter the integer data: ");
								scanf("%d", &data);
								if (insert_at_first(&head, data))
								{
										printf("Data insertion successful!\n\n");
								}
								else
								{
										printf("Data insertion failed!\n\n");
								}
								break;
						case 2://Reverse Iterative
								if (reverse_iterative(&head))
								{
										printf("Successfully reversed the linked list using iterative approach!\n\n");
								}
								else
								{
										printf("\n%s\nCannot perform this operation!\n\n", LIST_IS_EMPTY);
								}
								break;
						case 3://Reverse Recursive
								if (reverse_recursive(&head))
								{
										printf("Successfully reversed the linked list using recursive approach!\n\n");
								}
								else
								{
										printf("\n%s\nCannot perform this operation!\n\n", LIST_IS_EMPTY);
								}
								break;
						case 4://Print list
								print_list(head);
								break;
						default://Invalid option
								printf("\nError: Invalid option.\n\n");
				}
				printf("Do you want to continue (y / n)? ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

