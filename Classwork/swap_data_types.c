#include <stdio.h>

//Function prototype
void g_swap(void* p1, void* p2, int size);

int main()
{
		char c1 = 'A', c2 = 'B';
		int n1 = 10, n2 = 20;
		float a1[3] = {1.5, 1.2, 6.6}, a2[3] = {9.6, 5.2, 1.3};

		//Calling g_swap function
		g_swap(&c1, &c2, sizeof(c1));
		g_swap(&n1, &n2, sizeof(n1));
		g_swap(a1, a2, sizeof(a1));
		
		printf("\n-----After swapping-----\n\
						\nc1 = %c, c2 = %c\
					    \nn1 = %d, n2 = %d\
						\narray 1 = ", c1, c2, n1, n2);
		//No. of elements in an array is array_size / sizeof(each element)
		for (int i = 0; i < sizeof(a1) / sizeof(a1[0]); i++)
		{
				printf("%g ", a1[i]);
		}
		printf("\narray 2 = ");
		for (int i = 0; i < sizeof(a1) / sizeof(a1[0]); i++)
		{
				printf("%g ", a2[i]);
		}
		printf("\n");
		return 0;
}

void g_swap(void* p1, void* p2, int size)
{
		//Indexer i
		int i = 0;
		while (i < size)
		{
				//Typecast to char pointer since it accesses single byte & swap
				char temp = *(char*)(p1 + i);
				*(char*)(p1 + i) = *(char*)(p2 + i);
				*(char*)(p2 + i) = temp;
				i++;
		}
}

