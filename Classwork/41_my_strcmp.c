#include <stdio.h>
#include <string.h>

//Function prototype
int my_strcmp(const char *s1, const char *s2);

int main()
{
		char s1[20], s2[20];
		printf("Enter the 1st string: ");
		scanf("%[^\n]", s1);
		getchar();
		printf("\nEnter the 2nd string: ");
		scanf("%[^\n]", s2);
		//Using std function
		printf("\n---Comparing strings using standard function---\n");
		strcmp(s1, s2) ? printf("The given strings are not equal\n\n"): printf("The given strings are equal\n\n");
		printf("---Comparing strings using custom function---\n");
		my_strcmp(s1, s2) ? printf("The given strings are not equal\n\n"): printf("The given strings are equal\n\n");
		return 0;
}

int my_strcmp(const char *s1, const char *s2)
{
		int i = 0;
		while (s1[i] != '\0' && s2[i] != '\0')
		{
				if (s1[i] != s2[i])
				{
						return s1[i] - s2[i];
				}
				i++;
		}
		if (s1[i] == '\0' && s2[i] == '\0')
		{
				return 0;
		}
}

