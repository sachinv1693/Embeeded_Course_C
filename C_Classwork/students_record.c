#include <stdio.h>
#include <stdio_ext.h>//for __fpurge()

//Type define a structure 'struct Student' to a name 'Student'
typedef struct Student
{
		char name[16];//Name of student, only 15 characters + '\0' is allowed
		int p_marks, c_marks, m_marks;//Physics, Chemistry, Maths marks
}Student;

//Function prototypes
void read_data(Student* s, int no_of_students);//For reading the student information
void print_user_info(Student* s, int no_of_students);//For displaying student information

int main()
{
		int no_of_students;//Input no. of students
		printf("Enter the number of students: ");
		scanf("%d", &no_of_students);
		if (no_of_students > 0)//Validity check for no. of. students
		{	
				Student student[no_of_students];//Define an array of structues
				read_data(student, no_of_students);//Call to read_data()
				print_user_info(student, no_of_students);//Call to print_user_info()

		}
		else
		{//Error message
				printf("Error: Invalid number of students\n\n");
		}

		return 0;
}

void read_data(Student* s, int no_of_students)//Receives base address of the array of structures and no. of students
{
		for (int i = 0; i < no_of_students; i++)//Iterate over total no. of students
		{
				__fpurge(stdin);//Clear input buffer in every iteration
				printf("Enter the name of student %d: ", i + 1);
				scanf("%15[^\n]", s[i].name);//Enter student's name
				__fpurge(stdin);//Clear input buffer for exceeding characters
				printf("Enter P, C and M marks: ");//Enter student's marks
				scanf("%d %d %d", &s[i].p_marks, &s[i].c_marks, &s[i].m_marks);
		}
}

void print_user_info(Student* s, int no_of_students)
{
		float maths_total = 0, phy_total = 0, chem_total = 0;//Store the addition of all subjects total 
		printf("\n----------------------------------------------------\n");
		printf("Name%*sMaths%*sPhysics%*sChemistry", 16, "", 6, "", 4, "");
		printf("\n----------------------------------------------------\n");
		for (int i = 0; i < no_of_students; i++)//Displaying variables
		{
				maths_total += s[i].m_marks;
				phy_total += s[i].p_marks;
				chem_total += s[i].c_marks;
				printf("%-20.15s%5.2d%12.2d%13.2d\n", s[i].name, s[i].m_marks, s[i].p_marks, s[i].c_marks);
		}
		printf("----------------------------------------------------\n");
		printf("Average%18.2f%12.2f%13.2f", maths_total/no_of_students, phy_total/no_of_students, chem_total/no_of_students);
		printf("\n----------------------------------------------------\n");
}

