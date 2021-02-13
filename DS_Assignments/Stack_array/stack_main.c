#include <stdio.h>
#include "stack_struct.h"

int main()
{
		//Let's create a structure variable
		Stack s;
		s.top = -1;//Initialize top value to -1
		char choice;//User choice to continue the program
		data_t opt, data, result;//Option, stack data and result from peek()
		do
		{
				printf("-------Menu-------\
								\n1. Push\
								\n2. Pop\
								\n3. Peek\
								\n4. Peep\
								\nPlease select your option: ");
				scanf("%d", &opt);
				switch (opt)
				{
						case 1://Push
								printf("\nEnter the integer data: ");
								scanf("%d", &data);
								if (push(&s, data))
								{
										printf("\nSuccessfully pushed %d into the stack!\n\n", data);
								}
								else
								{
										printf("\nCannot push %d into the stack\n%s!\n\n", data, STACK_IS_FULL);
								}
								break;
						case 2://Pop
								if (pop(&s))
								{
										printf("\nData successfully popped!\n\n");
								}
								else
								{
										printf("\nCannot pop the data\n%s!\n\n", STACK_IS_EMPTY);
								}
								break;
						case 3://Peek
								result = peek(&s);
								if (result != -9999)//Return absurd data on failure
										printf("\nPeek data = %d\n\n", result);
								break;
						case 4://Peep
								peep(&s);
								printf("\n");
								break;
						default://Invalid option
								printf("Error: Invalid option.\n\n");
				}
				printf("Do you want to continue (y / n)? ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

