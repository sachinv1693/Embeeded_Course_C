/*
Title = Size of types
Name = Sachin Vaze
Date = August 9, 2019
Description = i) Input = None
              ii) Output = Print size of every data type
*/

#include <stdio.h>

int main()
{
		printf("\n--------Displaying size of data types in C--------\n\n");
		printf("Size of int = %ld bytes\n", sizeof(int));
		printf("Size of char = %ld byte\n", sizeof(char));
		printf("Size of float = %ld bytes\n", sizeof(float));
		printf("Size of double = %ld bytes\n", sizeof(double));
		printf("Size of unsigned int = %ld bytes\n", sizeof(unsigned int));
		printf("Size of unsigned char = %ld byte\n", sizeof(unsigned char));
		printf("Size of signed int = %ld bytes\n", sizeof(signed int));
		printf("Size of signed char = %ld byte\n", sizeof(signed char));
		printf("Size of long int = %ld bytes\n", sizeof(long int));
		printf("Size of short int = %ld bytes\n", sizeof(short int));
		printf("Size of long double = %ld bytes\n", sizeof(long double));
		return 0;
}

