#include "stack_struct.h"

void peep(Stack* top)
{
		//Check if stack is empty
		if (top == NULL)
		{
				printf("\n%s\n", STACK_IS_EMPTY);
				return;//Explicit return
		}
		printf("\n-----Printing Stack from top-----\n");
		while (top)//Iterate through list till we get NULL
		{
			printf("%d\n", top -> data);//print each node's data
			top = top -> link;//Move to next node
		}
}

