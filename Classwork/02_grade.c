#include <stdio.h>

int main()
{
	int marks;
	printf("Enter the %% marks obtained by the student: ");
	scanf("%d", &marks);

	//We are not allowed to use logical operators like && or ||

	//If % marks entered are less than or equal to 100
	if (marks <= 100)
	{
		if (marks > 90)
			printf("Grade: A+\n");
		else if (marks > 75)
			printf("Grade: A\n");
		else if (marks > 65)
			printf("Grade: B+\n");
		else if (marks > 60)	
			printf("Grade: B\n");
		else if (marks > 50)
			printf("Grade: C\n");
		else if (marks >= 0)
			printf("Grade: F\n");
		else
			//case for % marks less than 0
			printf("Invalid entry\n");
	}
	else
		//case for % marks greater than 100
		printf("Invalid entry\n");
	return 0;
}

