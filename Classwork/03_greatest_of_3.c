#include <stdio.h>

int main()
{
		int num1, num2, num3;
		//Asking to enter 3 numbers
		printf("Enter the 3 numbers separated by a space: ");
		//Reading the 3 numbers
		scanf("%d %d %d", &num1, &num2, &num3);

		//We are not allowed to use logical operators like && or ||

		if(num1 > num2)
		{
				//num1 is the greatest
				if( num1 > num3)
						printf("Num1(%d) is maximum\n", num1);
				else
						//num3 is the greatest
						printf("Num3(%d) is maximum\n", num3);
		}
		else if(num2 > num1)
		{
				//num2 is the greatest
				if(num2 > num3)
						printf("Num2(%d) is maximum\n", num2);
				else
						//num3 is the greatest
						printf("Num3(%d) is maximum\n", num3);
		}	
		else if(num1 == num2)
		{
				//num3 is lesser than num1 and num2; both being equal
				if(num2 > num3)
						//Display any of num1 or num2
						printf("Num2(%d) is maximum\n", num2);
				//num3 is greatest if greater than num1 and num2; both being equal
				else if (num3 > num2)
						printf("Num3(%d) is maximum\n", num3);
				else
						//All of them are equal
						printf("All the 3 numbers are equal\n");
		}	
		else
				//num3 obviously the greatest
				printf("Num3(%d) is maximum\n", num3);
		return 0;
}

