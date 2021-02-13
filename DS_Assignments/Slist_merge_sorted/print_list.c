#include "slist_struct.h"

void print_list(Slist* head)
{
		while (head)
		{
				printf("%d", head -> data);//print data
				head = head -> link;//Move the pointer to next node
				if (head)//If pointer is not NULL then only print -> symbol
						printf("->");
		}
		printf("\n");
}

