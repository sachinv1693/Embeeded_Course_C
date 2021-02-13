#include "slist_struct.h"

void print_list(Slist* head)
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
				head = head -> link;
				if (head)
						printf("->");
		}
		printf("\n\n");
}

