/*
   Title = Pre_Post
   Name = Sachin Vaze
   Date = September 05, 2019
   Description -
   i) Input = A number
   ii) Output = Implement pre_increment and post_increment functions using bitwise operators
 */

#include <stdio.h>

//Function prototypes
int pre_increment(int* ptr);
int post_increment(int* ptr);

int main()
{
		//User's choice to continue the program
		char choice;
		do
		{
				int num, opt, i;
				//Input the number
				printf("Enter the number: ");
				scanf("%d", &num);
				//Display menu
				printf("\n-----Function Options-----\n");
				printf("1. pre_increment()\
								\n2. post_increment()\
								\nEnter your choice: ");
				scanf("%d", &opt);
				//Requirement: function should return value to i only
				switch (opt)
				{
						case 1://pre_increment()
								i = pre_increment(&num);
								printf("\ni = %d\nnum = %d\n\n", i, num);
								break;
						case 2://post_increment()
								i = post_increment(&num);
								printf("\ni = %d\nnum = %d\n\n", i, num);
								break;
						default://Invalid selection
								printf("\nError: Invalid option selected!\n\n");
				}
				printf("Do you want to continue? (y / n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');	
		return 0;
}

int pre_increment(int* ptr)
{
		//Let's have a mask initially being 1
		int mask = 1;
		//XOR every bit with 1 till we get 1st 0 in the number from LSB
		while ((*ptr & mask) != 0)
		{
				*ptr ^= mask;
				mask <<= 1;
		}
		//XOR the 1st 0 from LSB with 1 and return
		return *ptr ^= mask;
}

int post_increment(int* ptr)
{
		//Let's return the same number back, but local value should be stored
		int ret = *ptr;
		//Simply call pre_increment to do the addition with 1
		*ptr = pre_increment(ptr);
		return ret;
}

