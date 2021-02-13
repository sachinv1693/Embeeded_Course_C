#include <stdio.h>
#include "stack_struct.h"

int main()
{
		Stack* top = NULL;
		char choice;
		data_t opt, data, result;
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
										if (push(&top, data))
										{
												printf("\nSuccessfully pushed %d into the stack!\n\n", data);
										}
										else
										{
												printf("\nCannot push %d into the stack!\n\n", data);
										}
										break;
								case 2://Pop
										if (pop(&top))
										{
												printf("\nData successfully popped!\n\n");
										}
										else
										{
												printf("\nCannot pop the data\n%s!\n\n", STACK_IS_EMPTY);
										}
										break;
								case 3://Peek
										result = peek(top);
										if (result != -9999)
										printf("\nPeek data = %d\n\n", result);
										break;
								case 4://Peep
										peep(top);
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

