#include <stdio.h>

#define SWAP(type, num1, num2)        \
{                                     \
        type temp = num1;             \
		num1 = num2;                  \
		num2 = temp;                  \
}

int main()
{
		int opt;
		printf("\n-----Type Options-----\
						\n1. int\
						\n2. float\
						\n3. double\
						\n4. long\
						\n5. short\
						\nPlease select a data type option: ");
		scanf("%d", &opt);
		switch(opt)
		{
				case 1://int
						{
								int num1, num2;
								printf("\nEnter int value 1: ");
								scanf("%d", &num1);
								printf("\nEnter int value 2: ");
								scanf("%d", &num2);
								SWAP(int, num1, num2);
								printf("\n-----After swapping-----\n");
								printf("num1 = %d, num2 = %d\n\n", num1, num2);
						}
						break;
				case 2://float
						{
								float num1, num2;
								printf("\nEnter int value 1: ");
								scanf("%f", &num1);
								printf("\nEnter int value 2: ");
								scanf("%f", &num2);
								SWAP(float, num1, num2);
								printf("\n-----After swapping-----\n");
								printf("num1 = %f, num2 = %f\n\n", num1, num2);
						}
						break;
				case 3://double
						{
								double num1, num2;
								printf("\nEnter int value 1: ");
								scanf("%lf", &num1);
								printf("\nEnter int value 2: ");
								scanf("%lf", &num2);
								SWAP(double, num1, num2);
								printf("\n-----After swapping-----\n");
								printf("num1 = %lf, num2 = %lf\n\n", num1, num2);
						}
						break;
				case 4://long
						{
								long num1, num2;
								printf("\nEnter int value 1: ");
								scanf("%ld", &num1);
								printf("\nEnter int value 2: ");
								scanf("%ld", &num2);
								SWAP(long, num1, num2);
								printf("\n-----After swapping-----\n");
								printf("num1 = %ld, num2 = %ld\n\n", num1, num2);
						}
						break;
				case 5://short
						{
								short num1, num2;
								printf("\nEnter int value 1: ");
								scanf("%hd", &num1);
								printf("\nEnter int value 2: ");
								scanf("%hd", &num2);
								SWAP(short, num1, num2);
								printf("\n-----After swapping-----\n");
								printf("num1 = %hd, num2 = %hd\n\n", num1, num2);
						}
						break;
				default:printf("Error: Invalid option selected!\n\n");
		}

		return 0;
}
