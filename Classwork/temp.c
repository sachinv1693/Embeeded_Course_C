#include <stdio.h>
#include <stdio_ext.h>
#include <stdlib.h>
struct Student
{
int id;
char *name;
char *address;
};
struct Student data(void)
{
struct Student s;
s.name = (char *) malloc(30 * sizeof(char));
s.address = (char *) malloc(150 * sizeof(char));
puts("Enter name");
scanf("%[^\n]",s.name);
__fpurge(stdin);
puts("Enter address");
scanf("%[^\n]",s.address);


return s;
}

int main()
{
struct Student s1;
s1 = data();
printf("You entered name: %s\n", s1.name);
printf("You entered address: %s\n", s1.address);
return 0;
}
