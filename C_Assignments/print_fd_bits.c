/*
   Title = Print bits of float & double
   Name = Sachin Vaze
   Date = October 04, 2019
   Description -
   i) Input = datatype choice and a number
   ii) Output = Display the bits of the number as per IEEE standard
 */

#include <stdio.h>
#include <stdio_ext.h>
#include <stdlib.h>

//Function prototype	
void print_bits(void* p, int type_size);

int main()
{
		char choice;//User choice to continue the program (y / n)
		do
		{
				int opt;
				//Input the option
				printf("\n----Datatype options----\
								\n1. float\
								\n2. double\
								\nPlease select an option: ");
				scanf("%d", &opt);
				switch (opt)//User option
				{
						case 1://float
								{
										float num;
										printf("\nEnter a float value: ");
										scanf("%f", &num);
										//Call the function
										print_bits(&num, sizeof(float));
								}
								break;
						case 2://double
								{
										double num;
										printf("\nEnter a double value: ");
										scanf("%lf", &num);
										//Call the function
										print_bits(&num, sizeof(double));
								}
								break;
						default://Invalid option
								printf("\nError: Invalid option selected!");
				}
				printf("\n\nDo you want to continue? (y / n): ");
				__fpurge(stdin);
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

void print_bits(void* p, int type_size)
{
		printf("\nSign\tExponent\tMantissa");//Heading in Display
		printf("\n----------------------------------------------------------------------------\n");
		if (type_size == sizeof(float))//float
		{
				for (int i = type_size * 8 - 1; i >= 0; i--)
				{
						//typecast with int pointer for bitwise operation
						(*(int*)p & 1 << i) ? printf("1") : printf("0");
						//Keep spacing between sign, exponent and mantissa
						(i == type_size * 8 - 1) ? printf("\t") : (i == type_size * 8 - 9) ? printf("\t"): i;//32-bit format
				}
		}
		else
		{//double
				for (int i = type_size * 8 - 1; i >= 0; i--)
				{
						//typecast with long int pointer for bitwise operation
						(*(long int*)p & (long int)1 << i) ? printf("1") : printf("0");
						//Keep spacing between sign, exponent and mantissa
						(i == type_size * 8 - 1) ? printf("\t") : (i == type_size * 8 - 12) ? printf("\t"): i;//64-bit format
				}
		}
}

