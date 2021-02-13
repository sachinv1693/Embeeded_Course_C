#include "stack_struct.h"

data_t peek(Stack* s)
{
		if (s -> top == SIZE)//Check whether stack is full
		{
				printf("\n%s\n\n", STACK_IS_FULL);
				return -9999;//Send an absurd data upon failure
		}
		if (s -> top == -1)//Check whether stack is empty
		{
				printf("\n%s\n\n", STACK_IS_EMPTY);
				return -9999;//Send an absurd data upon failure
		}
		return s -> arr[s -> top];//return data at top of stack
}

