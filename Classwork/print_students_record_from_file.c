#include <stdio.h>
#include <stdio_ext.h>

int main()
{
		FILE* fptr;//File pointer to student_data.bin file in read mode
		if ((fptr = fopen("student_data.bin", "r")) == NULL)
		{//Error message and return from program if file cannot be opened
				fprintf(stderr, "Can't open input file student_data.bin\n\n");
				return 1;
		}
		printf("\n----Reading the details from student_data.bin and printing----\n");
		int no_of_students, name_size;//Capture this data from file
		//Get no. of students which is stored right in the beginning of file. Since int is of 4 bytes, the fptr internally moves to location 4.
		//fread(&no_of_students, sizeof(no_of_students), 1, fptr);
		char* student_name;//To read name of the student
		int m_marks, p_marks, c_marks;//Fetch Maths, Physics & Chemistry marks
		float maths_total = 0, phy_total = 0, chem_total = 0;//Store the addition of all subjects total 
		printf("\n----------------------------------------------------\n");
		printf("Name%*sMaths%*sPhysics%*sChemistry", 16, "", 6, "", 4, "");
		printf("\n----------------------------------------------------\n");
		//for (int i = 0; i < no_of_students; i++)//Iterating in loop
		char ch;
		int student_count = 0;//Initially student count is 0
		while((ch = fgetc(fptr)) != EOF)//Iterate till the end of file
		{
				//Move the file pointer to previous byte's address 
				fseek(fptr, -1L, SEEK_CUR);
				//Read every student's name having 15 bytes
				fread(student_name, 15 * sizeof(char), 1, fptr);
				//Read Maths, Physics & Chemistry marks in this correct order
				fread(&m_marks, sizeof(m_marks), 1, fptr);
				fread(&p_marks, sizeof(p_marks), 1, fptr);
				fread(&c_marks, sizeof(c_marks), 1, fptr);
				//Store addition of marks for calculating average
				maths_total += m_marks;
				phy_total += p_marks;
				chem_total += c_marks;
				student_count++;//Increment student count
				//Display the marks read from file
				printf("%-20.15s%5.2d%12.2d%13.2d\n", student_name, m_marks, p_marks, c_marks);
		}
		printf("----------------------------------------------------\n");
		//Display averages
		printf("Average%18.2f%12.2f%13.2f", maths_total / student_count, phy_total / student_count, chem_total / student_count);
		printf("\n----------------------------------------------------\n\n");
		if (ferror(fptr))
		{
				fprintf(stderr, "\nError in reading from file.\n\n");
				clearerr(fptr);
				return 1;
		}
		fclose(fptr);
		return 0;
}

