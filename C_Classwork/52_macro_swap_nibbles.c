#include <stdio.h>

#define SWAP_NIBBLES(num)                   \
{                                           \
		num = (num << 4) | (num >> 4);      \
}

int main()
{
		unsigned char num, num1 = 0, num2 = 0;
		//Input the number
		printf("Enter a 2 digit hexadecimal number: ");
		scanf("%hhx", &num);
		SWAP_NIBBLES(num);
		printf("After swaping nibbles, the number becomes: %hhx\n", num);

		return 0;
}
