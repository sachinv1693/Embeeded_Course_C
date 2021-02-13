/*
   Title = Circular Right Left Shift
   Name = Sachin Vaze
   Date = September 03, 2019
   Description -
   i) Input = An intger, no_of_bits to be shifted, option for left or right shift
   ii) Output = Circularly shift the given num by given no_of_bits
 */

#include <stdio.h>

//Function prototypes
int cir_right(int num, int no_of_bits);
int cir_left(int num, int no_of_bits);
void print_n_bits(int num, int no_of_bits);

int main()
{
		//User's choice to continue the program
		char choice;
		do
		{
				int num, no_of_bits, result;
				//Number of bits required to store an integer (System specific)
				int NO_OF_BITS = sizeof(int) * 8;
				//Input the num and no_of_bits
				printf("\nEnter the number: ");
				scanf("%d", &num);
				printf("Binary form of the number: ");
				print_n_bits(num, NO_OF_BITS);
				printf("Enter the number of bits to be circularly shifted: ");
				scanf("%d", &no_of_bits);
				if (no_of_bits > 0 && no_of_bits <= NO_OF_BITS)
				{
				//User choice based on given function options
				int opt;
				printf("\n----Function Options----\
								\n1. cir_right()\
								\n2. cir_left()\n");
				printf("Enter your choice: ");
				scanf("%d", &opt);
				switch (opt)
				{
						case 1://cir_right()
								//Printing message for circular right shift
								printf("\n----Performing Circular Right Shift-----\n");
								//Calling the circular right shift function
								result = cir_right(num, no_of_bits);
								printf("The result is: %d\n", result);
				                printf("Binary form of the result: ");
				                print_n_bits(result, NO_OF_BITS);
								break;
						case 2://cir_left()
								//Printing message for circular_left shift
								printf("\n----Performing Circular Left Shift-----\n");
								//Calling the circular left shift function
								result = cir_left(num, no_of_bits);
								printf("The result is: %d\n", result);
				                printf("Binary form of the result: ");
				                print_n_bits(result, NO_OF_BITS);
								break;
						default://Invalid option
								printf("Error: Invalid option selected!\n\n");
				}
				}
				else
				{
						printf("Error: No. of bits should be in the range of 1 to %d\n\n", NO_OF_BITS);
				}
		printf("Do you want to continue? (y/n): ");
		scanf("\n%c", &choice);
}
while (choice == 'y');	
return 0;
}

int cir_right(int num, int no_of_bits)
{
		//Creating 2 masks to extract given number of bits
		//Use unsigned int since we want to append leading 0s on right shifting
        unsigned int mask1 = 0, mask2 = 0;
		//mask of 1s equivalent to no. of bits 
        mask1 = (~mask1 >> ((sizeof(int) * 8) - no_of_bits));
		//mask stores required bits from the number
        mask1 &= num;
		//Mask of 1s moved to MSB side
		mask1 <<= ((sizeof(int) * 8) - no_of_bits);
		//num gets right shifted
        num >>= no_of_bits;
		//Required initial bits of the num to be made zero by using other mask
        mask2 = ~mask2 >> no_of_bits;
        num &= mask2;
		//num OR with mask1 is the answer
        return num | mask1;
}

int cir_left(int num, int no_of_bits)
{
		//Creating a mask of given number of bits
		//Use unsigned int since we want to append leading 0s on right shifting
		unsigned int mask = 0;
		//Create mask of 0s with given number of bits from MSB side
		mask = (~mask >> no_of_bits);
		//Store the MSB side bits into the mask
		mask = ~mask & num;
		//num gets left shifted
		num <<= no_of_bits;
		//Bring the mask to LSB side
		mask >>= ((sizeof(int) * 8) - no_of_bits);
		//num OR with mask is the answer
		return num | mask;
}

void print_n_bits(int num, int no_of_bits)
{
        for (int i = no_of_bits - 1; i >= 0; i--)//bit_position = no_of_bits - 1
        {
                if (num & (01 << i))
                {
                        printf("1");
                }
                else
                {
                        printf("0");
                }
        }
        printf("\n\n");
        return;
}

