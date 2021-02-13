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
				exec("ls");
				dup2(fds[1], fds[0]);
				write(fds[1]);
		}
		else
		{
				char buf[11];
				exec("wc");
				close(fds[1]);
				read(fds[0], buf, 11);
				printf("%s\n", buf);
		}
		return 0;
}

