#include <stdio.h>

int main()
{
		//Input a number
		int num;

		printf("Enter a number: ");
		scanf("%d", &num);

		//Reverse the given number
		int rev=0;
		//Save the given number in a variable
		int saved_num = num;

		while(num > 0)
		{
				//Add up remainder at 10's place
				rev  = (rev*10) +(num%10);
				num /= 10;
		}

		//Check if reversed number is equal to the original number
		if (rev == saved_num)
				printf("%d is a palindrome number\n", saved_num);
		else
				printf("%d is not a palindrome number\n", saved_num);

		return 0;
}
