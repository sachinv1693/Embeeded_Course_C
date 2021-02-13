#include "main.h"

Status check_precedence(const char stack_item, const char scan_item)
{
		if (stack_item == '(')//Open brace has highest precedence
				return FAILURE;
		else if (stack_item == '*' && scan_item == '(')//'*' loses against '('
				return FAILURE;
		else if (stack_item == '*')//Remaining cases of '*' always true
				return SUCCESS;
		else if (stack_item == '/' && scan_item == '(')//'/' loses against '('
				return FAILURE;
		else if (stack_item == '/')//Remaining cases of '/' always true
				return SUCCESS;
		else if (stack_item == '%' && scan_item == '(')//'%' loses against '('
				return FAILURE;
		else if (stack_item == '%')//Remaining cases of '%' always true
				return SUCCESS;
		//'+' has upper hand over '+' or '-' otherwise return failure
		else if (stack_item == '+' && scan_item == '+')
				return SUCCESS;
		else if (stack_item == '+' && scan_item == '-')
				return SUCCESS;
		else if (stack_item == '+')
				return FAILURE;
		//'-' has upper hand over '+' or '-' otherwise return failure
		else if (stack_item == '-' && scan_item == '-')
				return SUCCESS;
		else if (stack_item == '-' && scan_item == '+')
				return SUCCESS;
		else //Last case: (stack_item == '-')
				return FAILURE;
}

