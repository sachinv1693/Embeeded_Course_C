#include <stdio.h>
#include "dlist_struct.h"

int main()
{
		Dlist* head = NULL, *tail = NULL;
		char choice;
		data_t opt, data, node_number;
		do
		{
				printf("-------Menu-------\
								\n1. Insert at first\
								\n2. Insert at last\
								\n3. Delete first\
								\n4. Delete last\
								\n5. Delete list\
								\n6. Find node\
								\n7. Print list\
								\nPlease select your option: ");
				scanf("%d", &opt);
				switch (opt)
				{
						case 1://Insert at first node
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
						case 2://Insert at last node
								printf("\nEnter the integer data: ");
								scanf("%d", &data);
								if (insert_at_last(&head, &tail, data))
								{
										printf("Data insertion successful!\n\n");
								}
								else
								{
										printf("Data insertion failed!\n\n");
								}
								break;
						case 3://Delete first
								delete_first(&head, &tail) ? printf("\nNode deletion successful!\n\n") : printf("Node deletion not possible!\n\n");
								break;
						case 4://Delete last
								delete_last(&head, &tail) ? printf("\nNode deletion successful!\n\n") : printf("Node deletion not possible!\n\n");
								break;
						case 5://Delete list
								delete_list(&head, &tail) ? printf("\nSuccessfully deleted the linked list!\n\n") : printf("Cannot perform the operation!\n\n");
								break;
						case 6://Find node
								printf("\nEnter the integer data to be searched: ");
								scanf("%d", &data);
								if (find_node(&head, data) == FAILURE)
										printf("%d was not found in the list!\n\n", data);
								break;
						case 7://Print list
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

