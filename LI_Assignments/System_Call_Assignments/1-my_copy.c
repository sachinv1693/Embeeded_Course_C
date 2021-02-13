#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <fcntl.h>

int my_copy(int dest_fd)
{
		char y_or_n;//Read user value 'y' or 'n'
		if (dest_fd == -1) 
		{
				if (errno == EEXIST)//If writable file already exists, ask the user if he/she wants to overwrite to the file
				{
						printf("Destination file already exists!\nDo you want to overwrite to destination file? (y / n): ");
						scanf("\n%c", &y_or_n);
						return (y_or_n == 'y') ? 1 : 0;//return 1 for 'yes' & 0 for 'no'
				}
				else
				{
						perror("open");
						exit(1); 
				}
		}
		return 2;
}

int main(int argc, char* argv[])
{
		char src_file_position = 1, dest_file_position = 2, copy_status = 0;
		if (argc < 3)
		{
				printf("Error: Insufficient arguments!\nUsage:- ./my_copy [option] <source file> <destination file>\n\n");
				return -1;
		}
		else if (argc == 3 && !strcmp(argv[1], "-p"))
		{
				printf("Error: Destination file is missing\n\n");
				return -1;
		}
		else if (argc == 4 && !strcmp(argv[1], "-p"))
		{
				copy_status = 1;
				src_file_position = 2;
				dest_file_position = 3;
		}
		else if (argc == 4)
		{
				printf("Error: Please pass '-p' option\nUsage:- ./my_copy [option] <source file> <destination file>\n\n");
				return -1;
		}
		//Src file mode
		mode_t fm = 0664;
		//src file fd - open in read-write mode
		int fd1 = open(argv[src_file_position],  O_RDONLY);
		if (fd1 == -1) 
		{
				perror("open");
				printf("\nError: Source file may not be present in the current directory!\n\n");
				return -1; 
		}
		if (copy_status)//This flag is 1 when -p option is provided
		{
				struct stat src_file_status;
				if (fstat(fd1, &src_file_status) == -1)
				{
						printf("fstat error\n");
						close(fd1);
						return -1;
				}
				fm = src_file_status.st_mode;
		}
		printf("Perm - %o\n", fm & 0777);
		umask(0);
		//dest file fd - create & open in write-only mode
		//int fd2 = open(argv[dest_file_position], O_CREAT | O_WRONLY, fm);
		int fd2 = open(argv[dest_file_position], O_CREAT | O_EXCL | O_WRONLY, fm);
		int file_info = my_copy(fd2);
		switch (file_info)
		{
				case 0://User doesn't want to overwrite
						return 0;
				case 1://User wants to overwrite onto the file, so use O_TRUNC
						fd2 = open(argv[dest_file_position], O_TRUNC | O_WRONLY);
						fchmod(fd2, fm);
						break;
				case 2://simply copy the file
						printf("Destination file %s is created!\n", argv[dest_file_position]);
		}
		char buf[10];//Use a buffer 
		int rd_ret, wr_ret;//Variables to store read & write return sizes 
		do
		{
				rd_ret = read(fd1, buf, 10);
				if (rd_ret == -1)
				{
						perror("open");
						return -1;
				}
				wr_ret = write(fd2, buf, rd_ret);
				if (rd_ret == -1)
				{
						perror("open");
						return -1;
				}
		} while (rd_ret == 10);//Continue copying after each 10 bytes
		printf("Successfully copied data from %s to %s\n", argv[src_file_position], argv[dest_file_position]);
		//Close both file descriptors
		close(fd1);
		close(fd2);
		return 0;
}

