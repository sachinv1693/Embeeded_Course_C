#include <stdio.h>
#include "slist_struct.h"

int main()
{
		Slist* head = NULL;
		char choice;
		data_t opt, data, new_data, pos;
		do
		{
				printf("-------Menu-------\
								\n1. Insert at first\
								\n2. Insert after\
								\n3. Insert before\
								\n4. Delete element\
								\n5. Insert nth\
								\n6. Print list\
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
						case 2://Insert after
                                //Check whether the list is empty
							     if (head == NULL)
                                 {
                printf("\n%s\nCannot perform this operation!\n\n", LIST_IS_EMPTY);
                goto to_continue;
        }
	
								printf("\nEnter the data after which you want to enter new data: ");
								scanf("%d", &data);
								printf("Enter new data: ");
								scanf("%d", &new_data);
								if (insert_after(&head, data, new_data))
								{
										printf("Data insertion successful!\n\n");
								}
								else
								{
										printf("Data insertion failed!\n\n");
								}
								break;
						case 3://Insert before
                                //Check whether the list is empty
							     if (head == NULL)
                                 {
                printf("\n%s\nCannot perform this operation!\n\n", LIST_IS_EMPTY);
                goto to_continue;
        }
								printf("\nEnter the data before which you want to enter new data: ");
								scanf("%d", &data);
								printf("Enter new data: ");
								scanf("%d", &new_data);
								if (insert_before(&head, data, new_data))
								{
										printf("Data insertion successful!\n\n");
								}
								else
								{
										printf("Data insertion failed!\n\n");
								}
								break;
						case 4://Delete element
								if (head == NULL)
								{
										printf("\n%s\nNode deletion not possible!\n\n", LIST_IS_EMPTY);
										goto to_continue;
								}
								printf("\nEnter the node position: ");
								scanf("%d", &pos);
								if (pos <= 0)
								{
										printf("Error: Node position should be a positive number.\n");
										goto to_continue;
								}
								delete_element_pos(&head, pos) ? printf("Node deletion successful!\n\n") : printf("Node deletion not possible!\n\n");
								break;
						case 5://Insert nth
								printf("\nEnter the node position: ");
								scanf("%d", &pos);
								if (pos <= 0)
								{
										printf("Error: Node position should be a positive number.\n\n");
										goto to_continue;
								}
								printf("Enter integer data: ");
								scanf("%d", &data);
								insert_nth(&head, pos, data) ? printf("Successfully inserted %d at node position %d!\n\n", data, pos) : printf("Cannot perform this operation!\n\n");
								break;
						case 6://Print list
								print_list(head);
								break;
						default://Invalid option
								printf("\nError: Invalid option.\n\n");
				}
to_continue:
				printf("Do you want to continue (y / n)? ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

