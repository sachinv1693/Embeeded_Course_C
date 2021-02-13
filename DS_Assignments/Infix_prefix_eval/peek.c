#include "main.h"

data_t peek(Stack** top)
{
		//Check if stack is empty
		if (*top == NULL)
		{
				//printf("\n%s\n\n", STACK_IS_EMPTY);
				return -9999;//return absurd data on failure
		}
		return (*top) -> oper;//return character pointed by top of the stack
}

