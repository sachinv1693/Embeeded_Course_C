#ifndef MAIN_H
#define MAIN_H

//Standard header file includes
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

//Macros
#define STACK_IS_EMPTY      "Operator stack is empty"
#define ADD(x, y)           (x + y)
#define SUB(x, y)           (x - y)
#define MUL(x, y)           (x * y)
#define DIV(x, y)           (x / y)
#define MOD(x, y)           (x % y)

typedef int data_t;

//Operator stack
typedef struct node
{		
		data_t oper;
		struct node* link;
}Stack;

typedef enum
{
		FAILURE,
		SUCCESS
}Status;

//Function prototypes
Status validate_infix_expression(const char* s);
Status check_precedence(const char stack_item, const char scan_item);
Status push(Stack** top, data_t oper);
Status pop(Stack** top);
data_t peek(Stack** top);

#endif
