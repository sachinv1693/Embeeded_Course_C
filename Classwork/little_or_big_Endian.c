#include <stdio.h>

int main()
{
		int x = 0x12345678;

		char* ptr = (char*)&x;

		if (*ptr == 0x12)
		{
				printf("The machine is big endian\n");
		}
		else if (*ptr == 0x78)
		{
				printf("The machine is little endian\n");
		}
		return 0;
}
