#include <stdio.h>

int main()
{
		//Input 2 numbers and an operator in between
		int num1, num2;
		char opr;
		printf("Enter the operation you want to perform(eg. 10 + 5): ");
		scanf("%d %c %d", &num1, &opr, &num2);

		//We are not allowed to use logical operators like && or ||

		switch(opr)
		{
				case '+'://Addition
						printf("Answer: %d\n", num1+num2);
						break;
				case '-'://Subtraction
						printf("Answer: %d\n", num1-num2);
						break;
				case '*'://Multiplication
						printf("Answer: %d\n", num1*num2);
						break;
				case '/'://Division
						if (num2 != 0)//Check if divisor is not zero
								//typecasting the answer into a float value
								printf("Answer: %f\n", (float) num1/num2);
						else
								//Error message
								printf("Error: Division by zero\n");
						break;
				case '%'://Modulo operation
						//Check if divisor is not zero
						if (num2 != 0)
								printf("Answer: %d\n", num1%num2);
						else
								//Error message
								printf("Error: Division by zero\n");
						break;
				default://Other operator
						printf("Invalid operator!!\nPlease use one of these: +,-,*,/,%%\n");
		}
		return 0;
}

