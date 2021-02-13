#include <stdio.h>

int main()
{
		unsigned char num;
		//Input the number
		printf("Enter a 2 digit hexadecimal number: ");
		scanf("%hhx", &num);
		printf("After swaping nibbles, the number becomes: %hhx\n", (num << 4) | (num >> 4));
		return 0;
}

