/*
   Title = File copy
   Name = Sachin Vaze
   Date = October 18, 2019
   Description - 
   i) Input = Name of input and output file
   ii) Output = Copy the contents of input file to output file
*/

#include <stdio.h>
#include <stdio_ext.h>

int main(int argc, char** argv)
{
		if (argc == 1)//No command line arguments
		{
				printf("No command line argument is given. Please pass an input file name and an output file name.\n\n");
		}
		else if (argc == 2)//Only source file is given
		{
				printf("Destination file is not given. Please pass one more argument as destination file name.\n\n");
		}
		else if (argc == 3)//Exact number of command line arguments
		{
				FILE *ip_fptr, *op_fptr;
				ip_fptr = fopen(argv[1], "r");
				if (ip_fptr == NULL)
				{
						printf("Unable to open the file %s\n", argv[1]);
						return 1;
				}
				op_fptr = fopen(argv[2], "w+");
				if (op_fptr == NULL)
				{
						printf("Unable to open the file %s\n", argv[2]);
						return 1;
				}
				char ch;
				char text;
				while ((ch = fgetc(ip_fptr)) != EOF)
				{
						fseek(ip_fptr, -1L, SEEK_CUR);
						fread(&ch, sizeof(ch), 1, ip_fptr);
						fwrite(&ch, sizeof(ch), 1, op_fptr);
				}
				printf("\nThe contents of file %s have been successfully copied into %s\n\n", argv[1], argv[2]);
				fclose(ip_fptr);
				fclose(op_fptr);
		}
		else
		{
				printf("Invalid number of command line arguments. Please pass an input file name and an output file name.\n\n");
		}
		return 0;
}
