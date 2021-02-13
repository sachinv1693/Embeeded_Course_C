#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <errno.h>
#include <fcntl.h>

char ch,//A character to be read from file 
	 flag_c = 0,//Flag to check if -c option is provided
	 flag_l = 0,//Flag to check if -l option is provided
	 flag_w = 0;//Flag to check if -w option is provided

int word_count(int fd, int* lines, int* words, int* bytes)
{
		int rd_ret,//Return value from read() function
			word_flag = 0;//A flag to find if a word is found or not
		do
		{
				rd_ret = read(fd, &ch, 1);//Read each character
				if (ch == '\n')//Check for new line & increment line count
				{
						++(*lines);
				}
				if (ch == '\n' || ch == '\t' || ch == ' ')//Check for spaces
				{
						word_flag = 0;//Keep word flag 0
				}
				else if (word_flag == 0)//Character after spacing is new word
				{
						++(*words);//Increment word count
						word_flag = 1;//Turn ON word flag
				}
				++(*bytes);//Increment byte count every time
		} while (rd_ret == 1);//Continue till return value from read() is 1
		if (ch != '\n')//Increment line count if '\n' is not entered in the end
				++(*lines);
}

void print_values(int lines, int words, int bytes)
{
		//Print values demanded as per given option
		if (flag_l)
				printf("\t%d\t", lines);
		if (flag_w)
				printf("%d\t", words);
		if (flag_c)
				printf("%d\t", bytes);
		if (!flag_c && !flag_l && !flag_w)
				printf("\t%d\t%d\t%d\t", lines, words, bytes);
}

int main(int argc, char* argv[])
{
		int opt,//option to be read from getopt() function
			bytes = 0,//Byte count
			words = 0,//Word count
			lines = 0,//Line count
			total_bytes = 0,//Total byte count
			total_words = 0,//Total word count
			total_lines = 0,//Total line count
			file_count = 0,//Flag to know if file is provided by user
			fd;//File descriptor to be accessed from every file
		while ((opt = getopt(argc, argv, "lcw")) != -1) 
		{
				switch (opt) 
				{
						case 'c'://Character count
								flag_c = 1;
								break;
						case 'l'://Line count
								flag_l = 1;
								break;
						case 'w'://Word count
								flag_w = 1;
								break;
						default: /* Invalid count */
								return -1;
				}
		}
		//Check the arguments starting from argv[1]
		for (int l = 1; l < argc; l++)
		{
				//Identify the file by '.' format
				if (strstr(argv[l], ".") != NULL)
				{
						file_count++;//Turn ON flag indicating at least 1 file is provided
						fd = open(argv[l], O_RDONLY);//Open the file in read-only mode
						if (fd == -1)
						{
								perror("open");
								return -1;
						}
						//Call to function. Pass fd and address of count variables
						word_count(fd, &lines, &words, &bytes);
						//Print answer
						//Don't forget to reduce line count and byte count as it is incremented by the new-line buffer character in our program 
						print_values(lines -= 1, words, bytes -= 1);
						total_lines += lines;
						total_words += words;
						total_bytes += bytes;
						//Output for particular file
						printf("%s\n", argv[l]);
						//Reset count values
						lines = words = bytes = 0;
						close(fd);//Close the respective file
				}
		}
		if (!file_count)//If no file is provided, consider stdin
		{
				//Pass fd = 0 i.e. fd of stdin to word_count() function
				word_count(0, &lines, &words, &bytes);
				//Print answer
				print_values(lines - 1, words, bytes - 1);
		}
		else if (file_count > 1)
		{
				print_values(total_lines, total_words, total_bytes);
				printf("total\n");
		}
		return 0;
}

