#include <stdio.h>
#include "slist_struct.h"

int main()
{
		char choice, ch;
		data_t opt, data;
		do
		{
		Slist* head1 = NULL, *head2 = NULL;
				printf("\n----Fill up Linked List 1----\n");
				do
				{
						printf("Enter data: ");
						scanf("%d", &data);
						if(insert_at_last(&head1, data))
						{
								printf("Successfully inserted %d in the list.\n", data);
						}
						else
						{
								printf("Failed to insert %d in the list.\n", data);
						}
						printf("\nDo you want to add more data? (y / n): ");
						scanf("\n%c", &ch);
				} while (ch == 'y');
				printf("\nPrinting linked list 1: \n");
				print_list(head1);
				printf("\n----Fill up Linked List 2----\n");
				do
				{
						printf("Enter data: ");
						scanf("%d", &data);
						if(insert_at_last(&head2, data))
						{
								printf("Successfully inserted %d in the list.\n", data);
						}
						else
						{
								printf("Failed to insert %d in the list.\n", data);
						}
						printf("\nDo you want to add more data? (y / n): ");
						scanf("\n%c", &ch);
				} while (ch == 'y');
				printf("\nPrinting linked list 2: \n");
				print_list(head2);
				printf("\n----Sorting and merging given list----\n");
				if (merge_sorted(&head1, &head2))
				{
						printf("Linked lists successfully sorted and merged\n");
				}
				else
				{
						printf("Failed to sort and merge\n");
				}
				printf("\n----Printing the resultant list----\n");
				if (head1)
				print_list(head1);
				else
						printf("\n%s\n\n", LIST_IS_EMPTY);
				printf("\nDo you want to continue (y / n)? ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

