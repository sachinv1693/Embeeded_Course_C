#include <stdio.h>
#include "dlist_struct.h"

int main()
{
		Dlist* head = NULL, *tail = NULL;
		char choice;
		data_t opt, data, new_data;
		do
		{
				printf("-------Menu-------\
								\n1. Insert at first\
								\n2. Insert after\
								\n3. Insert before\
								\n4. Delete element\
								\n5. Print list\
								\nPlease select an option: ");
				scanf("%d", &opt);
				switch (opt)
				{
						case 1://Insert at first 
								printf("\nEnter the integer data: ");
								scanf("%d", &data);
								if (insert_at_first(&head, &tail, data))
								{
										printf("Data insertion successful!\n\n");
								}
								else
								{
										printf("Data insertion failed!\n\n");
								}
								break;
						case 2://Insert after
								printf("\nEnter the data after which you want to insert new data: ");
								scanf("%d", &data);
								printf("Enter the new data: ");
								scanf("%d", &new_data);
								if (insert_after(&head, &tail, data, new_data))
								{
										printf("Data insertion successful!\n\n");
								}
								else
								{
										printf("Data insertion failed!\n\n");
								}
								break;
						case 3://Insert before
								printf("\nEnter the data before which you want to insert new data: ");
								scanf("%d", &data);
								printf("Enter the new data: ");
								scanf("%d", &new_data);
								if (insert_before(&head, &tail, data, new_data))
								{
										printf("Data insertion successful!\n\n");
								}
								else
								{
										printf("Data insertion failed!\n\n");
								}
								break;
						case 4://Delete element
								printf("\nEnter the data to be deleted: ");
								scanf("%d", &data);
								delete_element(&head, &tail, data) ? printf("\nNode deletion successful!\n\n") : printf("Node deletion not possible!\n\n");
								break;
						case 5://Print list
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

