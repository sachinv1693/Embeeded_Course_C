#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
		if (fork() && fork())
		{
				printf("Hello\n");
		}
		else
		{
				printf("World\n");
		}
		return 0;
}

