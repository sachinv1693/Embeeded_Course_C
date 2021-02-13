#include <stdio.h>
#include <stdlib.h>

int main()
{
		printf("Execute ls command\n");
		system("ls");
		printf("ls executed\n");
		printf("Execute ps -el command\n");
		system("ps -el");
		printf("ps -el executed\n");
		return 0;
}

