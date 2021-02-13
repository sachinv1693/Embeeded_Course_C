#include <stdio.h>

int main()
{
		int x=5;
		printf("%d\n", !x);//Inverts the logical value (non-zero to zero and vice versa)
		printf("%d\n", !!x);//Checks the logical correctness
		printf("%d\n", x);//Prints original number
		return 0;
}
