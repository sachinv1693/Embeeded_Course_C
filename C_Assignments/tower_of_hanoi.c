/*
   Title = Tower of Hanoi
   Name = Sachin Vaze
   Date = October 1, 2019
   Description -
   i) Input = No. of disks
   ii) Output = Print all the steps to create final solution
 */

#include <stdio.h>

//Function prototype	
void tower(int n, char* from, char* to, char* temp);

int main()
{
		char choice;
		do
		{
				//Input number of disks
				int no_of_disks;
				printf("Enter no. of disks: ");
				scanf("%d", &no_of_disks);
				printf("\n---Follow the solution steps shown below---\n");
				tower(no_of_disks, "Source", "Destination", "temp");
				printf("Do you want to continue? (y / n): ");
				scanf("\n%c", &choice);
		}
		while (choice == 'y');
		return 0;
}

void tower(int n, char* from, char* to, char* temp)
{
		if (n == 1)
		{
				printf("Move disk 1 from %s to %s\n\n", from, to);
				return;
		}
		tower(n - 1, from, temp, to);
		printf("Move disk %d from %s to %s\n", n, from, to);
		tower(n - 1, temp, to, from);
}

