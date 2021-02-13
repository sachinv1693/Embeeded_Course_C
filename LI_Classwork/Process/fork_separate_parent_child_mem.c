#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
		int x = 10;
		if (fork())
		{
				sleep(1);
				printf("x = %d\n", x);
		}
		else
		{
				x = 20;
		}
		return 0;
}

