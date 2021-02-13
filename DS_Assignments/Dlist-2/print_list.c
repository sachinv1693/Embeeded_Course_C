#include "dlist_struct.h"

void print_list(Dlist* head)
{
		if (head == NULL)
		{
				printf("\n%s\n\n", LIST_IS_EMPTY);
				return;
		}
	    printf("\n----Printing Linked List----\n");
		while (head)
		{
				printf("%d", head -> data);
				head = head -> next;
				if (head)
						printf("->");
		}
		printf("\n\n");
}

