#include "main.h"

int main()
{
		//Create a stack pointer variable to point to top of the stack
		Stack* top = NULL;
		//User choice to continue program & a string to store infix expression and prefix expression
		char choice, infix_string[41], prefix_array[41];
		//A pointer to store base address of infix string
		char* item_scan = NULL;
		do
		{
				//Input infix string
				printf("\nEnter the infix expression without spaces: ");
				scanf("%40[^\n]", infix_string);//Read till user enters ENTER key
				printf("\n-----Validating characters in the infix string--------\n");
				if (validate_infix_expression(infix_string))//Validate characters in infix string
				{
						printf("Valid characters given in infix expression!\n");
						printf("\n-----Converting infix string to prefix string--------\n");
						//Iterator i for postfix array index starting from 0
						data_t i = 0;
						strrev(infix_string, strlen(infix_string), 0);
						item_scan = infix_string;
						while (*item_scan != '\0')//Check each charcter till '\0'
						{
								//Check if scanned character is a digit
								if(isdigit(*item_scan))
										//Has to be operand
										prefix_array[i++] = *item_scan;
								else if (top == NULL)//If stack is empty
										//Push scanned item(operator) to stack
										push(&top, *item_scan);
								else if (*item_scan == '(')
								{
										//Pop all items till we get '('
										while (peek(&top) != ')')
										{
												prefix_array[i++] = peek(&top);
												pop(&top);
										}
										//Discard ')', so pop one more time
										pop(&top);
								}
								else if (check_precedence(peek(&top), *item_scan))
								{
										//Pop the stack item and appen to postfix array
										prefix_array[i++] = peek(&top);
										pop(&top);
										//Check if stack is not empty and again the precedence check is required.
										if (top && check_precedence(peek(&top), *item_scan))
												//True means we need to perform the precedence check with the same item
												continue;
										push(&top, *item_scan);
								}
								else
								{
										//Push the scanned item into the stack
										push(&top, *item_scan);
								}
								item_scan++;//Move to next item in infix string
						}
						//Since we reached end of the infix string, pop all the remaing items in stack till it becomes empty and append to prefix array
						while (top)
						{
								prefix_array[i++] = peek(&top);
								pop(&top);
						}
						//Append '\0' to prefix array to make it a string
						prefix_array[i] = '\0';
						//Reverse the required prefix array
						strrev(prefix_array, strlen(prefix_array), 0);
						printf("Prefix expression: %s\n\n", prefix_array);
						//By now, the stack has become empty, so top has NULL
						printf("-----Evaluating output of obtained postfix string-----\n");
						//Here we need the reversed prefix string
						strrev(prefix_array, strlen(prefix_array), 0);
						data_t oprnd1, oprnd2;//Store operands in scanned string
						//Make the item_scan pointer pointing to base address of postfix string
						item_scan = prefix_array;
						//Scan prefix string till the end
						while (*item_scan != '\0')
						{
								if (isdigit(*item_scan))//Check if it is operand
										//Push it to the stack
								{
										//We need to fetch single character
										char to_int = *item_scan++;
										//Covert it to integer and push in the stack
										push(&top, atoi((const char*)&to_int));
								}
								else
								{
										oprnd1 = peek(&top);
										pop(&top);
										oprnd2 = peek(&top);
										pop(&top);
										switch (*item_scan++)
										{
												case '+'://Addition
														push(&top, ADD(oprnd1, oprnd2));
														break;
												case '-'://Subtraction
														push(&top, SUB(oprnd1, oprnd2));
														break;
												case '*'://Multiplication
														push(&top, MUL(oprnd1, oprnd2));
														break;
												case '/'://Division
														push(&top, DIV(oprnd1, oprnd2));
														break;
												default://Modulo
														push(&top, MOD(oprnd1, oprnd2));
										}
								}
						}
						//Pop and display the last item in the stack 
						printf("Result: %d\n\n", peek(&top));
						pop(&top);
				}
				else//invalid characters in infix string
						printf("Error: Invalid characters given in infix expression!\n\n");
				printf("Do you want to continue? (y / n): ");
				scanf("\n%c", &choice);
				getchar();//Clear the input buffer by using getchar
		} while (choice == 'y');
		return 0;
}

