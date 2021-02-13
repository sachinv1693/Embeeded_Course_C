#include <stdio.h>
#include <string.h>
#include <libgen.h>
#include <dirent.h>

int main()
{
		char* local_file = "Classwork/text_input.txt";
		char* ts1 = strdup(local_file);
		char* ts2 = strdup(local_file);

		char* dir = dirname(ts1);
		char* filename = basename(ts2);
		printf("Directory: %s\n", dir);
		printf("Filename: %s\n", filename);

		return 0;
}

