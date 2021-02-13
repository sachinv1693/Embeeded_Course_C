#include <stdio.h>

int main()
{
		double x = 7.2;
		void* vptr = &x;
		printf("%hhx\n",*((char*)vptr + 6));
		return 0;
}

