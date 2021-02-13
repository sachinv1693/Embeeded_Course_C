#include <stdio.h>

void print_menu(char** menu);

int main()
{
		int opt;
		char* menu[] = {"File", "Edit", "View", "Insert", "Help"};
		print_menu(menu);
		printf("Please select an option: ");
		scanf("%d", &opt);
		(opt < 6 && opt > 0) ? printf("You selected: %s\n", menu[opt - 1]): printf("Error: Invalid option selected!\n");
		return 0;
}

void print_menu(char** menu)
{
		for (int i = 0; i < 5; i++)
		{
				printf("%d. %s\n", i + 1, menu[i]);
		}
}

