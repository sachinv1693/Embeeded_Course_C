#include "stack_struct.h"

Status push(Stack* s, data_t data)
{
		//Check if stack is full
		if (s -> top == SIZE - 1)
		{
				return FAILURE;
		}
		//Increment top and assign data
		s -> arr[++(s -> top)] = data;
		return SUCCESS;
}

