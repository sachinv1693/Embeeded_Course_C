#include "main.h"

Status validate_infix_expression(const char* s)
{
		while (*s != '\0')//Check each character till the end of the string
		{
				//It should be a digit or a basic mathematical operator
				if (isdigit(*s) || *s == '*' || *s == '/' || *s == '%' || *s == '+' || *s == '-' || *s == '(' || *s == ')')
				s++;//Move to next character
				else//Otherwise string not acceptable
						return FAILURE;
		}
		return SUCCESS;//Reaching '\0' without error, so return success
}

