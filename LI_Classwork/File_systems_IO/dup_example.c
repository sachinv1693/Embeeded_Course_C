#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <fcntl.h>

extern int errno;

int main()
{
		int fd1, copy_of_stdout, new;
		fd1 = open("redirect.txt", O_CREAT | O_WRONLY, 0664);
		new = dup(fd1);
		if (fd1 == -1)
		{
				perror("open");
				return -1;
		}
		copy_of_stdout = dup(fd1);
		close(1);
		printf("file descriptor value of file redirect.txt: %d\n", fd1);
		fflush(stdout);
		close(1);
		close(fd1);
		printf("file descriptor value of file redirect.txt: %d\n", fd1);
		return 0;
}

