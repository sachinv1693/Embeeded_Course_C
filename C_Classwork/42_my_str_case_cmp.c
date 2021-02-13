#include <stdio.h>
#include <string.h>

//Function prototype
int my_str_case_cmp(const char *s1, const char *s2);

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
		strcasecmp(s1, s2) ? printf("The given strings are not equal\n\n"): printf("The given strings are equal\n\n");
		printf("---Comparing strings using custom function---\n");
		my_str_case_cmp(s1, s2) ? printf("The given strings are not equal\n\n"): printf("The given strings are equal\n\n");
		return 0;
}

int my_str_case_cmp(const char *s1, const char *s2)
{
		int i = 0;
		char c1, c2;
		while (s1[i] != '\0' && s2[i] != '\0')
		{
				c1 = s1[i];
				c2 = s2[i];
				if(s1[i] >= 'A' && s1[i] <= 'Z')
				{
						c1 += 32;
				}
				if(s2[i] >= 'A' && s2[i] <= 'Z')
				{
						c2 += 32;
				}
				if (c1 != c2)
				{
						return c1 - c2;
				}
				i++;
		}
		if (s1[i] == '\0' && s2[i] == '\0')
		{
				return 0;
		}
}

