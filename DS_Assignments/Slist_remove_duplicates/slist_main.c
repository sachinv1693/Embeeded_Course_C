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
								\n1. Insert at first\
								\n2. Remove duplicates\
								\n3. Print list\
								\nPlease select your option: ");
				scanf("%d", &opt);
				switch (opt)
				{
						case 1://Insert at first node
								printf("\nEnter the integer data: ");
								scanf("%d", &data);
								if (insert_at_first(&head, data))
								{
										printf("\nData insertion successful!\n\n");
								}
								else
								{
										printf("\nData insertion failed!\n\n");
								}
								break;
						case 2://Remove Duplicates
								if (remove_duplicates(&head))
								{
										printf("\nSuccessfully removed duplicates, if any!\n\n");
								}
								else
								{
										printf("\n%s\nCannot perform this operation!\n\n", LIST_IS_EMPTY);
								}
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

