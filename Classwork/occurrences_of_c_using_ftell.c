#include <stdio.h>
#include <stdlib.h>

int main()
{
	FILE *fptr;
	char ch; 

	fptr = fopen("text.txt", "r");

	/* Need to do error checking on fopen() */

	printf("File offset is at -> %ld\n\n", ftell(fptr));
	printf("--> The content of file is <--\n");

	while ((ch = fgetc(fptr)) != EOF)
	{
		if (ch == 'c')
		{
				printf("%ld\n", ftell(fptr));
		}
	}

	fclose(fptr);

	return 0;
}
