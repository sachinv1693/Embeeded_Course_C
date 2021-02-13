#include <stdio.h>
#include "slist_struct.h"

int main()
{
		Slist* head = NULL;
		char choice;
		data_t opt, data, node_number;
		do
		{
				printf("-------Menu-------\
								\n1. Insert at last\
								\n2. Swap two elements\
								\n3. Print list\
								\nPlease select your option: ");
				scanf("%d", &opt);
				switch (opt)
				{
						case 1://Insert at last node
								printf("\nEnter the integer data: ");
								scanf("%d", &data);
								if (insert_at_last(&head, data))
								{
										printf("Data insertion successful!\n\n");
								}
								else
								{
										printf("Data insertion failed!\n\n");
								}
								break;
						case 2://Swap two elements
								if (head)
								{
										if (swap_two_elements(&head))
												printf("\nSuccessfully performed this operation!\n\n");
										else
												printf("\nFailed to perform this operation!\n\n");
								}
								else
										printf("\n%s\nFailed to perform this operation\n\n", LIST_IS_EMPTY);
								break;
						case 3://Print list
								if (head)
										print_list(head);
								else
										printf("\n%s\n\n", LIST_IS_EMPTY);
								break;
						default://Invalid option
								printf("Error: Invalid option.\n\n");
				}
				printf("Do you want to continue (y / n)? ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

