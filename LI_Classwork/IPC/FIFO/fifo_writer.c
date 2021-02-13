#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main()
{
		int fd;
		mkfifo("MY_FIFO", 0664);
		fd = open("MY_FIFO", O_WRONLY);
		if (fd == -1)
		{
				perror("open");
				return 1;
		}
		write(fd, "helloworld", 10);
		close(fd);
		return 0;
}

