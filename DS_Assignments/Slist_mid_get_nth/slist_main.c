#include <stdio.h>
#include "slist_struct.h"

int main()
{
		Slist* head = NULL;
		char choice;
		data_t opt, data, pos, mid_data[3];
		do
		{
				printf("-------Menu-------\
								\n1. Insert at first\
								\n2. Find mid\
								\n3. Get nth from last\
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
						case 2://Find mid
								if (find_mid(&head, mid_data))
								{
										if (mid_data[0])
										printf("Mid element in the list: %d\n\n", mid_data[1]);
										else
										printf("Mid elements in the list: %d, %d\n\n", mid_data[1], mid_data[2]);
								}
								else
								{
										printf("Cannot find mid element!\n\n");
								}
								break;
						case 3://Get nth from last
                                //Check whether the list is empty
							     if (head == NULL)
                                 {
                printf("\n%s\nCannot perform this operation!\n\n", LIST_IS_EMPTY);
                goto to_continue;
        }
								printf("\nEnter node position from end of the list: ");
								scanf("%d", &pos);
								if (get_nth_from_last(&head, pos) == FAILURE)
								{
										printf("Node was not present\n\n");
								}
								break;
						case 4://Print list
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

