#include <stdio.h>

int main()
{
	int num1,num2;
	//Asking to input 2 numbers
	printf("Enter 2 numbers separated by a space: ");
	//Reading the given 2 numbers
	scanf("%d %d", &num1, &num2);

	//We are not allowed to use logical operators like && or ||

	if (num1 > num2)
		printf("The max of given two numbers is: %d\n", num1);
	else if (num1 < num2)
		printf("The max of given two numbers is: %d\n", num2);
	else
		//Condition when both numbers are equal
		printf("Both the given numbers are equal\n");
	return 0;
}

