#include <stdio.h>

int main()
{
		int x = 0x12345678;
		int y = 0x87654321;

		void* p;
		p = &x;

		printf("%x\n", *(int *)p);
		printf("%x\n", *(int *)(p+1));
		printf("%x\n", *((int *)p+1));
		printf("%x\n", *(int *)((short*)p+1));
		//*(int *)((short*)p+1) = 0xABCDDCBA;
		//printf("%x%x\n", y, x);
		//printf("%lx\n", *(long*)p);
		printf("%x\n", *(char*)(int*)((short*)p + 2));
		return 0;
}

