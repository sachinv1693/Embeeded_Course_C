#include "slist_struct.h"

void print_list(Slist* head, Slist* loop_back_node)
{
		if (head == NULL)//Check if list is empty
		{
				printf("\n%s\n\n", LIST_IS_EMPTY);
				return;//Explicit return
		}
        data_t is_loop = 0;//Set a variable equal to 0 to detect loop
		printf("\n----Printing Linked List----\n");
		//Store head address into a temp pointer to know if there exists any loop
		while (head)
		{
				if ((loop_back_node) && (head == loop_back_node))
				{
						is_loop++;
						//2 times reaching the same address or a node having self loop means we found the loop
						if (is_loop == 2 || head == head -> link)
						{//Loop exists
								if (head == head -> link)//Only 1 node loop
										printf("%d->", head -> data);
								printf("looping back to: %d", loop_back_node -> data);
								break;
						}
				}
				printf("%d", head -> data);//print data
				head = head -> link;//Move the pointer to next node
				if (head)//If pointer is not NULL then only print -> symbol
						printf("->");
		}
		printf("\n\n");
}

