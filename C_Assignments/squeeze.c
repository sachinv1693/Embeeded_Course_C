#include <stdio.h>
#include <stdio_ext.h>
#include <string.h>

//Function prototype
void squeeze(char* s1, const char* s2);

int main()
{
		//User choice to continue the program
		char choice;
		do
		{
				//char arrays to store haystack and needle strings
				char str1[80], str2[80];
				//Input string 1
				printf("Enter string 1: ");
				scanf("%[^\n]", str1);
				//Clear input buffer
				__fpurge(stdin);
				//Input string 2
				printf("Enter string 2: ");
				scanf("%[^\n]", str2);
				printf("\n----------After squeezing----------\n");
				squeeze(str1, str2);
				printf("String 1 becomes: %s\n\n", str1);
				printf("Do you want to continue? (y / n): ");
				scanf("\n%c", &choice);
				__fpurge(stdin);
		}
		while (choice == 'y');
		return 0;
}

void squeeze(char* s1, const char* s2)
{
		//iterator scanning each element of string 2
		int i = 0;
		while (s2[i] != '\0')
		{
				// To retain the space
#if(1)
				if (s2[i] == ' ')
				{
						i++;
						continue;
				}
#endif				 
				//Scan the obtained element from string 2 in string 1
				int j = 0;
				while (s1[j] != '\0')
				{
						if (s1[j] == s2[i])
						{
								//Adjust string 1
								int k = j;
								while (s1[k + 1] != '\0')
								{
										s1[k] = s1[k + 1];
										k++;
								}
								s1[k] = '\0';
						}
						//Keep adjusting string 1 till there are consecutive required elements
						if (s1[j] == s2[i])
						{
								continue;
						}
						j++;
				}
				i++;
		}

}

