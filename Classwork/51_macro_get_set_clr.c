#include <stdio.h>
#include <stdlib.h>

#define NO_OF_BITS        (sizeof(int) * 8)

#define PRINT_BITS()                                                 \
for (int i = 0; i < NO_OF_BITS; i++)                                 \
{                                                                    \
	/*Get bit as per iterated position*/                             \
	(num & (01 << NO_OF_BITS - i - 1)) ? printf("1"): printf("0");   \
}

#define GET_BIT(num, pos) (!!(num & (1 << pos)))

#define SET_BIT(num, pos) (num |= 1 << pos)

#define CLEAR_BIT(num, pos) (num &= ~(1 << pos))

int main()
{
		int num, pos;
		printf("Enter an integer: ");
		scanf("%d", &num);
		printf("\n--------Printing the bits of %d--------\n", num);
		PRINT_BITS();
		printf("\n\nEnter the bit position(0 to %zu): ", NO_OF_BITS - 1);
		scanf("%d", &pos);
		if (pos < 0 || pos > (NO_OF_BITS - 1))
		{
				printf("Error: Please give bit position in the range 0-%zu\n\n", NO_OF_BITS - 1);
		}
		else
		{
				printf("\n-------Bit present at position %d-------\n%d", pos, GET_BIT(num, pos));
				printf("\n-------After setting bit position %d-------\n", pos);
				SET_BIT(num, pos);
		        PRINT_BITS();
				printf("\n\n-------After clearing bit position %d-------\n", pos);
				CLEAR_BIT(num, pos);
		        PRINT_BITS();
				printf("\n\n");
		}
		return 0;
}

