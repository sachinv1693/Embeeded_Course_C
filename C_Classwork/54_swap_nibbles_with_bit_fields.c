#include <stdio.h>

typedef struct Nibble
{
		unsigned char lower : 4;//lsb side
		unsigned char upper : 4;//msb side
}Nibble;

int main()
{
		unsigned char nib1, nib2;
		//Input the number
		printf("Enter upper nibble: ");
		scanf("%hhx", &nib1);
		printf("Enter lower nibble: ");
		scanf("%hhx", &nib2);
		Nibble nibble;

		//Swapping is done because of interchanged assignment of MSN and LSN
		nibble.lower = nib1;//Assigning upper nibble to lower nibble
		nibble.upper = nib2;//Assigning lower nibble to upper nibble

		unsigned char* p = (unsigned char*)&nibble;

		printf("-----------After swaping nibbles---------\nNumber = %hhx\n\n", *p);

		return 0;
}
