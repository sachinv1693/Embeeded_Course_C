#include "slist_struct.h"

Status find_loop(Slist** head)
{
		//Let's have 2 pointers, slow moves step by step and fast moves 2 steps
		Slist* slow = *head, *fast = *head;
		while (slow && fast)//Iterate till slow is not NULL
		{
				slow = slow -> link;//Move slow by 1 step
				if (fast -> link)//Move fast by 2 steps if next step is not NULL
				{
						fast = fast -> link -> link;
				}
				else
						return FAILURE;//return failure if NULL is found
				if (slow == fast)//If slow meets fast, loop is found
						return SUCCESS;
		}
		return FAILURE;
}

