#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

int main()
{
		int fds[2];
		pipe(fds);
		int pid = fork();
		if (pid)
		{
				close(fds[0]);
				sleep(5);
				write(fds[1], "Hello", 5);
		}
		else
		{
				char buf[11];
				close(fds[1]);
				read(fds[0], buf, 11);
				printf("%s\n", buf);
		}
		return 0;
}

