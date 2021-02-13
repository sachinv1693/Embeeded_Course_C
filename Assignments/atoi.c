/*
   Title = getword, atoi, itoa
   Name = Sachin Vaze
   Date = September 16, 2019
   Description - 
   i) Input = User option, A string
   ii) Output = Implement the functions to calculate string length, ascii to int and int to ascii
 */

#include <stdio.h>
#include <stdio_ext.h>

//Function prototype
int getword(char* word);
int atoi(const char* s);
char* itoa(int n, char* s);
int tens(int power);

int main()
{
		//User choice to continue the program
		char choice;
		do
		{
				//Function option
				int opt, integer;
				printf("\n---Function Options---\
								\n1. getword()\
								\n2. atoi()\
								\n3. itoa()\n");
				printf("Select the function option: ");
				scanf("%d", &opt);
				__fpurge(stdin);
				char str[80];
				switch (opt)
				{
						case 1://getword()
								printf("\nEnter the string: ");
								scanf("%[^\n]", str);
								printf("The length of the string is: %d\n\n", getword(str));
								break;
						case 2://atoi()
								printf("Enter a non-negative numeric string: ");
								scanf("%[^\n]", str);
								__fpurge(stdin);
								printf("String to integer is: %d\n\n", atoi(str));
								break;
						case 3://itoa()
								printf("Enter a non-negative integer: ");
								scanf("%d", &integer);
							    __fpurge(stdin);
								char st[80];
								printf("Integer to string is: %s\n\n", itoa(integer, st));
								break;
						default://Invalid entry
								printf("\nError: Invalid option selected!\n\n");
				}

				printf("Do you want to continue ? (y / n): ");
				scanf("\n%c", &choice);
				__fpurge(stdin);
		}
		while (choice == 'y');
		return 0;
}

int getword(char* word)
{
		//count to store the string length
		int count = 0;
		//Till we reach at NUL character, scan the string and increment count
		while (*word++ != '\0')
		{
				count++;
		}
		return count;
}

int atoi(const char* s)
{
		//If initial character is not numerical then return 0
		if (s[0] < '0' || s[0] > '9')
		{
				return 0;
		}
		//Till we have no NUL character and the character entry is numerical get numeric integer value of the digit by subtracting 48 and then adjust it into proper ten's place
		int integer = 0, i = 0;
		while (s[i] != '\0' && (s[i] >= '0' && s[i] <= '9'))
		{
				integer = integer * 10 + (s[i++] - 48);
		}
		return integer;
}

char* itoa(int n, char* s)
{
		//Set no. of digits as 0 and copy the iteger into another number x
		int no_of_digits = 0, x = n;
		//calculate no. of digits
		while (x != 0)
		{
				no_of_digits++;
				//keep dividing the number till it is not 0
				x /= 10;
		}
		//After coming out of the loop, x = 0, let's use the same to iterate.
		//Till no. of bits is not 0, calculate 10s place of the number, divide it by its proper 10s value and again find the unit's place value. Finally add 48 to convert numeric digit into char value.
		while (no_of_digits != 0)
		{
				no_of_digits--; 
				s[x++] = ((n / tens(no_of_digits)) % 10) + 48 ;
		}
		//Append ;ast character as NUL character
		s[x] = '\0';
		return s;
}

int tens(int power)
{
		if (power == 0)
		{
				return 1;
		}
		else
		{
				return 10 * tens(power - 1);
		}
}

