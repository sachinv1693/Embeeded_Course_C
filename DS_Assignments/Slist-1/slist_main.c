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
								\n2. Insert at first\
								\n3. Delete first\
								\n4. Delete last\
								\n5. Delete list\
								\n6. Delete element\
								\n7. Find node\
								\n8. Print list\
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
						case 2://Insert at first node
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
						case 3://Delete first
								delete_first(&head) ? printf("\nNode deletion successful!\n\n") : printf("Node deletion not possible!\n\n");
								break;
						case 4://Delete last
								delete_last(&head) ? printf("\nNode deletion successful!\n\n") : printf("Node deletion not possible!\n\n");
								break;
						case 5://Delete list
								delete_list(&head) ? printf("Successfully deleted the linked list!\n\n") : printf("Cannot perform the operation!\n\n");
								break;
						case 6://Delete element
								if (head)
								{
										printf("\nEnter the data node you want to delete: ");
										scanf("%d", &data);
										delete_element(&head, data) ? printf("Successfully deleted first occurrence of %d from linked list!\n\n", data) : printf("Cannot perform the operation!\n\n");
								}
								else
										printf("\n%s\nCannot perform the operation!\n\n", LIST_IS_EMPTY);
								break;
						case 7://Find node
								if (head)
								{
								printf("\nEnter the integer data to be searched: ");
								scanf("%d", &data);
								node_number = find_node(&head, data); 
								node_number ? printf("First occurrence of %d is found at node %d\n\n", data, node_number) : printf("%d not found in the list!\n\n", data);
								}
								else
										printf("\n%s\nCannot perform the operation!\n\n", LIST_IS_EMPTY);
								break;
						case 8://Print list
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

