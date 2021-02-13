#include "dlist_struct.h"

Status delete_element(Dlist** head, Dlist** tail, data_t data)
{
		//Check whether the list is empty
		if (*head == NULL)//No elements in the linked list
		{
				printf("\n%s\n", LIST_IS_EMPTY);
				return FAILURE;
		}
		//Create a pointer to store the address of first node
		Dlist* current = *head;
		//Iterate into the list to find the required data
		while (current)
		{
				//If required data is found then delete and free the node
				if (current -> data == data)
				{
					   //Update previous node's next address as current's next address if current is not pointing to head else update head
					   if (current != *head)
							   current -> prev -> next = current -> next;
					   else
							   *head = current -> next;
					   //Update next node's previous address as current's previous address if current has not reached to tail else update tail
					   if (current != *tail)
							   current -> next -> prev = current -> prev;
					   else
							   *tail = current -> prev;
					   free(current);//free memory
					   //Set current pointer to NULL
					   current = NULL;
					   return SUCCESS;
				}
				//Move to next node
				current = current -> next;
		}
		printf("%d was not found in the list.\n", data);
		return FAILURE;
}

