#include "main.h"

void strrev(char* s, data_t size, data_t iter)
{
		//Swap lower half of the string with its upper half
		if (iter < (size) / 2)
		{
				//Using XOR swapping technique 
				s[iter] ^= s[size - 1 - iter];
				s[size - 1 - iter] ^= s[iter];
				s[iter] = s[size - 1 - iter] ^ s[iter];
				//Recursive call with incremented iter value
				strrev(s, size, ++iter);
		}
		//Implicit return
}

