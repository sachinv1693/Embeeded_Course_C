#include <stdio.h>
#include <string.h>

//Function prototype
int my_strncmp(const char *s1, const char *s2, size_t n);

int main()
{
		int n;
		char s1[50], s2[50];
		printf("Enter the 1st string: ");
		scanf("%[^\n]", s1);
		getchar();
		printf("\nEnter the 2nd string: ");
		scanf("%[^\n]", s2);
		printf("\nEnter the number of characters you want to compare: ");
		scanf("%d", &n);
		//Using std function
		printf("\n---Comparing strings using standard function---\n");
		strncmp(s1, s2, n) ? printf("The given strings are not equal\n\n"): printf("The given strings are equal\n\n");
		printf("---Comparing strings using custom function---\n");
		my_strncmp(s1, s2, n) ? printf("The given strings are not equal\n\n"): printf("The given strings are equal\n\n");
		return 0;
}

int my_strncmp(const char *s1, const char *s2, size_t n)
{
		int i = 0;
		while (i < n && (s1[i] != '\0' || s2[i] != '\0'))
		{
				if (s1[i] != s2[i])
				{
						return s1[i] - s2[i];
				}
				i++;
		}
		return 0;
}

