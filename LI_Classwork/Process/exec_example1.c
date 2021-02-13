#include <stdio.h>
#include <unistd.h>

int main(int argc, char* argv[], char* envp[])
{
		//char* const argv[4] = {"ls", "-l", "-a", "NULL"};
		printf("Before exec\n");
		//execlp("ls", "ls", NULL);
		//execl("/bin/ls", "ls", NULL);
		//execle("ls", "ls", NULL);
		execv("/bin/ls", argv + 1);
		printf("After exec\n");
		return 0;
}

