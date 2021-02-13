#include "stack_struct.h"

void peep(Stack* s)
{
		if (s -> top == -1)//Check whether stack is empty
		{
				printf("\n%s\n", STACK_IS_EMPTY);
				return;
		}
		printf("\n-----Printing Stack from top-----\n");
		//Print the array data in reverse manner
		for (data_t i = (s -> top); i >= 0; i--)
		{
				printf("%d\n", s -> arr[i]);//Print data
		}
}

