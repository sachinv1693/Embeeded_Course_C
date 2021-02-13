#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <fcntl.h>

extern int errno;

int main(int argc, char* argv[])
{
		char y_or_n;
		if (argc < 3)
		{
				printf("Please pass filename as an argument!\n\n");
				return -1;
		}
		int fd1 = open(argv[1], O_RDONLY);
		if (fd1 == -1)
		{
				perror("open");
				return -1;
		}
		printf("file descriptor value of file %s: %d\n", argv[1], fd1);
		//int fd2 = open(argv[2], O_CREAT | O_EXCL | O_WRONLY, 0664);
		int fd2 = open(argv[2], O_CREAT | O_WRONLY, 0664);
		printf("file descriptor value of writable file %s: %d\n", argv[2], fd2);
		if (fd2 == -1)
		{
				if (errno == EEXIST)
				{
						printf("Do you want to overwrite to %s?", argv[1]);
						scanf("\n%c", &y_or_n);
						if (y_or_n != 'y')
								return 0;
						fd2 = open(argv[2], O_TRUNC | O_WRONLY);
						if (fd1 == -1)
						{
								perror("open");
								return -1;
						}
				}
		}
		char buf[10];
		int rd_ret, wr_ret;
		do
		{
				rd_ret = read(fd1, buf, 10);
				printf("read-%s\n", buf);
				if (rd_ret == -1)
				{
						perror("open");
						return -1;
				}
				wr_ret = write(fd2, buf, rd_ret);
				printf("write-%s\n",buf);
				if (rd_ret == -1)
				{
						perror("open");
						return -1;
				}
		} while (rd_ret == 10);
		printf("Successfully copied data from %s to %s\n", argv[1], argv[2]);

		return 0;
}

