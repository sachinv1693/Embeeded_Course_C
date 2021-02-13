/*
   Title = Word Count
   Name = Sachin Vaze
   Date = September 11, 2019
   Description -
   i) Input = As many characters user wants to enter till end of file
   ii) Output = Display Line-count, word-count, char-count
 */

#include <stdio.h>
#include <ctype.h>

int main()
{
		char ch;
		int char_count, word_count, line_count, word_flag;
		char_count = word_count = line_count = word_flag = 0;
		printf("Enter the characters: \n");
		while ((ch = getchar()) != EOF)
		{
				if (ch == '\n')
				{
						line_count++;
				}
				if (ch == '\n' || ch == '\t' || ch >= ' ' && ch <= '@')
				{
						word_flag = 0;
				}
				else if (word_flag == 0)
				{
						word_count++;
						word_flag = 1;
				}
				char_count ++;	
		}
		printf("\nLine Count\tWord Count\tChar Count\n");
		printf("------------------------------------------\n");
		printf("%d\t\t%d\t\t%d\n\n", line_count, word_count, char_count);
		return 0;
}

