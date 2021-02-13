#include <stdio.h>
#include <stdio_ext.h>//for __fpurge()
#include <string.h>

//Type define a structure 'struct Student' to a name 'Student'
typedef struct Student
{
		char name[16];//Name of student, only 15 characters + '\0' is allowed
		int m_marks, p_marks, c_marks;//Physics, Chemistry, Maths marks
}Student;

//Function prototypes
void read_data(Student* s, int no_of_students, FILE* fptr);//For reading the student information

int main()
{
		int no_of_students;//Input no. of students
		printf("\nEnter the number of students: ");
		scanf("%d", &no_of_students);
		if (no_of_students > 0)//Validity check for no. of. students
		{	
				FILE* fptr;
				int num;
				//Let's open the file in w+ mode so that it gets created if it doesn't exist or it will get overwritten with new details.
				if ((fptr = fopen("student_data.bin", "w+")) == NULL)
				{
						fprintf(stderr, "\nCan't open input file student_data.bin\n\n");
						return 1;
				}
				printf("\nYour entries will be stored in file named 'student_data.bin'. Note that only 15 characters in a student's name will be used during printing.\n\n");
				Student student[no_of_students];//Define an array of structues
				read_data(student, no_of_students, fptr);//Call to read_data()
				if (ferror(fptr))
				{
						fprintf(stderr, "Error in writing onto the file.\n\n");
						clearerr(fptr);
						return 1;
				}
				fclose(fptr);
				printf("\nThe data has been successfully written into 'student_data.bin'.\nPlease compile and execute 'print_students_record_from_file.c' for printing.\n\n");
		}
		else
		{//Error message
				printf("Error: Invalid number of students\n\n");
		}

		return 0;
}

void read_data(Student* s, int no_of_students, FILE* fptr)//Receives base address of the array of structures and no. of students
{
		int name_size;
		for (int i = 0; i < no_of_students; i++)//Iterate over total no. of students
		{
				__fpurge(stdin);//Clear input buffer in every iteration
				printf("Enter the name of student %d: ", i + 1);
				scanf("%15[^\n]", s[i].name);//Enter student's name
				__fpurge(stdin);//Clear input buffer for exceeding characters
				fwrite(s[i].name, 15, 1, fptr);
				printf("Enter P, C and M marks: ");//Enter student's marks
				scanf("%d %d %d", &s[i].p_marks, &s[i].c_marks, &s[i].m_marks);
				fwrite(&s[i].m_marks, sizeof(s[i].m_marks), 1, fptr);
				fwrite(&s[i].p_marks, sizeof(s[i].p_marks), 1, fptr);
				fwrite(&s[i].c_marks, sizeof(s[i].c_marks), 1, fptr);
		}
}

