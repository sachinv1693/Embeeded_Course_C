#include <stdio.h>
#include <stdlib.h>

int main()
{
	FILE *input_fp;
	int ch;
	input_fp = fopen("text_input.txt", "r");

	if (input_fp == NULL)
	{   
		printf("Error: Unable to open input file\n");	
		return 1;
	}
	FILE* output_fp;
	output_fp = fopen("text_output.txt", "w");
	if (output_fp == NULL)
	{   
		printf("Error: Unable to open output file\n");	
		return 1;
	}
	for (; (ch = getc(input_fp)) != EOF; )
	{
			putc(ch, output_fp);
	}

	fclose(output_fp);
	fclose(input_fp);

	return 0;
}
