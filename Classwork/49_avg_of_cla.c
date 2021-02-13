#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv)
{
		if (argc > 1)
		{
				int sum = 0, i = 1;
				while (argv[i] != NULL)
				{
						sum += atoi((const char*) argv[i++]);
				}
				printf("The average of the command line arguments: %f\n", (float) sum / (argc - 1));
		}
		else
		{
				printf("No command line arguments passed\n");
		}
		return 0;
}

