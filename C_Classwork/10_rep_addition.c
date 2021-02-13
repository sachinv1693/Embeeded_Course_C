#include <stdio.h>

int main()
{	
		//Input 2 non-negative integers	
		int num1, num2;
		printf("Enter two non-negative integers to be multiplied separated by space: ");
		scanf("%d %d", &num1, &num2);

		//We are not allowed to use multiplication operator * in this program
		//Store the multiplication answer in a variable
		int addition=0;

		//Do the addition of num1 repeatatively num2 times
		for (int i = 1; i <= num2; i++)
		{
				addition += num1;
		}

		//Print result
		printf("%d x %d = %d\n", num1, num2, addition);

		return 0;
}
