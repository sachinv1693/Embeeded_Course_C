#include <stdio.h>

#if 0
int main()
{
		int i;
		for (i = 0;i < 10; i++)
		{
				printf("The value of i is %d\n", i);
		}
		return 0;
}

#else

void foo(int i)
{
		if(i < 10)
		{
				printf("The value of i is %d\n", i);
				i++;
				foo(i);
		}
}

int main()
{
		foo(0);
		return 0;
}
#endif
