/*
   Title = Bitwise library
   Name = Sachin Vaze
   Date = August 27, 2019
   Description -
   i) Input = A number, no. of bits, bit position, value
   ii) Output = Implement various functions to manipulate and return bit fields
 */

#include <stdio.h>
//#include <math.h>//Used for pow function. Compile using -lm

//Function prototypes
int get_n_bits(int num, int no_of_bits);
int replace_n_bits(int num, int no_of_bits, int val);
int get_n_bits_from_pos(int num, int no_of_bits, int pos);
int replace_n_bits_from_pos(int num, int no_of_bits, int pos, int val);
int toggle_n_bits_from_pos(int num, int no_of_bits, int pos);
void print_n_bits(int num, int no_of_bits);

int main()
{
		//User's choice to continue the program
		char choice;
		do
		{
				int num, no_of_bits, val, pos, opt, result;
				//Display all function options
				printf("\n--------Function Options--------\
								\n1. get_n_bits\
								\n2. replace_n_bits\
								\n3. get_n_bits_from_pos\
								\n4. replace_n_bits_from_pos\
								\n5. toggle_n_bits_from_pos\
								\n6. print_n_bits\n\n");

				//Input the option
				printf("Enter your option: ");
				scanf("%d", &opt);
				//No. of bits required to store an integer (System specific)
				int NO_OF_BITS = sizeof(int) * 8;
				switch (opt)
				{
						case 1://get_n_bits
								printf("\n----Get n bits----\n");
								printf("Enter the number: ");
								scanf("%d", &num);
								printf("Binary form of num: ");
								print_n_bits(num, NO_OF_BITS);
								printf("Enter the number of bits: ");
								scanf("%d", &no_of_bits);
								if (no_of_bits < 1 || no_of_bits > NO_OF_BITS)//Invalid range of no_of_bits
								{
										printf("Error: No. of bits should be in the range of 1 to %d\n\n", NO_OF_BITS);
										break;
								}
								result = get_n_bits(num, no_of_bits);
								printf("\nThe result is: %d\n", result);
								printf("Binary form of result: ");
								print_n_bits(result, NO_OF_BITS);
								break;
						case 2://replace_n_bits
								printf("\n----Replace n bits----\n");
								printf("Enter the number: ");
								scanf("%d", &num);
								printf("Binary form of num: ");
								print_n_bits(num, NO_OF_BITS);
								printf("Enter the number of bits: ");
								scanf("%d", &no_of_bits);
								if (no_of_bits < 1 || no_of_bits > NO_OF_BITS)//Invalid range of no_of_bits
								{
										printf("Error: No. of bits should be in the range of 1 to %d\n\n", NO_OF_BITS);
										break;
								}
								printf("\nEnter val: ");
								scanf("%d", &val);
								printf("Binary form of val: ");
								print_n_bits(val, NO_OF_BITS);
								result = replace_n_bits(num, no_of_bits, val);
								printf("The result is: %d\n", result);
								printf("Binary form of result: ");
								print_n_bits(result, NO_OF_BITS);
								break;
						case 3://get_n_bits_from_pos
								printf("\n----Get n bits from position----\n");
								printf("Enter the number: ");
								scanf("%d", &num);
								printf("Binary form of num: ");
								print_n_bits(num, NO_OF_BITS);
								printf("Enter the number of bits: ");
								scanf("%d", &no_of_bits);
								if (no_of_bits < 1 || no_of_bits > NO_OF_BITS)//Invalid range of no_of_bits
								{
										printf("Error: No. of bits should be in the range of 1 to %d\n\n", NO_OF_BITS);
										break;
								}
								printf("\nEnter bit position: ");
								scanf("%d", &pos);
								if (pos < no_of_bits - 1 || pos > NO_OF_BITS - 1)//Invalid range of bit position
								{
										printf("Error: Position of bits should be in the range of %d to %d\n\n", no_of_bits - 1, NO_OF_BITS - 1);
										break;
								}
								result = get_n_bits_from_pos(num, no_of_bits, pos);
								printf("\nThe result is: %d\n", result);
								printf("Binary form of result: ");
								print_n_bits(result, NO_OF_BITS);
								break;
						case 4://replace_n_bits_from_pos
								printf("\n----Replace n bits from position----\n");
								printf("Enter the number: ");
								scanf("%d", &num);
								printf("Binary form of num: ");
								print_n_bits(num, NO_OF_BITS);
								printf("Enter the number of bits: ");
								scanf("%d", &no_of_bits);
								if (no_of_bits < 1 || no_of_bits > NO_OF_BITS)//Invalid range of no_of_bits
								{
										printf("Error: No. of bits should be in the range of 1 to %d\n\n", NO_OF_BITS);
										break;
								}
								printf("\nEnter bit position: ");
								scanf("%d", &pos);
								if (pos < no_of_bits - 1 || pos > NO_OF_BITS - 1)//Invalid range of bit position
								{
										printf("Error: Position of bits should be in the range of %d to %d\n\n", no_of_bits - 1, NO_OF_BITS - 1);
										break;
								}
								printf("\nEnter val: ");
								scanf("%d", &val);
								printf("Binary form of val: ");
								print_n_bits(val, NO_OF_BITS);
								result = replace_n_bits_from_pos(num, no_of_bits, pos, val);
								printf("\nThe result is: %d\n", result);
								printf("Binary form of result: ");
								print_n_bits(result, NO_OF_BITS);
								break;
						case 5://toggle_n_bits_from_pos
								printf("\n----Toggle n bits from position----\n");
								printf("Enter the number: ");
								scanf("%d", &num);
								printf("Binary form of num: ");
								print_n_bits(num, NO_OF_BITS);
								printf("Enter the number of bits: ");
								scanf("%d", &no_of_bits);
								if (no_of_bits < 1 || no_of_bits > NO_OF_BITS)//Invalid range of no_of_bits
								{
										printf("Error: No. of bits should be in the range of 1 to %d\n\n", NO_OF_BITS);
										break;
								}
								printf("\nEnter bit position: ");
								scanf("%d", &pos);
								if (pos < no_of_bits - 1 || pos > NO_OF_BITS - 1)//Invalid range of bit position
								{
										printf("Error: Position of bits should be in the range of %d to %d\n\n", no_of_bits - 1, NO_OF_BITS - 1);
										break;
								}
								result = toggle_n_bits_from_pos(num, no_of_bits, pos);
								printf("\nThe result is: %d\n", result);
								printf("Binary form of result: ");
								print_n_bits(result, NO_OF_BITS);
								break;
						case 6://print_n_bits
								printf("\n----Print n bits----\n");
								printf("Enter the number: ");
								scanf("%d", &num);
								printf("Binary form of num: ");
								print_n_bits(num, NO_OF_BITS);
								printf("Enter the number of bits: ");
								scanf("%d", &no_of_bits);
								if (no_of_bits < 1 || no_of_bits > NO_OF_BITS)//Invaild range of no_of_bits
								{
										printf("Error: No. of bits should be in the range of 1 to %d\n\n", NO_OF_BITS);
										break;
								}
								printf("\nThe result is: ");
								print_n_bits(num, no_of_bits);
								break;
						default://Invalid option
								printf("Error: Invalid option selected!\n\n");
				}
				printf("Do you want to continue? (y/n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');	
		return 0;
}

int get_n_bits(int num, int no_of_bits)
{
		//Mask having 1s equivalent to no_of_bits
		//int mask = pow(2, no_of_bits) - 1;//Method 1
		//return num & mask;
		//Use unsigned int since we want to append leading 0s on right shifting
		unsigned int mask = 0;
		return num & (~mask >> ((sizeof(int) * 8) - no_of_bits));
}

int replace_n_bits(int num, int no_of_bits, int val)
{
		//Mask having 1s equivalent to no_of_bits
		//int mask = pow(2, no_of_bits) - 1;//Method 1
		//Use unsigned int since we want to append leading 0s on right shifting
		unsigned int mask = 0;
		mask = (~mask >> ((sizeof(int) * 8) - no_of_bits));
		num &= ~mask;
		val &= mask;
		return num | val;
}

int get_n_bits_from_pos(int num, int no_of_bits, int pos)
{
		//Mask having 1s equivalent to no_of_bits
		//int mask = pow(2, no_of_bits) - 1;//Method 1
		//Use unsigned int since we want to append leading 0s on right shifting
		unsigned int mask = 0;
		mask = (~mask >> ((sizeof(int) * 8) - no_of_bits));
		mask <<= pos - no_of_bits + 1;
		num &= mask;
		num >>= pos - no_of_bits + 1;
		return num;
}

int replace_n_bits_from_pos(int num, int no_of_bits, int pos, int val)
{
		//Mask having 1s equivalent to no_of_bits
		//int mask = pow(2, no_of_bits) - 1;//Method 1
		//Use unsigned int since we want to append leading 0s on right shifting
		unsigned int mask = 0;
		mask = (~mask >> ((sizeof(int) * 8) - no_of_bits));
		val &= mask;
		val <<= pos - no_of_bits + 1;
		mask <<= pos - no_of_bits + 1;
		num &= ~mask;
		return num | val;
}

int toggle_n_bits_from_pos(int num, int no_of_bits, int pos)
{
		//Mask having 1s equivalent to no_of_bits
		//int mask = pow(2, no_of_bits) - 1;//Method 1
		//Use unsigned int since we want to append leading 0s on right shifting
		unsigned int mask = 0;
		mask = (~mask >> ((sizeof(int) * 8) - no_of_bits));
		mask <<= pos - no_of_bits + 1;
		return num ^ mask;
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

