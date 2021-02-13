/*
   Title = Endianness
   Name = Sachin Vaze
   Date = September 27, 2019
   Description - 
   i) Input = None
   ii) Output = Display the endianness of the system
*/

#include <stdio.h>

void endianness(char* ptr)
{
		if (*ptr == '\0')
		{
				printf("The machine is big endian\n\n");
		}
		else
		{
				printf("The machine is little endian\n\n");
		}
}

int main()
{
		int x = sizeof(int);

		endianness((char*)&x);

		return 0;
}

