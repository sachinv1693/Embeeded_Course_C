/*
   Title = File concatinate
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
		if (argc == 1)//Display user input-output
		{
				char ch;
				fprintf(stdout, "\n----Standard Input Output Display till EOF----\n");
				while ((ch = fgetc(stdin)) != EOF)
				{
						putchar(ch);
				}
		}
		else if (argc == 3)//Copy from input file to output file
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
		else if (argc == 4)//Exact number of command line arguments
		{
				FILE *fp_1, *fp_2, *fp_3;
                fp_1 = fopen(argv[1], "r");
                if (fp_1 == NULL)
                {
                        printf("Unable to open the file %s\n", argv[1]);
                        return 1;
                }
                fp_3 = fopen(argv[2], "r");
                if (fp_3 == NULL)
                {
                        printf("Unable to open the file %s\n", argv[2]);
                        return 1;
                }
                fp_2 = fopen(argv[3], "w+");
                if (fp_2 == NULL)
                {
                        printf("Unable to open the file %s\n", argv[3]);
                        return 1;
                }
                char ch; 
                while ((ch = fgetc(fp_1)) != EOF)
                {
                        fseek(fp_1, -1L, SEEK_CUR);
                        fread(&ch, sizeof(ch), 1, fp_1);
                        fwrite(&ch, sizeof(ch), 1, fp_2);
				}
                while ((ch = fgetc(fp_3)) != EOF)
                {
                        fseek(fp_3, -1L, SEEK_CUR);
                        fread(&ch, sizeof(ch), 1, fp_3);
                        fwrite(&ch, sizeof(ch), 1, fp_2);
				}
				printf("\nThe file %s contains contents of %s + contents of %s\n\n", argv[3], argv[1], argv[2]);
				fclose(fp_1);
				fclose(fp_2);
				fclose(fp_3);
		}
		else
		{
				printf("Error: Invalid number of command line arguments.\n\n");
		}
		return 0;
}
