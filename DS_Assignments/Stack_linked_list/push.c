#include "stack_struct.h"

Status push(Stack** top, data_t data)
{
		//Create a new node
		Stack* new = malloc(sizeof(Stack));
		//Check if node is created or not
		if (new == NULL)
		{
				printf("Error: Unable to allocate dynamic memory!\n\n");
				return FAILURE;
		}
		//Update the data
		new -> data = data;
		//Check whether the list is empty
		if (*top == NULL)//No elements in the linked list
		{
				//Update the link to NULL address
				new -> link = NULL;
				//Update top
				*top = new;
				return SUCCESS;
		}
		//Establish a link between first and next node + update top pointer
		new -> link = *top;
		*top = new;
		return SUCCESS;
}

