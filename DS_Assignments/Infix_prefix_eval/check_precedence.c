#include "main.h"

Status check_precedence(const char stack_item, const char scan_item)
{
		if (stack_item == ')')//Closing brace is having lowest precedence
				return FAILURE;
		else if (stack_item == '*' && scan_item == '+')//'*' wins against '+'
				return SUCCESS;
		else if (stack_item == '*' && scan_item == '-')//'*' wins against '-'
				return SUCCESS;
		else if (stack_item == '*')//Remaining cases of '*' always false
				return FAILURE;
		else if (stack_item == '/' && scan_item == '+')//'/' wins against '+'
				return SUCCESS;
		else if (stack_item == '/' && scan_item == '-')//'/' wins against '-'
				return SUCCESS;
		else if (stack_item == '/')//Remaining cases of '/' always false
				return FAILURE;
		else if (stack_item == '%' && scan_item == '+')//'/' wins against '+'
				return SUCCESS;
		else if (stack_item == '%' && scan_item == '-')//'/' wins against '-'
				return SUCCESS;
		else if (stack_item == '%')//Remaining cases of '/' always false
				return FAILURE;
		//'+' and '-' always fail
		else //last case: (stack_item == '+' || stack_item == '-')
				return FAILURE;
}

