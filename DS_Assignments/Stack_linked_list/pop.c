#include "stack_struct.h"

Status pop(Stack** top)
{
		//Check whether the list is empty
		if (*top == NULL)//No elements in the linked list
		{
				return FAILURE;
		}
		//Create a pointer to store the address of top node
		Stack* temp = *top;
		//Update head pointer
		*top = temp -> link;
		//Free the removed node
		free(temp);
		//Let's make the node to be removed as NULL
		temp = NULL;
		return SUCCESS;
}

