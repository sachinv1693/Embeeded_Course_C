/*
   Title = Demoted Int
   Name = Sachin Vaze
   Date = November 8, 2019
   Description -
   i) Input = A float value
   ii) Output = Display the demoted value of the number
 */

#include <stdio.h>

//Bias value to be subtracted from exponent value
#define BIAS 127

typedef union _float_num
{
		float num;//float value gets stored in union
		struct //structure of same length to get S, E and M values
		{
				unsigned int mantissa : 23;
				unsigned int exponent : 8;
				unsigned int sign : 1;
		}bitfields;//variable of the struct type
}Float_num;//union typedefined as Float_num

int main()
{
		Float_num float_num;//Variable of the union type
		char choice;//User choice to continue the program
		do
		{
				//Input a float value
				printf("Enter a float value: ");
				scanf("%f", &float_num.num);//Store the value inside union
				//Calculate true exponent value
			    int n = float_num.bitfields.exponent - BIAS;
				(float_num.bitfields.sign) ? printf("Demoted value = -%d\n\n", (float_num.bitfields.mantissa >> (23 - n)) | (1 << n)) : printf("Demoted value = %d\n\n", (float_num.bitfields.mantissa >> (23 - n)) | (1 << n));//Calculation to get intger part
				printf("Do you want to continue? (y / n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

