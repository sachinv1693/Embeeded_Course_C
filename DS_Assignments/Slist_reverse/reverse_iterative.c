#include "slist_struct.h"

Status reverse_iterative(Slist** head)
{
		//Check whether the list is empty
		if (*head == NULL)
		{
				return FAILURE;
		}
		//Store head address in temp1 pointer and let's use a next pointer to tress the next address after performing modifications
		Slist* temp1 = *head;
		//Store temp1's next address into another temp2 pointer
		Slist* temp2 = temp1 -> link;
		while (temp2)//Iteratre till temp2 is not NULL
		{
				//Store the next to next address
				Slist* next = temp2 -> link;
				//Make next node to point backward
				temp2 -> link = temp1;
				//Move temp1 to next address where temp2 is pointing 
				temp1 = temp2;
				//Move temp2 to its next address
				temp2 = next;
		}
		//Head has now become the last node, so its link should be holding NULL
		(*head) -> link = NULL;
		//temp1 is the new head
		*head = temp1;
		return SUCCESS;
}

