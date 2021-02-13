/*
   Title = Print ASCII table
   Name = Sachin Vaze
   Date = August 10, 2019
   Description - 
   i) Input = None
   ii) Output = Print the ASCII table
 */

#include <stdio.h>

int main()
{
		printf("----------Displaying the ASCII table----------\n");
		//Table heading
		//Let's use \t for proper spacing
		printf("Oct\tDec\tHex\tChar\n");
		//Iterating over char length
		for (int a = 0; a <= 127; a++)
		{
				//Non-printable characters in the range 0-32 or 127 onwards
				if (a >= 0 && a <= 32 || a == 127)
				{
						printf("%o\t%d\t%x\tNon-printable character\n", a, a, a);
				}
				//Printable characters
				else
				{
						printf("%o\t%d\t%x\t%c\n", a, a, a, a);
				}
		}

		return 0;
}

