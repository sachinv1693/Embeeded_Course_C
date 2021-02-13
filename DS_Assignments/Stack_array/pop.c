#include "stack_struct.h"

Status pop(Stack* s)
{
		//Check if stack is empty
		if (s -> top == -1)
		{
				return FAILURE;
		}
		//Decrement top
		(s -> top)--;
		return SUCCESS;
}

