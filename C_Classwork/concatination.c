#include <stdio.h>

#define CAT(type)  type##_val

int main()
{
		int int_val = 20;
		float float_val = 1.5;
		printf("%d\n", CAT(int));
		printf("%f\n", CAT(float));
		return 0;
}

