/*
   Title = Swap two numbers of any data type using macro
   Name = Sachin Vaze
   Date = October 10, 2019
   Description - 
   i) Input = Data type and 2 numbers
   ii) Output = Display the swapped numbers
 */

#include <stdio.h>
#include <stdio_ext.h>

//Macro to swap the numbers. We need to pass the type of the numbers
#define SWAP(t, x, y)           \
{                               \
        t temp = x;             \
		x = y;                  \
		y = temp;               \
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
						\n6. string\
						\nPlease select a datatype option: ");
		scanf("%d", &opt);
		switch(opt)
		{//Don't forget {..} in every case statement for variable declaration
				case 1://int
						{
								int num1, num2;
								printf("\nEnter num1: ");
								scanf("%d", &num1);
								printf("\nEnter num2: ");
								scanf("%d", &num2);
								printf("\n--------Before swapping--------\n");
								printf("num1 = %d, num2 = %d\n", num1, num2);
								SWAP(int, num1, num2);//Get replaced by the macro
								printf("\n---------After swapping--------\n");
								printf("num1 = %d, num2 = %d\n\n", num1, num2);
						}
						break;
				case 2://float
						{
								float num1, num2;
								printf("\nEnter num1: ");
								scanf("%f", &num1);
								printf("\nEnter num2: ");
								scanf("%f", &num2);
								printf("\n--------Before swapping--------\n");
								printf("num1 = %f, num2 = %f\n", num1, num2);
								SWAP(float, num1, num2);//Get replaced by the macro
								printf("\n---------After swapping--------\n");
								printf("num1 = %f, num2 = %f\n\n", num1, num2);
						}
						break;
				case 3://double
						{
								double num1, num2;
								printf("\nEnter num1: ");
								scanf("%lf", &num1);
								printf("\nEnter num2: ");
								scanf("%lf", &num2);
								printf("\n--------Before swapping--------\n");
								printf("num1 = %lf, num2 = %lf\n", num1, num2);
								SWAP(double, num1, num2);//Get replaced by the macro
								printf("\n---------After swapping--------\n");
								printf("num1 = %lf, num2 = %lf\n\n", num1, num2);
						}
						break;
				case 4://long
						{
								long num1, num2;
								printf("\nEnter num1: ");
								scanf("%ld", &num1);
								printf("\nEnter num2: ");
								scanf("%ld", &num2);
								printf("\n--------Before swapping--------\n");
								printf("num1 = %ld, num2 = %ld\n", num1, num2);
								SWAP(long, num1, num2);//Get replaced by the macro
								printf("\n---------After swapping--------\n");
								printf("num1 = %ld, num2 = %ld\n\n", num1, num2);
						}
						break;
				case 5://short
						{
								short num1, num2;
								printf("\nEnter num1: ");
								scanf("%hd", &num1);
								printf("\nEnter num2: ");
								scanf("%hd", &num2);
								printf("\n--------Before swapping--------\n");
								printf("num1 = %hd, num2 = %hd\n", num1, num2);
								SWAP(short, num1, num2);//Get replaced by the macro
								printf("\n---------After swapping--------\n");
								printf("num1 = %hd, num2 = %hd\n\n", num1, num2);
						}
						break;
				case 6://string
						{
								__fpurge(stdin);//Clear input buffer
								char st1[20], st2[20];//Have to store in char array
								printf("\nEnter string 1: ");
								scanf("%[^\n]", st1);
								__fpurge(stdin);//Clear input buffer
								printf("\nEnter string 2: ");
								scanf("%[^\n]", st2);
								char *str1 = st1, *str2 = st2;//pointers to base addresses
								printf("\n--------Before swapping--------\n");
								printf("str1 = %s, str2 = %s\n", str1, str2);
								SWAP(char*, str1, str2);//Get replaced by the macro
								printf("\n---------After swapping--------\n");
								printf("str1 = %s, str2 = %s\n\n", str1, str2);
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
