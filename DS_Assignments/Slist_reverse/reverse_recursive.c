#include "slist_struct.h"

Status reverse_recursive(Slist** head)
{
		//Store head address in static temp1 pointer for further use and let's use a local next pointer to tress the next address after performing modifications
		static Slist* temp1 = NULL;
		if (!temp1)//Store head address into temp1 in very first call
				temp1 = *head;
		//Check whether the list is empty by checking head as well as temp1
		if (*head == NULL && temp1 == NULL)
		{
				return FAILURE;
		}
		//Store head's next address into another temp2 pointer
		static Slist* temp2 = NULL;
		if (temp1 == *head)//Store next address of head on very first call
				temp2 = (*head) -> link;
		if (temp2 == NULL)//Iteratre till temp2 is not NULL
		{
				//temp1 now becomes the last node, so set its link to NULL
				temp1 -> link = NULL;
				//Set static variables back to NULL
				temp1 = temp2 = NULL;
				return SUCCESS;
		}
		//Store the head's next to next address
		Slist* next = temp2 -> link;
		//Make next node to point backward to head
		temp2 -> link = *head;
		//Move head to next address where temp2 is pointing 
		*head = temp2;
		//Move temp2 to its next address
		temp2 = next;
		//Recursively call
		return reverse_recursive(head);
}

