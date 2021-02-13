#include "main.h"

Status pop(Stack** top)
{
		//Check whether the list is empty
		if (*top == NULL)//No elements in the linked list
		{
				return FAILURE;
		}
		//Create a pointer to store the address of first node
		Stack* temp = *top;
		//Update head pointer
		*top = temp -> link;
		//Let's make the node to be removed as NULL
		temp = NULL;
		//Free the removed node
		free(temp);
		return SUCCESS;
}

