/*
   Title = Define a macro SIZEOF(x) without using sizeof operator
   Name = Sachin Vaze
   Date = October 11, 2019
   Description - 
   i) Input = Data type options and an input
   ii) Output = Display size of the input in bytes
 */

#include <stdio.h>

//Macro to get the size of the input.
#define SIZEOF(x)                                     \
{                                                     \
		printf("%ld byte\n\n", (char*)(&x + 1) - (char*)(&x));   \
}

int main()
{
		char choice; //User choice to continue the program (y / n)
		do
		{
		int opt;//User's choice of datatypes
		printf("\n-----Datatype Options-----\
						\n1. int\
						\n2. float\
						\n3. double\
						\n4. long\
						\n5. short\
						\n6. unsigned int\
						\n7. char\
						\nPlease select a datatype option: ");
		scanf("%d", &opt);
		switch(opt)
		{//Don't forget {..} in every case statement for variable declaration
				case 1://int
						{
								int input;
								printf("\nInput an integer: ");
								scanf("%d", &input);
								printf("\n--------Size of the input--------\n");
								printf("\nSize of the input: ");
								SIZEOF(input);
						}
						break;
				case 2://float
						{
								float input;
								printf("\nInput an float value: ");
								scanf("%f", &input);
								printf("\n--------Size of the input--------\n");
								printf("\nSize of the input: ");
								SIZEOF(input);
						}
						break;
				case 3://double
						{
								double input;
								printf("\nInput a double value: ");
								scanf("%lf", &input);
								printf("\nSize of the input: ");
								SIZEOF(input);
						}
						break;
				case 4://long
						{
								long input;
								printf("\nInput a long value: ");
								scanf("%ld", &input);
								printf("\nSize of the input: ");
								SIZEOF(input);
						}
						break;
				case 5://short
						{
								short input;
								printf("\nInput a short value: ");
								scanf("%hd", &input);
								printf("\nSize of the input: ");
								SIZEOF(input);
						}
						break;
				case 6://unsigned int
						{
								unsigned int input;
								printf("\nInput an unsigned int value: ");
								scanf("%u", &input);
								printf("\nSize of the input: ");
								SIZEOF(input);
						}
						break;
				case 7://short
						{
								char input;
								printf("\nInput a character: ");
								scanf("\n%c", &input);
								printf("\nSize of the input: ");
								SIZEOF(input);
						}
						break;
				default:printf("Error: Invalid option selected!\n\n");
		}
		printf("Do you want to continue ? (y / n): ");
		scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}
