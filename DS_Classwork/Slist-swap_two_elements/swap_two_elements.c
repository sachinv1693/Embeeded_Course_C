#include "slist_struct.h"

Status swap_two_elements(Slist** head)
{
		if (*head == NULL)
		{
				printf("%s\n\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		Slist* temp1 = *head;
		if ((*head) -> link)
				*head = (*head) -> link;
		while (temp1 && temp1 -> link)
		{
				Slist* temp2 = temp1 -> link -> link;
				temp1 -> link -> link = temp1;
				temp1 -> link = (temp2 && temp2 -> link) ? temp2 -> link: temp2;
				temp1 = temp2;
		}
		return SUCCESS;
}

