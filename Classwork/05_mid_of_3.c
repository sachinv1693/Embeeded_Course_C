#include <stdio.h>

int main()
{
	//Input 3 numbers
	int num1, num2, num3;
	printf("Enter 3 numbers separated by a space: ");
	scanf("%d %d %d", &num1, &num2, &num3);

	//We are not allowed to use logical operators like && or ||
	
	if (num1 > num2)
	{
		//num2 is middle
		if(num2 > num3)
			printf("Num2(%d) is the middle number\n", num2);
		//num1 is middle
		else if(num3 > num1)
			printf("Num1(%d) is the middle number\n", num1);
		//num1 has to be greater than num3, so num3 is middle
		else
			printf("Num3(%d) is the middle number\n", num3);
	}
	else if (num2 > num1)
	{
		//num1 is middle
		if(num1 > num3)
			printf("Num1(%d) is the middle number\n", num1);
		//num2 is middle
		else if(num3 > num2)
			printf("Num2(%d) is the middle number\n", num2);
		//num2 has to be greater than num3, so num3 is middle
		else
			printf("Num3(%d) is the middle number\n", num3);
	}
	else
		//num1 and num2 or all of them are equal
		printf("Num2(%d) is the middle number\n", num2);

	return 0;
}
