#include "slist_struct.h"

void print_list(Slist* head)
{
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

