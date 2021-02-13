#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

int main()
{
		int fd;
		char buf[10];
		fd = open("MY_FIFO", O_RDONLY);
		if (fd == -1)
		{
				perror("open");
				return 1;
		}
		read(fd, buf, 10);
		printf("%s\n", buf);
		close(fd);
		return 0;
}

