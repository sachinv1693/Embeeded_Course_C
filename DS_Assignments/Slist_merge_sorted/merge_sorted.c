#include "slist_struct.h"

Status merge_sorted(Slist** head1, Slist** head2)
{
		//Check whether the list is empty
		if (*head1 == NULL)
		{
				*head1 = *head2;
				return FAILURE;
		}
		if (*head2== NULL)
		{
				return FAILURE;
		}
		//Sort the given lists using bubble sort technique
		//Sort linked list 1
		Slist* outer = *head1;//An outer pointer
		while (outer -> link)
		{
				outer = outer -> link;
		}
		outer -> link = *head2;
		//Merge with 2nd list by giving its head address
		outer = *head1;
		while (outer -> link)//Iterate till last node
		{
				Slist* inner = outer -> link;//Inner pointer set to next node
				while (inner)//Iterate till last node
				{
						if (outer -> data > inner -> data)
						{//Swap data
								data_t temp = inner -> data;
								inner -> data = outer -> data;
								outer -> data = temp;
						}
						inner = inner -> link;//Move inner pointer to next node
				}
				outer = outer -> link;//Move outer pointer to next node
		}
		return SUCCESS;
}

