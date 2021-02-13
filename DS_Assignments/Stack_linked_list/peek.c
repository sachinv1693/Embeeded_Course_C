#include "stack_struct.h"

data_t peek(Stack* top)
{
		//Check if stack is empty
		if (top == NULL)
		{
				printf("\n%s\n\n", STACK_IS_EMPTY);
				return -9999;//return an absurd value on failure
		}
		return top -> data;//return data pointed by top of the stack
}

