#include <stdio.h>

double df_to_dc(double fahrenheit);

int main()
{
	double fahrenheit;
	//Input value in fahrenheit
	printf("Enter the value in Fahrenheit: ");
	scanf("%lf", &fahrenheit);

	printf("The value in degree celcius is: %lf\n", df_to_dc(fahrenheit));
	return 0;
}

double df_to_dc(double fahrenheit)
{
		return ((double)5/9 * (fahrenheit - 32));
}
