#include <stdio.h>
#include "slist_struct.h"

int main()
{
		Slist* head = NULL, *loop_back_node = NULL;
		char choice;
		data_t opt, data;
		do
		{
				printf("-------Menu-------\
								\n1. Insert at last(Discards loop)\
								\n2. Create loop from last node\
								\n3. Insert sorted\
								\n4. Find loop\
								\n5. Print list\
								\nPlease select your option: ");
				scanf("%d", &opt);
				switch (opt)
				{
						case 1://Insert at last
								printf("\nEnter the integer data: ");
								scanf("%d", &data);
								if (insert_at_last(&head, data, &loop_back_node))
								{
										printf("Data insertion successful!\n\n");
								}
								else
								{
										printf("Data insertion failed!\n\n");
								}
								break;
						case 2://Create loop from last node
								printf("\nEnter a data in this list to which you want to loop back from last node: ");
								scanf("%d", &data);
								if (create_loop_from_last(&head, data, &loop_back_node))
								{
										printf("Successfully created loop to %d from last node!\n\n", data);
								}
								else
								{
										printf("Failed to create loop!\n\n");
								}
								break;
						case 3://Insert sorted
								printf("\nEnter the integer data to be inserted: ");
								scanf("%d", &data);
								if (insert_sorted(&head, data))
								{
										printf("Successfully inserted %d in sorted list!\n\n", data);
								}
								else
								{
										printf("Failed to insert %d!\n\n", data);
								}
								break;
						case 4://Find loop
								if (head && find_loop(&head))
								{
										printf("\nLoop is present in the linked list\n\n");
								}
								else
								{
										if (head)
												printf("\nLoop is not present in the linked list\n\n");
										else
												printf("\n%s\n\n", LIST_IS_EMPTY);
								}
								break;
						case 5://Print list
								print_list(head, loop_back_node);
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

