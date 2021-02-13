#include <stdio.h>
#include <stdarg.h>

int my_printf(char* fmt, ...)
{
		va_list ap;
		va_start(ap, fmt);
		while (*fmt)
		{
				if (*fmt++ == '%')
				{
						switch (*fmt++) 
						{
								case 'd':/* decimal */
								case 'i':/* int */
										break;
								case "ld":/* long */
										break;
								case "hd":/* short */
										break;
								case 'c':/* char */
										break;
								case 'f':/* float */
										break;
								case "lf":/* double */
										break;
								case 'x':/* hexadecimal upto 4 bytes*/
										break;
								case "hx":/* hexadecimal upto 2 bytes*/
										break;
								case "hhx":/* hexadecimal upto 1 byte */
								case '%':
						}
				}
		}
		va_end(ap);
		return f;
}

int main()
{
		my_printf("%d %f %c", 10, 1.5, 'A');
		return 0;
}

